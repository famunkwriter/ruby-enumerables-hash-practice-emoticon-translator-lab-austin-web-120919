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


def get_japanese_emoticon(filepath, emoticon)
  translator = load_library(filepath)
  japanese_emoticon = translator[:get_emoticon][emoticon]
  if japanese_emoticon
    return japanese_emoticon
  else
    "Sorry no translation available"
end

def get_english_meaning
  # code goes here
end
