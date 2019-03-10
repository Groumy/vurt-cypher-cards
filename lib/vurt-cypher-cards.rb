require 'squib'

Squib::Deck.new(layout: 'data/base-layout.yml') do
  background color: 'white'
  # hint text: :black # uncomment to see the text box boundaries

  rect layout: :title_box,
        fill_color: :deep_sky_blue, stroke_width: 0
  text str: " A to Z BOOK",  layout: :title
  # text str: '1d6',             layout: :type_icon
  text str: '1d6',          layout: :type
  text str: 'Form',  layout: :title_middle
  rect fill_color: :black,   layout: :middle_rect

  text str: 'Provides the PC with an asset when attempting to navigate from one place to another within the city district covered by the A to Z Book. <br />&ensp;Each A to Z Book covers one specific city district. Because the landscape of the city changes so quickly, the map is only useable a number of times equal to the level of the cypher, after which time, it is no longer accurate. A to Z Books can be acquired as a short-term benefit by spending 2 XP and the time to scrounge one up', layout: :rule_top
  text str: 'A battered old road map or map book that has changed hands a thousand times. The maps are covered with notes and lines, with old streets crossed off and new routes drawn in.', layout: :rule_bottom

  # text str: 'Tiny text', layout: :copyright

  rect layout: :safe
  rect layout: :cut
  save_png prefix: 'layouts_builtin_party_'
end
