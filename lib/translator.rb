require 'yaml'

def load_library(file)
  # code goes here
  emoticons = {}

  YAML.load_file(file).each do |key, value|
    emoticons[key] = {}
    emoticons[key][:english] = value[0]
    emoticons[key][:japanese] = value[1]
  end
  emoticons
end

def get_japanese_emoticon(file, emoticon)
    load_library(path).each do |key, value|
    result = value[:english]
    if result == key
      return emoticons[:japanese]
      end
    end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)

  load_library(path).each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
  return "Sorry, that emoticon was not found"
end
