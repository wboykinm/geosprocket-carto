Map {
  /*background-color: #b8dee6;*/
  buffer-size:512;
}

#background {
    polygon-pattern-file:url(Paper-21a.png);
}

#water {
    polygon-opacity:0.95;
    polygon-fill:#3f4686;
    polygon-comp-op:color-burn;
}

#land {
  ::below {
    line-color:#6676B5;
    line-width:2;
    line-smooth:3;
    line-cap:round;
    line-join:round;
    line-opacity:1;
    image-filters:agg-stack-blur(2,2);
  }
  ::above {
    polygon-pattern-file:url(Paper-21a.png);
  }
}

#countries [zoom>3]{ 
    line-color: #797979;
    line-width: 0.2;
    line-join: round;
    line-smooth:3;
    line-opacity:0.5;
}

#bath {
  line-color:#fff;
  line-width:0;
  polygon-opacity:0.2;
  polygon-fill:#fff;
}


#cont [zoom>=8] {
  ::under {
    line-width:3;
    line-color:#d2d2d2;
    line-opacity:0.6;
    line-join:round;
    line-smooth:0.2;
  }
  ::over {
    line-width:0.9;
    line-color:#b4b9ce;
    line-join:round;
    line-smooth:0.2;
    line-opacity:0.5;
  }
}


#srtm [zoom>=4][zoom<8] {
  raster-opacity:0.6;
  raster-scaling:bessel;
  raster-comp-op:multiply;
}


#halo {
  ::border {
    line-color:#FFF;
    line-opacity:0.6;
    line-width:20;
    line-offset:-5;
    image-filters:agg-stack-blur(20,20);
  }
}
