require 'yaml'
require 'pry'
def load_library(filepath)
  translator = YAML.load_file(filepath)
  meaning = {get_meaning: {},  get_emoticon: {}}
  translator.each do |key, value|
    #binding.pry
    meaning[:get_meaning][value[1]] = key
    meaning[:get_emoticon][value[0]] = value[1]
      #binding.pry
  end
  meaning
end

def get_japanese_emoticon(filepath, get_emoticon)
  load_library(filepath)
  translator = YAML.load_file(filepath)
  meaning = {get_meaning: {},  get_emoticon: {}}
  translator.each do |key, value|
    #binding.pry
    meaning[:get_meaning][value[1]] = key
    meaning[:get_emoticon][value[0]] = value[1]
    i = 0
    while i < translator.each do
      if(:get_emoticon[i] == "=D" || :get_emoticon[i] == ":)" || :get_emoticon[i] == ":'(")
        return[:get_emoticon][value[0]] = value[1]
      else
        "Sorry that translation wasn't found"
    end
    i += 1
  end
end
end

def get_english_meaning
  # code goes here
end
