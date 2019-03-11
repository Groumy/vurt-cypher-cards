require 'squib'
require 'yaml'

DATA_FOLDER = 'data'.freeze
VERSION = '0.1.0'.freeze
CARDS_OUT_PREFIX = "vurt_cyphers_#{VERSION}_"
LAYOUT_FILE = File.join(DATA_FOLDER, 'base-layout.yml')
CARDS_FILE = File.join(DATA_FOLDER, 'vurt-cypher-cards.yml')
CARD_WIDTH = 1125
CARD_HEIGHT = 825
BACKGROUND_COLOR = 'white'

def main
  data = load_data
  generate_deck(data[:count], data['title'], data['level'], data['effect'])
end

def load_data
  raw_data = YAML.load_file(CARDS_FILE)
  keys = raw_data.collect {|x| x.keys}.flatten.uniq
  new_data = {
    count: raw_data.count
  }
  keys.each do |k|
    new_data[k] = raw_data.collect {|x| x[k]}
  end
  return new_data
end

def generate_deck (count, titles, levels, effects)
  Squib::Deck.new(cards: count, layout: LAYOUT_FILE, width: CARD_WIDTH, height: CARD_HEIGHT) do
    background color: BACKGROUND_COLOR
    text str: titles,  layout: :title
    text str: effects, layout: :rule_block
    text str: levels, layout: :copyright
    rect layout: :safe
    rect layout: :cut
    save_png prefix: CARDS_OUT_PREFIX
  end
end

main