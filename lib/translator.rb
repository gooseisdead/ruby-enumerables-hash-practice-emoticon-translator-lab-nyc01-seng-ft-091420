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
    library = load_library(file)
    library.each do |emotion, emoticons|
    result = emoticons[:english]
    if result == emoticon
      return emoticons[:japanese]
      end
    end
  return "Sorry, that emoticon was not found"
end

# def get_japanese_emoticon(path, emoticon)
#   emoticons = load_library(path) #call load_library
#   result = emoticons["get_emoticon"][emoticon]
#   if result
#     result
#   else
#     "Sorry, that emoticon was not found"
#   end
# end

# def get_english_meaning(path, emoticon)
#   emoticons = load_library(path)
#   result = emoticons["get_meaning"][emoticon] #the same above but change get_meaning
#   if result
#     result
#   else
#     "Sorry, that emoticon was not found"
#   end
# end
