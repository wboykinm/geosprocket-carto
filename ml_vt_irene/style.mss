/*CartoCSS for Geocoded VTIrene Twitter records 

SQL for dates = SELECT * FROM ml_vt_locations_112311k WHERE date_creat = '2011-09-02' 

**********************************************/
/*
@base: #001420;

Map { background-color:@base; }

.water-poly { polygon-fill:@base; }

#land::glow-inner[zoom>0] {
  line-color:#225160;
  line-width:1.2;
  line-join:round;
  line-opacity:0.4;
}
#land::glow-innermiddle[zoom>1] {
  line-color:#225160;
  line-width:2.5;
  line-join:round;
  line-opacity:0.2;
}
#land::glow-outermiddle[zoom>2] {
  line-color:#225160;
  line-width:5;
  line-join:round;
  line-opacity:0.1;
}
#land::glow-outer[zoom>3] {
  line-color:#225160;
  line-width:5;
  line-join:round;
  line-opacity:0.05;
}

#land[zoom>=0] {
  polygon-fill:#0A202A;
  polygon-gamma:0.7;
}



#international_boundaries[zoom>1] {
  line-color:#0AF;
  line-dasharray:1,1;
  line-width:0.5;
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom=7] { line-width:1.2; }
  [zoom=8] { line-width:1.4; }
  [zoom>8] { line-width:1.6; }
}

#subnational_boundaries[COUNTRYNAM='US'][zoom=4],
#subnational_boundaries[COUNTRYNAM='Canada'][zoom=4],
#subnational_boundaries[COUNTRYNAM='Australia'][zoom=4],
#map-units[zoom>4],
#subnational_boundaries[zoom>4] {
  line-color:#0AF;
  line-dasharray:4,2;
  line-opacity:0.2;
  line-width:0.4;
  [zoom=5] { line-width:0.5; }
  [zoom=6] { line-width:0.6; }
  [zoom=7] { line-width:0.8; }
  [zoom=8] { line-width:1.0; }
  [zoom>8] { line-width:1.2; }
}

#geo-lines[DISPLAY!='International Date Line - Pre 1995 alignment'] {
  line-color:#B2A;
  line-dasharray:1,4;
  line-opacity:0.8;
  line-width:0.25;
  line-gamma:0.2;
}
*/
.point [date_creat="08/30/11"] {
  
  [sentiment<-1] {
    marker-fill:#D73027;
    marker-line-color:#D73027;
  }
  [sentiment>-1][sentiment<=-0.5] { 
    marker-fill:#FC8D59;
    marker-line-color:#FC8D59;
  }
  [sentiment>-0.5][sentiment<0] {
    marker-fill:#FEE090;
    marker-line-color:#FEE090;
  }
  [sentiment=0] {
    marker-fill:#FFFFBF;
    marker-line-color:#FFFFBF;
  }
  [sentiment>0][sentiment<=0.5] {
    marker-fill:#E0F3F8;
    marker-line-color:#E0F3F8;
  }
  [sentiment>0.5][sentiment<=1] {
    marker-fill:#91BFDB;
    marker-line-color:#91BFDB;
  }
  [sentiment>1] {
    marker-fill:#4575B4;
    marker-line-color:#4575B4;
  }
  
  [i=0] {
    marker-opacity:0.6;
    marker-line-opacity:0.8;
    marker-width:12;
    marker-line-width:2;
  }
  [i>0] {
    marker-opacity:0.4;
    marker-line-opacity:0.6;
    marker-width:6;
    marker-line-width:0.5;
  }

  marker-placement:point;
  marker-type:ellipse;
  marker-allow-overlap:true;
}
