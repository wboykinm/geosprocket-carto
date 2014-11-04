// ---------------------------------------------------------------------
// Common Colors

// You don't need to set up @variables for every color, but it's a good
// idea for colors you might be using in multiple places or as a base
// color for a variety of tints.
// Eg. @water is used in the #water and #waterway layers directly, but
// also in the #water_label and #waterway_label layers inside a color
// manipulation function to get a darker shade of the same hue.

Map {
  background-color:@land;
}

// ---------------------------------------------------------------------
// Political boundaries

#admin {
  opacity: 0.5;
  line-join: round;
  line-color: @admin_2;
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
    line-width: 0.3;
    line-dasharray: 10,3,3,3;
    [zoom>=6] { line-width: 1; }
    [zoom>=8] { line-width: 1.5; }
    [zoom>=12] { line-width: 2; }
  }
}

// ---------------------------------------------------------------------
// Water Features 

#water {
  polygon-fill: @water;
  // Map tiles are 256 pixels by 256 pixels wide, so the height 
  // and width of tiling pattern images must be factors of 256.
  polygon-pattern-file: url('pattern/rough-paper.png');
  polygon-pattern-comp-op:  overlay;
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
    polygon-fill: #f0f0ff;
    comp-op: soft-light;
    image-filters: agg-stack-blur(1,1);
    polygon-geometry-transform: translate(0,1);
    polygon-clip: false;
  }
}

#waterway {
  line-color: @water * 0.9;
  line-cap: round;
  line-width: 0.5;
  polygon-pattern-file: url('pattern/rough-paper.png');
  polygon-pattern-comp-op:  overlay;
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
// Landuse areas 

#landuse {
  polygon-pattern-file: url('pattern/rough-paper.png');
  polygon-pattern-comp-op:  overlay;
  // Land-use and land-cover are not well-separated concepts in
  // OpenStreetMap, so this layer includes both. The 'class' field
  // is a highly opinionated simplification of the myriad LULC
  // tag combinations into a limited set of general classes.
  [class='park'] { polygon-fill: @park; }
  [class='cemetery'] { polygon-fill: @cemetery }
  [class='hospital'] { polygon-fill: @hospital; }
  [class='school'] { polygon-fill: @school; }
  ::overlay {
    // Landuse classes look better as a transparent overlay.
    opacity: 0.4;
    [class='wood'] { polygon-fill: @wooded; polygon-gamma: 0.5; }
  }
}

// ---------------------------------------------------------------------
// Buildings 

#building [zoom<=17]{
  // At zoom level 13, only large buildings are included in the
  // vector tiles. At zoom level 14+, all buildings are included.
  polygon-fill: @building;
  opacity: 0.9;
  polygon-pattern-file: url('pattern/rough-paper.png');
  polygon-pattern-comp-op:  overlay;
}
// Seperate attachments are used to draw buildings with depth
// to make them more prominent at high zoom levels
#building [zoom>=18]{
::wall { polygon-fill:darken(@building,10%); }
::roof {
  polygon-fill: @building;
  polygon-geometry-transform:translate(-1,-1.5);
  polygon-clip:false;  
  line-width: 0.5;
  line-color: @building;
  line-geometry-transform:translate(-1,-1.5);
  line-clip:false;
 }
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
    polygon-fill: @aeroway;
    [type='apron'] {
      polygon-fill: @land * 0.98;  
    }  
  }
}

