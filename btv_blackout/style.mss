/* ====================================================== *
 * BTV BLACKOUT                                         *
 * ====================================================== */

Map {
  background-color: #284036;
}

/*#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}*/

/* == BOUNDARY ========================================== */
#btv_roi {
  polygon-fill: #355549;
}

#btv_roi {
  line-cap: round;
  line-color: #20332b;
  line-join: round;
  line-width: 10;
}

#btv_bound {
  line-cap: round;
  line-color: #20332b;
  line-join: round;
  line-dasharray:8,8;
  line-width: 1.5;
}


/* == BUILDINGS ========================================= */
.building[zoom<=14] {
  polygon-fill: #31423d;
}

.building[zoom>=15] {
  line-color: #2E262D;
  line-width: 0.2;
  polygon-fill: #313d3a;
}

.building[zoom=16] {
  line-width: 0.3;
  polygon-fill: #313d3a;
}

.building[zoom=17] {
  line-width: 0.4;
  polygon-fill: #313d3a;
}

.building[zoom=18] {
  line-width: 0.5;
  polygon-fill: #313d3a;
}


/* == ELEVATION LINES =================================== */
/* All */
.elevation[zoom>=12] {
  line-color: #AEF7FF;
  line-opacity: 0.10;
  line-width: 0.3;
}

.elevation[zoom=13] {
  line-opacity: 0.20;
}

.elevation[zoom=14] {
  line-opacity: 0.30;
}

.elevation[zoom>=15] {
  line-opacity: 0.40;
}

/* == PARKS ============================================= */
#btv_parks {
  polygon-fill: #47705E;
}
#btv_ag {
  polygon-fill: #4e7464;
}

/* == ROADS ============================================= */
.highway-label[TYPE='cycleway'][zoom>=14] {
  line-color: #85c5d3;
  line-width: 1;
  line-opacity: 0.8;
  line-dasharray: 4,4;
}

.highway-label[TYPE='footway'][zoom>=14] {
  line-color: #B1F1D2;
  line-width: 1;
  line-opacity: 0.8;
  line-dasharray: 2,2;
  line-opacity: 0.6;
}

.highway-label[NAME='Burlington - Port Kent'] {
  line-color: #84F1B4;
  line-width: 1.2;
  line-opacity: 0.8;
  line-dasharray: 6,6;
}

.road.fill[zoom<=14] {
  polygon-fill: #000;
}

.road.fill[zoom>=15] {
  line-color: #0F0F0F;
  line-opacity: 0.6;
  line-width: 0.5;
  polygon-fill: #0F0F0F;
  polygon-opacity: 0.6;
}

.road.outline[zoom>=14] {
  line-color: #84F1B4;
  line-opacity: 0.3;
  line-width: 1;
}

.road.outline[zoom=13] {
  line-color: #B1F1D2;
  line-opacity: 0.2;
  line-width: 0.5;
}

.road.outline[zoom=14] {
  line-color: #B1F1D2;
  line-opacity: 0.4;
  line-width: 1;
}

.road.outline[zoom=15] {
  line-color: #B1F1D2;
  line-opacity: 0.4;
  line-width: 1.25;
}

.road.outline[zoom=16] {
  line-color: #B1F1D2;
  line-opacity: 0.5;
  line-width: 1.5;
}

.road.outline[zoom=17] {
  line-color: #B1F1D2;
  line-opacity: 0.5;
  line-width: 1.75;
}

.road.outline[zoom>=18] {
  line-color: #B1F1D2;
  line-opacity: 0.5;
  line-width: 2;
}



/* == WATER ============================================= */
#btv_wat1 {
  line-color: #0e3131;
  line-width: 1;
  polygon-fill: #0e3131;
}
