Map {
  /*background-color: #b8dee6;*/
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

#citytown2 {
  text-name:[label];
  text-face-name:'Chaparral Pro Bold Display';
  text-halo-fill:rgba(255,255,255,0.4);
  text-halo-radius:2.2;
  text-allow-overlap:false;
  text-fill:#252c5f;
  [zoom<=8]{
    [labelweight<=20] {text-size:12;}
    [labelweight>20][labelweight<=40] {text-size:16;}
    [labelweight>40][labelweight<=60] {text-size:22;}
    [labelweight>60][labelweight<=80] {text-size:30;}
    [labelweight>80] {text-size:50;}
  }
  [zoom<=10][zoom>8]{
    [labelweight<=20] {text-size:20;}
    [labelweight>20][labelweight<=40] {text-size:30;}
    [labelweight>40][labelweight<=60] {text-size:40;}
    [labelweight>60][labelweight<=80] {text-size:50;}
    [labelweight>80] {text-size:70;}
  }
  [zoom>10]{
    [labelweight<=20] {text-size:30;}
    [labelweight>20][labelweight<=40] {text-size:50;}
    [labelweight>40][labelweight<=60] {text-size:70;}
    [labelweight>60][labelweight<=80] {text-size:90;}
    [labelweight>80] {text-size:120;}
  }
}