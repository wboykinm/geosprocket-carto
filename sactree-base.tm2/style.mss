// Common Colors //
@water: #456;

#map {
   font-directory: url('fonts/');
}

#water {
  polygon-fill: @water;
  opacity: 0.8
}

#road, #bridge {
  line-color: #abc;
  comp-op: soft-light;
}

#mapbox_satellite_full,
#mapbox_satellite_watermask  {
  raster-opacity: 1;
  image-filters: scale-hsla( 0.5,0.6, 0.0,0.2, 0.4,0.8, 0,1 );
}

#admin[admin_level=2] {
  [maritime=0] {
    ::case {
      opacity: 0.5;
      line-color: @water;
      line-join: round;
      line-cap: round;
      line-width: 3;
      [zoom>=6] { line-width: 5; }
    }
    ::fill {
      line-color: white;
      line-join: round;
      line-cap: round;
      line-width: 0.6;
      [zoom>=6] { line-width: 1; }
    }
  }
  [maritime=1] { line-color: #345; line-dasharray: 3,2; }
}

#admin[admin_level=4][maritime=0] {
  ::case {
    line-opacity: 0.5;
    line-color: @water; 
    line-join: round;
    line-cap: round;
    line-width: 3;
  }
  ::fill {
    line-opacity: 0.75;
    line-color: white;
    line-join: round;
    line-cap: round;
    line-width: 0.6;
    line-dasharray: 2,2;
  }
}
  