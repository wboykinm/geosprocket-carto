Map {
  /*background-image: url('../img/JapaneseCalligraphyRicePaper.jpg');*/
}
 
#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 0;
    line-join: round;
  }
  polygon-pattern-file: url('../img/paper/044_paper_handmadepaper.jpg');
  comp-op:overlay;
  opacity:0.7;
}
 
#elev {
  /*line-width:0.2;
  line-smooth:0.5;
  line-opacity:0.1;
  line-gamma:0.1;*/
  polygon-gamma:0.4;
  polygon-opacity:0.8;
  /*polygon-comp-op:grain-extract;
  line-comp-op:grain-extract;*/
  
  [GRIDCODE=1]{polygon-fill:#000;}
  [GRIDCODE=2]{polygon-fill:#000;}
  [GRIDCODE=3]{polygon-fill:#00000D;}
  [GRIDCODE=4]{polygon-fill:#000027;}
  [GRIDCODE=5]{polygon-fill:#000040;}
  [GRIDCODE=6]{polygon-fill:#00005A;}
  [GRIDCODE=7]{polygon-fill:#000073;}
  [GRIDCODE=8]{polygon-fill:#040199;}
  [GRIDCODE=9]{polygon-fill:#2A27BF;}
  [GRIDCODE=10]{polygon-fill:#514EE6;}
  [GRIDCODE=11]{polygon-fill:#7774FF;}
  [GRIDCODE=12]{polygon-fill:#9D9AFF;}
  [GRIDCODE=13]{polygon-fill:#C3C0FF;}
  [GRIDCODE=14]{polygon-fill:#E9E6FF;}
  [GRIDCODE=15]{polygon-fill:#F9FFE9;}
  [GRIDCODE=16]{polygon-fill:#DFFFCF;}  
  [GRIDCODE=17]{polygon-fill:#C6F1B6;}
  [GRIDCODE=18]{polygon-fill:#ADD89D;}
  [GRIDCODE=19]{polygon-fill:#93BE83;}
  [GRIDCODE=20]{polygon-fill:#7AA56A;}
  [GRIDCODE=21]{polygon-fill:#608B50;}
  [GRIDCODE=22]{polygon-fill:#537E43;}
  [GRIDCODE=23]{polygon-fill:#477237;}
  [GRIDCODE=24]{polygon-fill:#3A652A;}
  [GRIDCODE=25]{polygon-fill:#2D581D;}
  [GRIDCODE=26]{polygon-fill:#204B10;}
  [GRIDCODE=27]{polygon-fill:#133E03;}
  [GRIDCODE=28]{polygon-fill:#073200;}
  [GRIDCODE=29]{polygon-fill:#002500;}
  [GRIDCODE=30]{polygon-fill:#001800;}
  [GRIDCODE=31]{polygon-fill:#000B00;}
  [GRIDCODE=32]{polygon-fill:#000;}
}

#roads {
  line-width:1;
  line-color:#168;
}
