// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

////////////////////////////////////////////////
// FONTS //
////////////////////////////////////////////////

@med: "Prater Script Offc Pro Regular", "Arial Unicode MS Regular";
@reg: "Prater Script Offc Pro Regular", "Arial Unicode MS Regular";
@lt: "Prater Script Offc Pro Regular", "Arial Unicode MS Regular";
@bold: "Prater Script Offc Pro Regular", "Arial Unicode MS Bold";
@it: "Prater Script Offc Pro Regular", "Arial Unicode MS Regular";

////////////////////////////////////////////////
// COLORS //
////////////////////////////////////////////////

@city_text: #555;
@town_text: #777;
@village_text: #888;
@neigh_text: #999;
@halo: #e2e3e3;

#place_label {
  [type='city'][zoom>=8][zoom<=15][localrank<=2] {
    text-name: @name;
    text-face-name: @reg;
    text-fill: @city_text;
    text-halo-fill: @halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 16;
    text-line-spacing: -8;
    text-wrap-width: 160;
    text-wrap-before: true;
    [zoom>=9] { 
      text-size: 17; 
      text-wrap-width: 170; }
    [zoom>=10] { 
      text-size: 18; 
      text-wrap-width: 180; }
    [zoom>=12] { 
      text-size: 24;
      text-character-spacing: 0;
      text-wrap-width: 220; 
      }
    [zoom>=14] { 
        text-fill: @city_text; 
        text-size: 28;
        text-wrap-width: 250;
      } 
    }
  }

#place_label {  
  [type='town'][zoom>=8][zoom<=17][localrank<=2] {
    text-name: @name;
    text-face-name: @reg;
    text-fill: @town_text;
    text-halo-fill: @halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 12;
    text-line-spacing: -8;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=10] { 
      text-size: 14;
      text-wrap-width: 120;  
       }
    [zoom>=12] { 
      text-size: 20;
      text-wrap-width: 160;  
      }
    [zoom>=14] { 
      text-fill: @town_text; 
      text-size: 26;
      text-wrap-width: 200;
      }
    [zoom>=16] { 
      text-size: 28;
      text-wrap-width: 180;  
    }
  }
  [type='village'][zoom>=10][zoom<=18][localrank<=2],
  [type='hamlet'][zoom>=12][zoom<=18][localrank<=2]  {
    text-name: @name;
    text-face-name: @reg;
    text-fill: @village_text;
    text-halo-fill: @halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 12;
    text-wrap-width: 100;
    text-line-spacing: -8;
    text-wrap-before: true;
    [type='village'] {
    [zoom>=12] { 
        text-size: 18; 
        text-wrap-width: 180; 
    }
    [zoom>=14] { 
        text-size: 20; 
        text-wrap-width: 200; 
    }
    [zoom>=16] {
        text-fill: @village_text;
        text-size: 24; 
        text-wrap-width: 240; 
     }
     [zoom>=18] {
        text-size: 26; 
        text-wrap-width: 250; 
      }
    }
    [type='hamlet'] {
    [zoom>=12] { 
        text-size: 16; 
        text-wrap-width: 160;
    }
    [zoom>=14] { 
        text-size: 18; 
        text-wrap-width: 180; 
     }
     [zoom>=16] {
        text-fill: @village_text;
        text-size: 22; 
        text-wrap-width: 220; 
      }
      [zoom>=18] {
        text-size: 24; 
        text-wrap-width: 240; 
       }
    }
 }
  
  [type='suburb'][zoom>=12][zoom<=17][localrank<=2],
  [type='neighbourhood'][zoom>=13][zoom<=17][localrank<=2] {
    text-name: @name;
    text-face-name: @reg;
    text-fill: @neigh_text;
    text-halo-fill: @halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 14;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-line-spacing: -8;
    [type='suburb'][zoom>=13],
    [type='neighbourhood'][zoom>=14] {
      text-size: 16; 
      text-wrap-width: 160; 
    }
    [type='suburb'][zoom>=14],
    [type='neighbourhood'][zoom>=15] {
      text-size: 18; 
      text-wrap-width: 180;
    }
    [type='suburb'][zoom>=15],
    [type='neighbourhood'][zoom>=16] {
      text-size: 20; 
      text-wrap-width: 200;
      }
     [type='suburb'][zoom>=16],
     [type='neighbourhood'][zoom>=17] {
       text-size: 22; 
       text-wrap-width: 220;
     }
     [type='suburb'][zoom>=17] {
       text-size: 24; 
       text-wrap-width: 240;
      }
    [zoom>=16] { text-fill:@neigh_text; }
  }
}

////////////////////////////////////////////////
// Water Features //
////////////////////////////////////////////////

// Water bodies //
#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @it;
    text-fill: darken(@city_text, 10);
    text-character-spacing: 0.5; 
    text-size: 9;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-halo-fill: fadeout(#fff, 95);
    text-halo-radius: 1.5;
    text-halo-rasterizer:fast;
  }
  [zoom>=15][area>500000],
  [zoom>=17][area>10000],
  [zoom>=18]  {
    text-size: 10;
    text-wrap-width: 70;
  }
  [zoom>=16][area>500000],
  [zoom>=18][area>10000],
  [zoom>=19]  {
    text-size: 11;
    text-wrap-width: 80;
  }
  [zoom>=12][area>10000000],
  [zoom>=14][area>5000000]  {
    text-size: 12;
    text-wrap-width: 90;
  }
  [zoom>=10][area>100000000]  {
    text-size: 13;
    text-wrap-width: 90;
  }
}

// Waterways //
#waterway_label {
  [class="river"][zoom>=13],
  [class="canal"][zoom>=15],
  [class="stream"][zoom>=17], 
  [class="stream_intermittent"][zoom>=17] {
    text-placement: line;
    text-avoid-edges:true;
    text-min-distance: 400;
    text-name: @name;
    text-face-name: @it;
    text-fill: darken(@city_text, 5);
    text-size: 10;
    text-character-spacing: 0.5; 
    text-halo-fill: fadeout(#fff, 95);
    text-halo-radius: 1.5;
    text-halo-rasterizer:fast;
  } 
  [class="river"][zoom>=14],
  [class="canal"][zoom>=16],
  [class="stream"][zoom>=18], 
  [class="stream_intermittent"][zoom>=18] {
    text-size: 11;
  }
  [class='river'][zoom=15],
  [class='canal'][zoom>=17] {
    text-size: 12;
  }
  [class='river'][zoom>=16],
  [class='canal'][zoom>=18] {
    text-size: 13;
  }
}

// Marine (oceans and seas) //
#marine_label {
  text-name: @name;
  text-face-name: @it;
  text-fill: @city_text;
  text-wrap-width: 70;
  text-wrap-before: true;
  text-halo-fill: fadeout(#fff, 95);
  text-halo-radius: 2;
  [placement = 'point'] {
    text-placement: point;
  }
  [placement = 'line'] {
    text-placement: line;
    text-avoid-edges: true;
  }
  [labelrank = 1] {
    text-wrap-width: 400;
    [zoom = 3] {
      text-size: 14;
      text-character-spacing: 4;
      text-line-spacing: 16;
    }
    [zoom = 4] {
      text-size: 16;
      text-character-spacing: 6;
      text-line-spacing: 24;
    }
    [zoom = 5] {
      text-size: 18;
      text-character-spacing: 8;
      text-line-spacing: 32;
    }
  }
  [labelrank = 2] {
    [zoom = 3] {
      text-size: 10;
      text-character-spacing: 2;
      text-line-spacing: 6;
    }
    [zoom = 4] {
      text-size: 11;
      text-character-spacing: 2;
      text-line-spacing: 8;
    }
    [zoom = 5] {
      text-size: 17;
      text-character-spacing: 4;
      text-line-spacing: 8;
    }
    [zoom = 6] {
      text-size: 19;
      text-character-spacing: 5;
      text-line-spacing: 10;
    }
  }
  [labelrank = 3] {
    [zoom = 3] {
      text-size: 9;
      text-character-spacing: 2;
      text-line-spacing: 3;
    }
    [zoom = 4] {
      text-size: 10;
      text-character-spacing: 2;
      text-line-spacing: 8;
    }
    [zoom = 5] {
      text-size: 12;
      text-character-spacing: 4;
      text-line-spacing: 8;
    }
    [zoom = 6] {
      text-size: 15;
      text-character-spacing: 5;
      text-line-spacing: 10;
    }
  }
  [labelrank = 4][zoom = 4],
  [labelrank = 5][zoom = 5],
  [labelrank = 6][zoom = 6] {
    text-size: 9;
    text-character-spacing: 2;
    text-line-spacing: 6;
  }
  [labelrank = 4][zoom = 5],
  [labelrank = 5][zoom = 6],
  [labelrank = 6][zoom = 7] {
    text-size: 11;
    text-character-spacing: 3;
    text-line-spacing: 8;
  }
  [labelrank = 4][zoom = 6],
  [labelrank = 5][zoom = 7] {
    text-size: 16;
    text-character-spacing: 4;
    text-line-spacing: 1;
  }
}
