/* ====================================================== *
 * MONTREAL NIGHTVISION                                         *
 * ====================================================== */

Map {
  background-color: #284036;
}

/* == BOUNDARY ========================================== */

#roi {
  polygon-fill: #355549;
}

#roi2 {
  line-cap: round;
  line-color: #20332b;
  line-join: round;
  line-width: 20;
}


/* == BUILDINGS ========================================= */
#osm_poly[building='yes'][zoom<=14] {
  polygon-fill: #31423d;
}

#osm_poly[building='yes'][zoom>=15] {
  line-color: #2E262D;
  line-width: 0.2;
  polygon-fill: #313d3a;
}

#osm_poly[building='yes'][zoom=16] {
  line-width: 0.3;
  polygon-fill: #313d3a;
}

#osm_poly[building='yes'][zoom=17] {
  line-width: 0.4;
  polygon-fill: #313d3a;
}

#osm_poly[building='yes'][zoom=18] {
  line-width: 0.5;
  polygon-fill: #313d3a;
}


/* == PARKS ============================================= */

#osm_poly[leisure='park'] {
  polygon-fill: #47705E;
}

/* == ROADS ============================================= */
#osm_line[highway='cycleway'][zoom>=14] {
  line-color: #85c5d3;
  line-width: 1;
  line-opacity: 0.8;
  line-dasharray: 4,4;
}

#osm_line[highway='footway'][zoom>=14] {
  line-color: #B1F1D2;
  line-width: 1;
  line-opacity: 0.8;
  line-dasharray: 2,2;
  line-opacity: 0.6;
}

#osm_line[highway='path'] {
  line-color: #84F1B4;
  line-width: 1.2;
  line-opacity: 0.8;
  line-dasharray: 6,6;
}
/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */
@land:              #355549;

@motorway_line:     #B1F1D2;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #B1F1D2;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #B1F1D2;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #B1F1D2;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #000;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #000;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #000;
@cycle_case:        @land;

@rail_line:         #B1F1D2;
@rail_fill:         #000;
@rail_case:         @land;

/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */

/* At mid-level scales start to show primary and secondary routes
as well. */

#osm_line[zoom>=9][zoom<=10] {
  [highway='motorway'],
  [highway='motorway_link'] {
    line-color: @motorway_line;
  }
  [highway='trunk'] {
    line-color: @trunk_line;
  }
  [highway='primary'] { line-color: @primary_line; }
  [highway='secondary'] { line-color: @secondary_line; }
  [highway='tertiary'] { line-color: @standard_line; }
  [zoom=9] {
    [highway='motorway'],[highway='trunk'] { line-width: 1.4; }
    [highway='primary'],[highway='secondary'],
    [highway='motorway_link'] { line-width: 0.6; }
  }
  [zoom=10] {
    [highway='motorway'],[highway='trunk'] { line-width: 1.8; }
    [highway='primary'],[highway='secondary'],
    [highway='motorway_link'] { line-width: 0.8; }
  }
}
/*
/* At higher levels the roads become more complex. We're now showing 
more than just automobile routes - railways, footways, and cycleways
come in as well.
/* At higher levels the roads become more complex. We're now showing 
more than just automobile routes - railways, footways, and cycleways
come in as well.

/* Road width variables that are used in road & bridge styles */
@rdz11_maj: 1.6; @rdz11_med: 0.8; @rdz11_min: 0.4;
@rdz12_maj: 2.5; @rdz12_med: 1.2; @rdz12_min: 0.8;
@rdz13_maj: 3;   @rdz13_med: 1.5; @rdz13_min: 1;
@rdz14_maj: 4;   @rdz14_med: 2.5; @rdz14_min: 1.6;
@rdz15_maj: 6;   @rdz15_med: 4;   @rdz15_min: 2;
@rdz16_maj: 8;   @rdz16_med: 6;   @rdz16_min: 4;
@rdz17_maj: 14;  @rdz17_med: 12;  @rdz17_min: 10;
@rdz18_maj: 20;  @rdz18_med: 17;  @rdz18_min: 14;

/* ---- Casing ----------------------------------------------- */

#osm_line::outline[zoom>=11][zoom<=20] {
  /* -- colors & styles -- */
  line-cap: round;
  [bridge='yes'],
  [tunnel='yes'] {
    line-cap: butt;
  }
  line-join: round;
  line-color: @standard_case;
  [bridge='yes'] { line-color: @standard_case * 0.8; }
  [highway='motorway'],
  [highway='motorway_link'] {
    line-color: @motorway_case;
    [bridge='yes'] { line-color: @motorway_case * 0.8; }
  }
  [highway='trunk'],
  [highway='trunk_link'] {
    line-color: @trunk_case;
    [bridge='yes'] { line-color: @trunk_case * 0.8; }
  }
  [highway='primary'],
  [highway='primary_link'] {
    line-color: @primary_case;
    [bridge='yes'] { line-color: @primary_case * 0.8; }
  }
  [highway='secondary'],
  [highway='secondary_link'] {
    line-color: @secondary_case;
    [bridge='yes'] { line-color: @secondary_case * 0.8; }
  }
  [railway='rail'] {
    line-color: fadeout(@land,50%);
    [bridge='yes'] { line-color: @secondary_case * 0.8; }
  }
  [tunnel='yes'] { line-dasharray: 3,3; }        
  /* -- widths -- */
  [zoom=11] {
    [highway='motorway'] { line-width: @rdz11_maj + 2; }
    [highway='primary'] { line-width: @rdz11_med + 1.6; }
    [highway='secondary']{ line-width: @rdz11_min; }
    /* No minor bridges yet */
    [highway='service']  { line-width: 0; }
    [highway='footway']   { line-width: 0; }
    [railway='rail']  { line-width: 0; }
  }
  [zoom=12] {
    [highway='motorway'] { line-width: @rdz12_maj + 2; }
    [highway='primary'] { line-width: @rdz12_med + 2; }
    [highway='secondary']{ line-width: @rdz12_min; }
    /* No minor bridges yet */
    [highway='service']  { line-width: 0; }
    [highway='footway']   { line-width: 0; }
    [railway='rail']  { line-width: 0; }
  }
  [zoom=13] {
    [highway='motorway'] { line-width: @rdz13_maj + 2; }
    [highway='primary'] { line-width: @rdz13_med + 2; }
    [highway='secondary']{ line-width: @rdz13_min + 2; }
    /* No minor bridges yet */
    [highway='service']  { line-width: 0; }
    [highway='footway']   { line-width: 0; }
    [railway='rail']  { line-width: 0; }
  }
  [zoom=14] {
    [highway='motorway'] { line-width: @rdz14_maj + 2; }
    [highway='primary'] { line-width: @rdz14_med + 2; }
    [highway='secondary']{ line-width: @rdz14_min + 2; }
    /* No minor bridges yet */
    [highway='service']  { line-width: 0; }
    [highway='footway']   { line-width: 0; }
    [railway='rail']  { line-width: 0; }
  }
  [zoom=15] {
    [highway='motorway'] { line-width: @rdz15_maj + 2.5; }
    [highway='primary'] { line-width: @rdz15_med + 2; }
    [highway='secondary']{ line-width: @rdz15_min + 2; }
    [highway='service']  { line-width: @rdz15_min / 3 + 2; }
    [highway='footway']   { line-width: @rdz15_min / 4 + 2; }
    [railway='rail']  { line-width: 1.5 + 2; }
  }
  [zoom=16] {
    [highway='motorway'] { line-width: @rdz16_maj + 2.5; }
    [highway='primary'] { line-width: @rdz16_med + 2.5; }
    [highway='secondary']{ line-width: @rdz16_min + 2; }
    [highway='service']  { line-width: @rdz16_min / 3 + 2; }
    [highway='footway']   { line-width: @rdz16_min / 4 + 2; }
    [railway='rail']  { line-width: 2 + 2; }
  }
  [zoom>=17] {
    [highway='motorway'] { line-width: @rdz17_maj + 3; }
    [highway='primary'] { line-width: @rdz17_med + 2.5; }
    [highway='secondary']{ line-width: @rdz17_min + 2; }
    [highway='service']  { line-width: @rdz17_min / 3 + 2; }
    [highway='footway']   { line-width: @rdz17_min / 4 + 4; }
    [railway='rail']  { line-width: 3 + 4; } // 3 + 4
  }
  [zoom>=18] {
    [highway='motorway'] { line-width: @rdz18_maj + 4; }
    [highway='primary'] { line-width: @rdz18_med + 4; }
    [highway='secondary']{ line-width: @rdz18_min + 3.5; }
    [highway='service']  { line-width: @rdz18_min / 3 + 3.5; }
    [highway='footway']   { line-width: @rdz18_min / 4 + 6; }
    [railway='rail']  { line-width: 4 + 6; }
  }
}

#osm_line[zoom>=11][zoom<=20]{
  /* -- colors & styles -- */
  line-color: @standard_fill;
  [highway='motorway'],
  [highway='motorway_link'] {
    line-color: @motorway_fill;
    [tunnel=1] { line-color: lighten(@motorway_fill, 10%); }
  }
  [highway='trunk'],
  [highway='trunk_link'] {
    line-color: @trunk_fill;
    [tunnel=1] { line-color: lighten(@trunk_fill, 10%); }
  }
  [highway='primary'],
  [highway='primary_link'] {
    line-color: @primary_fill;
    [tunnel=1] { line-color: lighten(@primary_fill, 10%); }
  }
  [highway='secondary'],
  [highway='secondary_link'] {
    line-color: @secondary_fill;
    [tunnel=1] { line-color: lighten(@secondary_fill, 10%); }
  }
  [railway='rail'] {
    line-color: @rail_line;
    line-dasharray: 1,1;
    [highway='subway'] { line-opacity: 0.67; }
    [zoom>15] { line-dasharray: 1,2; } 
  }
  [highway='footway'],
  [highway='service'],
  [highway='secondary'] {
    line-width: 0;
  }
  [highway='service'],
  [highway='secondary'],
  [highway='primary'],
  [highway='motorway'] {
    line-cap: round;
    line-join: round;
  }
  [highway='footway'] {
    line-join: round;
  }
  [tunnel=1] {
    line-cap: butt;
  }
  /* -- widths -- */
  [zoom=11] {
    [highway='motorway'] { line-width: @rdz11_maj; }
    [highway='primary'] { line-width: @rdz11_med; }
    [highway='secondary']{ line-width: 0; }
    [railway='rail']  { line-width: 0.2; }
  }
  [zoom=12] {
    [highway='motorway'] { line-width: @rdz12_maj; }
    [highway='primary'] { line-width: @rdz12_med; }
    [highway='secondary']{ line-width: 0; }
    [railway='rail']  { line-width: 0.4; }
  }
  [zoom=13] {
    [highway='motorway'] { line-width: @rdz13_maj; }
    [highway='primary'] { line-width: @rdz13_med; }
    [highway='secondary']{ line-width: @rdz13_min; }
    [highway='service']  { line-width: @rdz13_min / 3; }
    [highway='footway']   { line-width: @rdz13_min / 4; line-dasharray: 1,1; }
    [railway='rail']  { line-width: 0.8; }
  }
  [zoom=14] {
    [highway='motorway'] { line-width: @rdz14_maj; }
    [highway='primary'] { line-width: @rdz14_med; }
    [highway='secondary']{ line-width: @rdz14_min; }
    [highway='service']  { line-width: @rdz14_min / 3; }
    [highway='footway']   { line-width: @rdz14_min / 4; line-dasharray: 1,1; }
    [railway='rail']  { line-width: 1; }
  }
  [zoom=15] {
    [highway='motorway'] { line-width: @rdz15_maj; }
    [highway='primary'] { line-width: @rdz15_med; }
    [highway='secondary']{ line-width: @rdz15_min; }
    [highway='service']  { line-width: @rdz15_min / 3; }
    [highway='footway']   { line-width: @rdz15_min / 4; line-dasharray: 1,1; }
    [railway='rail']  { line-width: 1.5; }
  }
  [zoom=16] {
    [highway='motorway'] { line-width: @rdz16_maj; }
    [highway='primary'] { line-width: @rdz16_med; }
    [highway='secondary']{ line-width: @rdz16_min; }
    [highway='service']  { line-width: @rdz16_min / 3; }
    [highway='footway']   { line-width: @rdz16_min / 4; line-dasharray: 2,1; }
    [railway='rail']  { line-width: 2; }
  }
  [zoom=17] {
    [highway='motorway'] { line-width: @rdz17_maj; }
    [highway='primary'] { line-width: @rdz17_med; }
    [highway='secondary']{ line-width: @rdz17_min; }
    [highway='service']  { line-width: @rdz17_min / 3; }
    [highway='footway']   { line-width: @rdz17_min / 4; line-dasharray: 2,2; }
    [railway='rail']  { line-width: 3; }
  }
  [zoom>=18] {
    [highway='motorway'] { line-width: @rdz18_maj; }
    [highway='primary'] { line-width: @rdz18_med; }
    [highway='secondary']{ line-width: @rdz18_min; }
    [highway='service']  { line-width: @rdz18_min / 2; }
    [highway='footway']   { line-width: @rdz18_min / 4; line-dasharray: 3,3; }
    [railway='rail']  { line-width: 4; }
  }
}

/* == WATER ============================================= */

#mtl_land[TYPE='WATER'] {
  line-color: #0e3131;
  line-width: 1;
  polygon-fill: #0e3131;
}
