Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}
.poly {
  [Rich_Tot1<50] {
    polygon-fill: #FFFFCC;
    line-color: #FFFFCC;
  }
  [Rich_Tot1>=50][Rich_Tot1<200] {
    polygon-fill: #A1DAB4;
    line-color: #A1DAB4;
  }
  [Rich_Tot1>=200][Rich_Tot1<500] {
    polygon-fill: #41B6C4;
    line-color: #41B6C4;
  }
  [Rich_Tot1>=500][Rich_Tot1<700] {
    polygon-fill: #2C7FB8;
    line-color: #2C7FB8;
  }
  [Rich_Tot1>=700] {
    polygon-fill: #253494;
    line-color: #253494;
  }
  [zoom<5] {
    line-width: 0;
    polygon-gamma:0.35;
  }
  [zoom>=5] {
    [LOCRSQ<0.8] {
      line-width: 0.6;
      line-dasharray:3,3;
      polygon-gamma:0.9;
    }
    [LOCRSQ>=0.8] {
      line-width: 1.2;
      polygon-gamma: 0.25;
      }
  }
  polygon-opacity: 0.9;
  line-opacity: 0.95;
}