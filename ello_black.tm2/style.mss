// ---------------------------------------------------------------------
// Common Colors
@water: #fff;
@land: #fff;


Map {
  background-color: @land;
}

// ---------------------------------------------------------------------
// Political boundaries
#admin {
	line-width: 0.2;
	line-color: #000;
  [maritime=1] {
    // downplay boundaries that are over water
    line-color: @water;
  }
  // Countries
  [admin_level=2] {
    line-width: 0.8;
    line-cap: round;
    [zoom>=4] { line-width: 1.2; }
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 4; }
    [disputed=1] { line-dasharray: 4,4; }
  }
  // States / Provices / Subregions
  [admin_level>=3] {
	line-width: 0.2;
	line-color: #000;
    [zoom=6] { line-width: 0.6; }
    [zoom=7] { 
      line-width: 1.5;
	  line-color: #686868;
	  line-dasharray: 1,5;
	  line-cap: round;
    }
    [zoom>=8] {
	line-width: 2;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
    }
    [zoom>=12] { line-width: 2; }
  }
}

// ---------------------------------------------------------------------
// Water Features 
#water {
  polygon-fill: #999;
  polygon-pattern-file: url('img/patterns/halftone2.png');
  polygon-pattern-alignment: global;
  polygon-pattern-opacity: 0.3;
  // Map tiles are 256 pixels by 256 pixels wide, so the height 
  // and width of tiling pattern images must be factors of 256. 
  //polygon-pattern-file: url(pattern/wave.png);
  [zoom<=5] {
    // Below zoom level 5 we use Natural Earth data for water,
    // which has more obvious seams that need to be hidden.
    polygon-gamma: 0.4;
  }
  ::blur {
    // This attachment creates a shadow effect by creating a
    // light overlay that is offset slightly south. It also
    // create a slight highlight of the land along the
    // southern edge of any water body.
    polygon-fill: #fff;
    comp-op: soft-light;
    image-filters: agg-stack-blur(2,2);
    polygon-geometry-transform: translate(0,1);
    polygon-clip: false;
  }
  /**/
}

#waterway {
  line-color: @water * 0.9;
  line-cap: round;
  line-width: 0.5;
  [class='river'] {
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [class='stream'],
  [class='stream_intermittent'],
  [class='canal'] {
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
  [class='stream_intermittent'] { line-dasharray: 6,2,2,2; }
}

// ---------------------------------------------------------------------
// Aeroways 
#aeroway [zoom>=12] {
  ['mapnik::geometry_type'=2] {
    line-color: @land * 0.96;
    [type='runway'] { line-width: 5; }    
    [type='taxiway'] {  
      line-width: 1;
      [zoom>=15] { line-width: 2; }
    }
  }    
  ['mapnik::geometry_type'=3] {
    polygon-fill: @land * 0.96;
    [type='apron'] {
      polygon-fill: @land * 0.98;  
    }  
  }
}


// ---------------------------------------------------------------------
// Landuse areas 
/*#landuse[zoom>=11] {
  [class='park'], [class='cemetery'] { 
    polygon-fill: #ccc;
    polygon-opacity: 0.45;
  }
  [class='hospital'][zoom>13],[class='school'][zoom>13] { 
	polygon-fill: #ccc;
    polygon-opacity: 0.3;
  }
  [class='wood'] { 
    polygon-pattern-file:url(img/sketch-shade0.jpg);
    polygon-fill: #ccc;
    polygon-opacity: 0.6;  }
    ::overlay {
    // Landuse classes look better as a transparent overlay.
    opacity: 0.05;
    }
}*/

// ---------------------------------------------------------------------
// Terrain //
#hillshade {
  opacity: 0.5;
  [class='medium_shadow'] {
    polygon-pattern-file:url(img/sketch-shade1.jpg);
    polygon-pattern-comp-op: multiply;
  }
  [class='full_shadow'] {
    polygon-pattern-file:url(img/sketch-shade2.jpg);
    polygon-pattern-comp-op: multiply;
  }
  [class='medium_highlight'] {
    polygon-fill: fadeout(#fff,90);
  }
  [class='full_highlight'] {
    polygon-fill: fadeout(#fff,80);
  }
}
/*

#hillshade {
  ::0[zoom<=13][zoom>2],
  ::1[zoom=14][zoom>2],
  ::2[zoom>=15][zoom<=16],
  ::3[zoom>=17][zoom<=18],
  ::4[zoom>=19] {
    comp-op: hard-light;
    polygon-clip: false;
    polygon-simplify: 7;
    [class='full_shadow'], [class='medium_shadow'] {
      polygon-fill: #000;
      polygon-opacity: 0.12;
      [zoom>=15][zoom<=16] { polygon-opacity: 0.095; }
      [zoom>=17][zoom<=18] { polygon-opacity: 0.075; }
      [zoom>=18] { polygon-opacity: 0.0045; }
    }
    [class='medium_highlight'] {
      polygon-fill: #fff;
      polygon-opacity: 0.2;
      polygon-gamma: 50;
      [zoom>=15][zoom<=16] { polygon-opacity: 0.3; }
      [zoom>=17][zoom<=18] { polygon-opacity: 0.2; }
      [zoom>=18] { polygon-opacity: 0.1; }
    }
  }
  ::1 { image-filters: agg-stack-blur(2,2); }
  ::2 { image-filters: agg-stack-blur(8,8); }
  ::3 { image-filters: agg-stack-blur(16,16); }
  ::4 { image-filters: agg-stack-blur(32,32); }
}
*/
// ==================================================================
// CONTOURS
// ================================================================== 

/*#contour {
  line-color: #ccc;
  line-opacity: 0.75;
  }

#contour.label {
    text-name: "[ele]+' m'";
    text-face-name: @sans;
    text-placement: line;
    text-size: 9;
    text-fill: darken(@land,50);
    text-avoid-edges: true;
    text-halo-fill: @land;
    text-halo-radius: 1.5;
    text-halo-rasterizer: fast;
}*/


// ---------------------------------------------------------------------
// Buildings 

#building {
  [zoom>=14] {
  line-width: 0.5; 
  line-color: #999;
  }
  [zoom>=16] {
	line-width: 0.5; 
	polygon-pattern-file: url('img/patterns/stripe_sm.png');
    polygon-pattern-opacity: 0.2;
  }
  ::overlay {
    opacity: 0.05;
    }
  }

