
//#landcover[class!='crop'][class!='snow']{
#landcover[class='wood']{
  polygon-fill: #31a354;
  polygon-fill: #028c0c;
  line-color: #f04 * .8;
  comp-op: multiply;
  polygon-pattern-file:url(img/medium_highlight.png);
  polygon-pattern-alignment:global;
}

#landuse[class!='agriculture']{
  [class='park'],[class='wood'],[class='scrub'],
    [class='pitch'],[class='grass'] {
    //polygon-fill: #6bc20d;
    polygon-fill: #addd8e;
    line-color: #000000 * 0;
    polygon-pattern-file:url(img/full_highlight.png);
    polygon-pattern-alignment:global;
    ::line {
    line-color: #559c09;
    line-opacity: 0.5;
    line-width: 4;
    line-join: miter;
    [zoom>=9] { line-width: 5; }
    [zoom>=12] { line-width: 6; }
    line-comp-op: multiply;
    }
  }
  [class='industrial'],[class='parking'],
    [class='school'],[class='hospital'] {
    polygon-fill:#f7fcb9;
    polygon-fill: #df4;
    line-color: #96b008 * .5;
    polygon-pattern-file:url(img/crossfade.png);
    polygon-pattern-alignment:global;
  }
  [class='cemetery'] {
    polygon-fill: #bdbdbd;
    polygon-fill: #8fadb2;
    line-color: #465a5d * .8;
    line-width: 4;
  }
  comp-op: multiply;
  [zoom>15] { line-width:2; }
}

#landuse_overlay { polygon-fill: #2df; comp-op:multiply; }