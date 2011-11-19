/* ====================================================== *
 * BTV NIGHTVISION LABELS                                        *
 * ====================================================== */

@font_reg: "Liberation Sans Regular";

/***************************************/
.highway-label {
  text-name:"[NAME]";
  text-face-name: @font_reg;
  text-fill: #fff;
  text-halo-fill: #000;
  text-halo-radius: 1;
  text-max-char-angle-delta: 20;
  text-min-distance: 200;
  text-placement: line;
  text-size: 9;
  text-spacing: 400;
  [TYPE='motorway'][zoom>=12] {
    text-name:"[NAME]";
    [zoom>=13] { text-size:11; }
    [zoom>=15] { text-size:12; }
  }
  [TYPE='trunk'][zoom>=12] {
    text-name:"[NAME]";
    [zoom>=15] { text-size:11; }
  }
  [TYPE='primary'][zoom>=13] {
    text-name:"[NAME]";
    [zoom>=15] { text-size:11; }
  }
  [TYPE='secondary'][zoom>=13] {
    text-name:"[NAME]";
    [zoom>=15] { text-size:11; }
  }
  [TYPE='residential'][zoom>=15],
  [TYPE='road'][zoom>=15],
  [TYPE='tertiary'][zoom>=15],
  [TYPE='unclassified'][zoom>=15] {
    text-name:"[NAME]";
  }
}
