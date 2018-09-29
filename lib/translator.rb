require "yaml"

def load_library(file)
  lib = 
  {"get_meaning" => {}, 
  "get_emoticon" => {} }
  YAML.load_file(file).each do |trans, array|
    eng = Array.new
    jpn = Array.new
    lib["get_emoticon"][eng] = jpn
    lib["get_meaning"][jpn] = trans
  end
  lib
end


def get_japanese_emoticon(path, icon)
  lib = load_library(path)
  rslt = lib["get_emoticon"][icon]
  result? ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end