Map {
  background-color: #b8dee6;
}

#countries {
  /*polygon-fill: #0058bc;
  polygon-opacity:1;*/
  polygon-pattern-file: url(../img/paper/blueprint2.png);
}

#rds {
  ::halo {
    line-color:#003FA3;
    line-smooth:3;
    line-join:round;
    [STREETCLAS=1]{line-width:9;}
    [STREETCLAS=2]{line-width:4.5;}
    [STREETCLAS=3]{line-width:1.2;}
    [STREETCLAS=4]{line-width:0.6;}
    [STREETCLAS>5]{line-width:0.2;}
  }
  ::main {
    line-color:#fdfcfd;
    line-smooth:3;
    line-opacity:0.8;
    line-join:round;
    [STREETCLAS=1]{line-width:7;}
    [STREETCLAS=2]{line-width:3;}
    [STREETCLAS=3]{line-width:0.8;}
    [STREETCLAS=4]{line-width:0.5;}
    [STREETCLAS>5]{line-width:0.1;}
    
  }
  ::labels {
    text-name:'[SN]';
    text-face-name:'By People Handwritten Regular';
    text-size:20;
    text-transform:uppercase;
    text-fill:#fff;
    text-character-spacing:2;
    text-dy:15;
    text-min-distance: 20000;
    text-placement:line;
    text-halo-fill:rgba(0,88,188,0.8);
    text-halo-radius:2;
    text-spacing:20000;
    text-clip:false;
  }
}


#prints {
  line-color:#aec9d9;
  line-smooth:0.1;
  line-width:0;
  polygon-opacity:0.7;
  polygon-fill:#fe8315;
  polygon-comp-op:invert;
}


#lake {
  line-color:#fff;
  polygon-fill: #0058bc;
  line-width:1.5;
  line-smooth:0.2;
  line-opacity:0.7;
  ::contour1 {
    line-offset:-2;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour2 {
    line-offset:-4;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour3 {
    line-offset:-8;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour4 {
    line-offset:-16;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour5 {
    line-offset:-32;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour6 {
    line-offset:-64;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour7 {
    line-offset:-120;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour8 {
    line-offset:-160;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour9 {
    line-offset:-200;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour10 {
    line-offset:-260;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour11 {
    line-offset:-340;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
  ::contour12 {
    line-offset:-440;
    line-width:0.5;
    line-color:#fff;
    line-smooth:3;
    line-opacity:0.2;
  }
}


#water {
  line-color:#0058bc;
  line-width:0.4;
  line-comp-op:color-burn;
  polygon-opacity:0.8;
  polygon-fill:#0058bc;
  polygon-comp-op:color-dodge;
}
