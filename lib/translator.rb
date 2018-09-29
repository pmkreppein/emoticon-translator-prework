require "yaml"

def load_library(file)
  lib = 
  {:get_meaning => {}, 
  :get_emoticon => {} }
  YAML.load_file(file).each do |trans, array|
    eng = Array.new
    jpn = Array.new
    lib[:get_emoticon][eng] = jpn
    lib[:get_meaning][jpn] = trans
  end
  lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end