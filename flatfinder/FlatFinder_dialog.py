# -*- coding: utf-8 -*-

import os
from qgis.PyQt import uic, QtGui
from qgis.PyQt import QtWidgets
from qgis.core import QgsProject, QgsMapLayer
import sys
from PyQt5.QtWidgets import QApplication

# This loads your .ui file so that PyQt can populate your plugin with the elements from Qt Designer
FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'FlatFinder_dialog_base.ui'))


class FlatFinderDialog(QtWidgets.QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        super(FlatFinderDialog, self).__init__(parent)
        self.setupUi(self)


        # Initialize the sliders to distribute values equally
        self.slider1.setValue(25)
        self.slider2.setValue(25)
        self.slider3.setValue(25)
        self.slider4.setValue(25)

        comboboxes = {
            "extentLayer": self.mMapLayerComboBox,
            "socialLayer": self.mMapLayerComboBox_6,
            "leisureLayer": self.mMapLayerComboBox_4,
            "publictransportLayer": self.mMapLayerComboBox_3,
            "educationLayer": self.qgsMapLayerComboBox_2
        }

        for layer_name, elem in comboboxes.items():
            elem.setLayer(None)

        # Connect the valueChanged signals
        self.slider1.valueChanged.connect(lambda: self.adjust_sliders(self.slider1))
        self.slider2.valueChanged.connect(lambda: self.adjust_sliders(self.slider2))
        self.slider3.valueChanged.connect(lambda: self.adjust_sliders(self.slider3))
        self.slider4.valueChanged.connect(lambda: self.adjust_sliders(self.slider4))

        # Connect QDialogButtonBox signals
        self.buttonBox.accepted.connect(self.accept)  # OK button
        self.buttonBox.rejected.connect(self.reject)  # Cancel button

    def adjust_sliders(self, changed_slider):
        # Get the total of all slider values
        total = self.slider1.value() + self.slider2.value() + self.slider3.value() + self.slider4.value()

        if total < 100:
            self.groupBox.setStyleSheet("QGroupBox::title { color: red;}")
        else:
            self.groupBox.setStyleSheet("")

        # If the total exceeds 100, adjust other sliders
        if total > 100:
            excess = total - 100
            self.distribute_excess(changed_slider, excess)

    def distribute_excess(self, changed_slider, excess):
        # Create a list of other sliders
        sliders = [self.slider1, self.slider2, self.slider3, self.slider4]
        sliders.remove(changed_slider)  # Exclude the changed slider

        # Distribute the excess value among the other sliders
        for slider in sliders:
            if excess <= 0:
                break
            value_to_reduce = min(slider.value(), excess)
            slider.setValue(slider.value() - value_to_reduce)
            excess -= value_to_reduce


if __name__ == '__main__':
    app = QApplication(sys.argv)
    dialog = FlatFinderDialog()
    dialog.show()
    sys.exit(app.exec_())
