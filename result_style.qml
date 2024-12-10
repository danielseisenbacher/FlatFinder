<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis autoRefreshTime="0" maxScale="0" minScale="1e+08" hasScaleBasedVisibilityFlag="0" version="3.34.12-Prizren" styleCategories="Symbology|Rendering" autoRefreshMode="Disabled">
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option value="" name="name" type="QString"/>
      <Option name="properties"/>
      <Option value="collection" name="type" type="QString"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling maxOversampling="2" enabled="false" zoomedOutResamplingMethod="nearestNeighbour" zoomedInResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer nodataColor="" opacity="1" alphaBand="-1" band="1" classificationMax="100" classificationMin="0" type="singlebandpseudocolor">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>MinMax</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader clip="0" labelPrecision="4" classificationMode="1" minimumValue="0" colorRampType="INTERPOLATED" maximumValue="100">
          <colorramp name="[source]" type="gradient">
            <Option type="Map">
              <Option value="215,25,28,255" name="color1" type="QString"/>
              <Option value="26,150,65,255" name="color2" type="QString"/>
              <Option value="ccw" name="direction" type="QString"/>
              <Option value="0" name="discrete" type="QString"/>
              <Option value="gradient" name="rampType" type="QString"/>
              <Option value="rgb" name="spec" type="QString"/>
              <Option value="0.418269;253,174,97,255;rgb;ccw:0.711538;255,255,192,255;rgb;ccw:0.873798;166,217,106,255;rgb;ccw" name="stops" type="QString"/>
            </Option>
          </colorramp>
          <item value="0" alpha="255" label="0,0000" color="#d7191c"/>
          <item value="13" alpha="255" label="13,0000" color="#e34731"/>
          <item value="26" alpha="255" label="26,0000" color="#ef7647"/>
          <item value="39" alpha="255" label="39,0000" color="#faa45c"/>
          <item value="52" alpha="255" label="52,0000" color="#feca82"/>
          <item value="65" alpha="255" label="65,0000" color="#ffeeac"/>
          <item value="78" alpha="255" label="78,0000" color="#d9ef9c"/>
          <item value="90" alpha="255" label="90,0000" color="#89cb61"/>
          <item value="100" alpha="255" label="100,0000" color="#1a9641"/>
          <rampLegendSettings prefix="" useContinuousLegend="1" maximumLabel="" orientation="2" suffix="" minimumLabel="" direction="0">
            <numericFormat id="basic">
              <Option type="Map">
                <Option name="decimal_separator" type="invalid"/>
                <Option value="6" name="decimals" type="int"/>
                <Option value="0" name="rounding_type" type="int"/>
                <Option value="false" name="show_plus" type="bool"/>
                <Option value="true" name="show_thousand_separator" type="bool"/>
                <Option value="false" name="show_trailing_zeros" type="bool"/>
                <Option name="thousand_separator" type="invalid"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" gamma="1" brightness="0"/>
    <huesaturation colorizeGreen="128" invertColors="0" grayscaleMode="0" colorizeBlue="128" colorizeRed="255" saturation="0" colorizeOn="0" colorizeStrength="100"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>6</blendMode>
</qgis>
