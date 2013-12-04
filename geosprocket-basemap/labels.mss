#countrylabels [zoom<5][LabelRank=2]{
    text-name:'[NAME]';
  	text-face-name:'By People Handwritten Regular';
  	text-size:30;
 	text-transform:uppercase;
  	text-fill:#111;
    text-character-spacing:2;
    text-min-distance:10;
    text-halo-radius:1.5;
    text-halo-fill:rgba(250,250,250,1);
 	text-allow-overlap:false;
  	text-wrap-width:10;
}

#popplaces {
  ::biguns [zoom>3][MEGACITY=1]{
    text-name:'[NAME]';
    text-face-name:'By People Handwritten Regular';
    text-size:20;
    text-transform:lowercase;
    text-fill:#666;
    text-character-spacing:2;
    text-min-distance:10;
    text-halo-radius:1.5;
    text-halo-fill:rgba(250,250,250,0.6);
    text-allow-overlap:false;
  }
}
