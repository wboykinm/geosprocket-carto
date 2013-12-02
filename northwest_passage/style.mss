@water: #7D95C7;

Map {
  background-image:url('../img/waterpaint.jpg');
  buffer-size:512;
}

#countries {
  line-color:#594;
  line-width:0.1;
  polygon-clip:false;
  ::land{
    polygon-pattern-file:url('../img/tilemill_seamless/parchment.png');
    /*[COUNTRY='ru']{polygon-fill:#ffdfbc;}
    [COUNTRY='ca']{polygon-fill:#9f4b1d;}
    [COUNTRY='wa']{polygon-fill:#036371;}
    [COUNTRY='se']{polygon-fill:#ed669e;}
    [COUNTRY='no']{polygon-fill:#cb552f;}
    [COUNTRY='fi']{polygon-fill:#f1fda3;}
    [COUNTRY='ic']{polygon-fill:#776960;}
    [COUNTRY='gl']{polygon-fill:#761525;}*/
    line-color:#666;
    line-width:0.7;
    line-smooth:4;
  }
}


#vegetation {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}



#popplaces [zoom>3][LATITUDE>50]{
  /*::cities [FEATURECLA="Admin-1 capital"]{
    marker-width:6;
    marker-fill:#f45;
    marker-line-color:#813;
    marker-allow-overlap:true;
  }*/
  ::labels {
    [zoom>5][FEATURECLA!="Admin-0 capital"] {
      text-name:'[NAME]';
      text-face-name:'OldStyle1 HPLHS';
      text-size:13;
      text-transform:lowercase;
      text-fill:#fff;
      text-character-spacing:2;
      text-dy:0;
      text-halo-fill:fadeout(#333,20%);
      text-halo-radius:1.8;
      text-clip:false;
    }
    [FEATURECLA="Admin-1 capital"][zoom>4]  {
      text-name:'[NAME]';
      text-face-name:'OldStyle1 HPLHS';
      text-size:14;
      /*text-transform:lowercase;*/
      text-fill:#444;
      text-character-spacing:2;
      text-dy:0;
      text-halo-fill:fadeout(#fff,20%);
      text-halo-radius:1.6;
      text-clip:false;
      text-allow-overlap:false;
      text-min-distance:50;
    }
    [FEATURECLA="Admin-0 capital"]{
      text-name:'[NAME]';
      text-face-name:'HandTIMES Regular';
      text-size:18;
      text-transform:uppercase;
      text-fill:#111;
      text-character-spacing:2;
      text-dy:0;
      text-halo-fill:fadeout(#fff,20%);
      text-halo-radius:2;
      text-clip:false;
      text-min-distance:10;
    }
  }
}


#passages_fakeout {
  line-color:#0000ff;
  line-dasharray:3,3;
  [zoom<5]{line-width:2;}
  [zoom<7][zoom>=5]{line-width:4;}
  [zoom>=7]{line-width:6;}
}


#ice {
  line-color:#e2e3e3;
  line-width:0.5;
  line-smooth:2;
  polygon-opacity:0.9;
  polygon-fill:#fff;
  image-filters:agg-stack-blur(5,5);
}


#mask6 {
  line-color:#594;
  line-width:0;
  line-opacity:0;
  polygon-opacity:1;
  polygon-fill:#333;
  image-filters:agg-stack-blur(100,100);
}


#marine [scalerank<3]{
  line-color:#594;
  line-width:0;
  line-opacity:0;
  polygon-opacity:0;
  polygon-fill:#ae8;
  text-name:'[name]';
  text-face-name:'HandTIMES Regular';
  text-size:15;
  text-fill:#7DA4EB;
  text-character-spacing:4;
  text-dy:0;
  text-halo-fill:#fff;
  text-halo-radius:1.2;
  text-clip:false;
  text-allow-overlap:false;
  text-min-distance:50;
}
