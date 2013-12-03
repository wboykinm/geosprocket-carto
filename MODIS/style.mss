Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #111;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

#mod12q1 {
  raster-opacity:0.7;
}


#ecoregions {
  line-width:0;
  line-gamma-method:none;
  line-gamma:1;
  line-opacity:0;
  polygon-opacity:1;
  polygon-gamma:0.3;
  /*[igbp12_t<-1.65] {polygon-fill:#333;line-color:#333;}
  [igbp12_t>=-1.65][igbp12_t<=1.65] {polygon-fill:#fff;line-color:#fff;}
  [igbp12_t>1.65] {polygon-fill:#888;line-color:#888;}*/
  [igbp12_r<=0.1] {polygon-fill:#fff;line-color:#fff;}
  [igbp12_r>=0.1][igbp12_r<=0.2] {polygon-fill:#dbdbdb;line-color:#dbdbdb;}
  [igbp12_r>=0.2][igbp12_r<=0.3] {polygon-fill:#C7C7C7;line-color:#C7C7C7;}
  [igbp12_r>=0.3][igbp12_r<=0.4] {polygon-fill:#8F8F8F;line-color:#8F8F8F;}
  [igbp12_r>=0.4][igbp12_r<=0.5] {polygon-fill:#6E6E6E;line-color:#6E6E6E;}
  [igbp12_r>=0.75][igbp12_r<=0.75] {polygon-fill:#595959;line-color:#595959;}
  [igbp12_r<0.75] {polygon-fill:#4A4A4A;line-color:#4A4A4A;}
}
