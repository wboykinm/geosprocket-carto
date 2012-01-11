/*Bounding boxes, zooms 1-13: 
-Conus&PR: 50,17 Lat,-126,-64 Long
-AK: 72,51 Lat,-132,-177 Long
-HI: 23,18 Lat,-154,-160 Long
*/
Map {
  /*background-color: #b8dee6;*/
}

/*#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}*/

/************************styled on two variables*************************/
.point {
  [popxcat<=1000] {
    [zoom>0][zoom<6] { marker-height: 0.5; }
    [zoom>5][zoom<9] { marker-height: 2; }
    [zoom>8][zoom<12] { marker-height: 5; }
    [zoom>11] { marker-height: 10; }
    [score<15] { marker-line-color: #253494; marker-fill: #2C7FB8; }
    [score>=15][score<20] { marker-line-color: #253494; marker-fill: #41B6C4; }    
    [score>=20][score<25] { marker-line-color: #253494; marker-fill: #7FCDBB; }
    [score>=25][score<30] { marker-line-color: #253494; marker-fill: #C7E9B4; }
    [score>=30] { marker-line-color: #253494; marker-fill: #FFFFCC; }
  }  

  [popxcat>1000][popxcat<=5000] {  
    [zoom>0][zoom<6] { marker-height: 2; }
    [zoom>5][zoom<9] { marker-height: 5; }
    [zoom>8][zoom<12] { marker-height: 8; }
    [zoom>11] { marker-height: 12; }
    [score<15] { marker-line-color: #253494; marker-fill: #2C7FB8; }
    [score>=15][score<20] { marker-line-color: #253494; marker-fill: #41B6C4; }    
    [score>=20][score<25] { marker-line-color: #253494; marker-fill: #7FCDBB; }
    [score>=25][score<30] { marker-line-color: #253494; marker-fill: #C7E9B4; }
    [score>=30] { marker-line-color: #253494; marker-fill: #FFFFCC; }
  }
  
  [popxcat>5000][popxcat<=20000] {  
    [zoom>0][zoom<6] { marker-height: 2; }
    [zoom>5][zoom<9] { marker-height: 6; }
    [zoom>8][zoom<12] { marker-height: 12; }
    [zoom>11] { marker-height: 15; }
    [score<15] { marker-line-color: #253494; marker-fill: #2C7FB8; }
    [score>=15][score<20] { marker-line-color: #253494; marker-fill: #41B6C4; }    
    [score>=20][score<25] { marker-line-color: #253494; marker-fill: #7FCDBB; }
    [score>=25][score<30] { marker-line-color: #253494; marker-fill: #C7E9B4; }
    [score>=30] { marker-line-width: 2; marker-line-color: #253494; marker-fill: #FFFFCC; }
  }
 
  [popxcat>20000][popxcat<=200000] {
    [zoom>0][zoom<6] { marker-height: 3; }
    [zoom>5][zoom<9] { marker-height: 10; }
    [zoom>8][zoom<12] { marker-height: 12; }
    [zoom>11] { marker-height: 30; }
    [score<15] { marker-line-color: #253494; marker-fill: #2C7FB8; }
    [score>=15][score<20] { marker-line-color: #253494; marker-fill: #41B6C4; }    
    [score>=20][score<25] { marker-line-color: #253494; marker-fill: #7FCDBB; }
    [score>=25][score<30] { marker-line-color: #253494; marker-fill: #C7E9B4; }
    [score>=30] { marker-line-width: 2; marker-line-color: #253494; marker-fill: #FFFFCC; }
  }  

  [popxcat>200000][popxcat<=500000] {
    [zoom>0][zoom<6] { marker-height: 5; }
    [zoom>5][zoom<9] { marker-height: 15; }
    [zoom>8][zoom<12] { marker-height: 20; }
    [zoom>11] { marker-height: 40; }
    [score<15] { marker-line-color: #253494; marker-fill: #2C7FB8; }
    [score>=15][score<20] { marker-line-color: #253494; marker-fill: #41B6C4; }    
    [score>=20][score<25] { marker-line-color: #253494; marker-fill: #7FCDBB; }
    [score>=25][score<30] { marker-line-color: #253494; marker-fill: #C7E9B4; }
    [score>=30] { marker-line-width: 2; marker-line-color: #253494; marker-fill: #FFFFCC; }
  }  
      
  [popxcat>500000] { 
    [zoom>0][zoom<5] { marker-height: 10; }
    [zoom>4][zoom<9] { marker-height: 20; }
    [zoom>8][zoom<12] { marker-height: 30; }
    [zoom>11] { marker-height: 50; }
    [score<15] { marker-line-color: #253494; marker-fill: #2C7FB8; }
    [score>=15][score<20] { marker-line-color: #253494; marker-fill: #41B6C4; }    
    [score>=20][score<25] { marker-line-color: #253494; marker-fill: #7FCDBB; }
    [score>=25][score<30] { marker-line-color: #253494; marker-fill: #C7E9B4; }
    [score>=30] { marker-line-width: 2; marker-line-color: #253494; marker-fill: #FFFFCC; }
  }  
  marker-allow-overlap: true;     /* allow markers to overlap      */
  marker-opacity: .6;             /* set the marker to 60% opacity */
  marker-line-opacity: .8;        /* set the line to 80% opacity   */
}