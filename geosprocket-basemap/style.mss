Map {
  /*background-color: #b8dee6;*/
  buffer-size:512;
}

#background {
    polygon-pattern-file:url(../img/Paper-21.png);
}

#water {
    polygon-opacity:0.95;
    polygon-fill:#3f4686;
    polygon-comp-op:color-burn;
}


#countries {
  ::outline {
    line-color: #797979;
    line-width: 0.5;
    line-join: round;
    line-smooth:5;
    line-opacity:0.5;
    /*line-comp-op:multiply;*/
  }
  polygon-fill: #fff;
  /*polygon-comp-op:color-burn;*/
  polygon-pattern-file:url(../img/Paper-21.png);
}

/*#countries [ScaleRank<3]{
  ::labels {
    text-name:'[NAME]';
  	text-face-name:'By People Handwritten Regular';
  	text-size:18;
 	text-transform:uppercase;
  	text-fill:#111;
    text-character-spacing:2;
    text-min-distance:50;
    text-halo-radius:1.5;
    text-halo-fill:rgba(250,250,250,1);
 	text-allow-overlap:false;
    }
}*/

#popplaces [POP_MAX>1500000] {
  text-name:'[NAMEASCII]';
  text-face-name:'By People Handwritten Regular';
  text-size:20;
  text-transform:lowercase;
  text-fill:#666;
  text-character-spacing:2;
  text-min-distance:50;
  text-halo-radius:1.5;
  text-halo-fill:rgba(250,250,250,0.6);
  text-allow-overlap:false;
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
