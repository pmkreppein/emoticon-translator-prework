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
  emoticon = lib["get_emoticon"][icon]
  if emoticon  
    return emoticon 
  else
    return "Sorry, that emoticon was not found"
end
end


def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end