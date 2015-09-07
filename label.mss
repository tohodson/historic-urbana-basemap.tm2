
// --- admin labels ------------------------------
#country_label_line {
  line-width:8;
}

#country_label {
  text-name: @name;
  text-face-name: @serif_bold;
  text-fill: #000;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-wrap-width: 80;
  text-orientation: 6;
  text-transform: lowercase;
  text-character-spacing: -1;
  text-line-spacing:-10;
  [scalerank<=1] { text-size: 28; }
  [scalerank=2] { text-size: 20; }
  [scalerank=3] { text-size: 18; }
  [scalerank>=4] { text-size: 13; }
  [zoom>=4] {
    [scalerank<=1] { text-size: 36; }
    [scalerank=2] { text-size: 28; }
    [scalerank=3] { text-size: 22; }
    [scalerank>=4] { text-size: 17; }
  }
}

// --- places ------------------------------------
#place_label[type='city'][localrank<=2]{
  text-name: @name;
  //text-face-name: @sans_bold;
  text-face-name: @market;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 20;
  text-transform:lowercase;
  [scalerank<=2] {
    text-size: 24;
    text-face-name: @sans_black_italic;
    [zoom>=6] { text-orientation: 8; }
    [zoom>=8]  { text-size: 28; }
    [zoom>=10]  { text-size: 32; }
    [zoom>=14]  { text-size: 36; }
  }
  [scalerank=3] {
    [zoom>=8] {
      text-size: 22;
      text-orientation: 8;
      text-face-name: @sans_black_italic;
    }
    [zoom>=10]  { text-size: 24; }
    [zoom>=14]  { text-size: 26; }
  }
  [scalerank>=4][zoom>10] {
    text-size: 20;
    text-orientation: 6;
    text-face-name: @sans_bold_italic;
  }
}

#place_label[type='town'][localrank<=1][zoom>8],
#place_label[type='town'][localrank<=3][zoom>=11] {
  text-name: @name;
  //text-face-name: @sans_black_italic;
  text-face-name: @market;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 16;
  text-wrap-width: 80;
  //text-transform:uppercase;
  [zoom>=12] { text-size: 20; }

  [zoom>=14] { text-size: 24; }
  }

#place_label[zoom>=11][type!='city'][type!='town'] {
  text-name: @name;
  text-face-name: @label2;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 14;
  text-line-spacing:-2;
  text-wrap-width: 50;
  text-transform:lowercase;
  [zoom>=14][type='neighbourhood'],
  [zoom>=14][type='village'] {
    text-size: 18;
    text-orientation: 5;
  }
}

// --- pois ------------------------------------
#poi_label[scalerank=1][zoom>=14],
#poi_label[scalerank=2][zoom>=16],
#poi_label[scalerank=3][zoom>=17] {
  [type='Aerodrome']{
    text-name: "'[ ' + [ref] + ' ]'";
    text-face-name: @label2;
    text-size: 20;
    text-transform:uppercase;
  }
  // --- dots ---------
  marker-width: 8;
  marker-fill: #000;
  marker-line-color: @land;
  marker-line-width: 3;
  // --- text ---------
  text-name: @name;
  text-face-name: @label2;
  text-size: 14;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-avoid-edges: true;
  text-transform: lowercase;
  text-wrap-width: 80;
  text-placement-type: simple;
  text-line-spacing: -8;
  text-placements: NE,SE,NW,SW;
  text-dx: 5;
  text-dx: -5;
}
// ---------------------------------------------------------------------
// Roads

#road_label[reflen>=1][reflen<=6]::shield {
  // Motorways with a 'ref' tag that is 1-6 characters long have a
  // [ref] value for shield-style labels.
  // Custom shield png files can be created using make_shields.sh
  // in _src folder
  shield-name: [ref];
  shield-face-name: @market;
  shield-fill: #765;
  shield-min-distance: 60;
  shield-min-padding: 8;  // prevents clipped shields at tile edges
  shield-size: 9;
  shield-file: url('shield/motorway_sm_[reflen].png');
  [zoom>=15] {
    shield-size: 11;
    shield-file: url('shield/motorway_lg_[reflen].png');
  }
}

#road_label {
  text-name: @name;
  text-placement: line;  // text follows line path
  text-face-name: @market;
 
  text-fill: #765;
  text-halo-fill: fadeout(#fff, 50%);
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-size: 12;
  text-avoid-edges: true;  // prevents clipped labels at tile edges
  [zoom>=15] { text-size: 13; }
}

