/* ====================================================== *
 * MONTREAL NIGHTVISION LABELS                                        *
 * ====================================================== */

@font_reg: "Chaparral Regular";

/***************************************/
#osm_labels {
  text-name:'[name]';
  text-face-name: @font_reg;
  text-fill: #fff;
  text-halo-fill: #000;
  text-halo-radius: 1;
  text-max-char-angle-delta: 20;
  text-min-distance: 200;
  text-placement: line;
  text-size: 11;
  text-spacing: 400;
  [highway='motorway'][zoom>=12] {
    text-name:'[name]';
    [zoom>=13] { text-size:12; }
    [zoom>=15] { text-size:15; }
  }
  [highway='trunk'][zoom>=12] {
    text-name:'[name]';
    [zoom>=15] { text-size:14; }
  }
  [highway='primary'][zoom>=13] {
    text-name:'[name]';
    [zoom>=15] { text-size:14; }
  }
  [highway='secondary'][zoom>=13] {
    text-name:'[name]';
    [zoom>=15] { text-size:12; }
  }
  [highway='residential'][zoom>=15],
  [highway='road'][zoom>=15],
  [highway='tertiary'][zoom>=15],
  [highway='unclassified'][zoom>=15] {
    text-name:'[name]';
  }
}
