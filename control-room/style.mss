/**********************************************************
 * Control Room
 **********************************************************/

@base: #001420;

Map { background-color:@base; }

#projects {
  /*marker-file: uri(http://dl.dropbox.com/u/23616645/Geosprocket_Share/geosprocketsmalldark.png);*/
  marker-opacity:0.6;
  marker-line-opacity:0.9;
  marker-height:15;
  marker-allow-overlap:true;
  marker-fill:#EE7908;
  marker-line-width:2;
  marker-line-color:#033977;
}

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
/*
#urban {
  polygon-fill:#9F6;
  polygon-opacity:0.66;
  line-color:#9F6;
  line-opacity:0.33;
  [zoom=3] { line-width:0.4; }
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom>6] { line-width:1.2; }
}*/