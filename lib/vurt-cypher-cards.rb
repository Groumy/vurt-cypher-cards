require 'squib'
require 'yaml'

DATA_FOLDER = 'data'.freeze
LAYOUT_FILE = File.join(DATA_FOLDER, 'base-layout.yml')

Squib::Deck.new(layout: 'data/base-layout.yml', width: 1125, height: 825) do
  background color: 'white'
  # hint text: :black # uncomment to see the text box boundaries

  text str: "FLASHBANG GRENADE (1d6+3)",  layout: :title
  text str: "\tFor 10 minutes per level of the cypher, decrease the difficulty of social interaction tasks by one level. Intimidation, persuasion, negotiation—anything involving smoothness. For the next 2 hours, the difficulty of all Speed tasks is increased by one step. The effect can stack up to three times. If three drinks are taken, the character dies at the end of the effect. U-type are immune to this effect. \n\t”Take one measure for a good time, two for a blast, three for a clean and sexy death.”", layout: :rule_block

  text str: 'v0.1.0', layout: :copyright

  rect layout: :safe
  rect layout: :cut
  save_png prefix: 'layouts_builtin_party_'
end
