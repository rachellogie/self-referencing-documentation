require 'json'

class Dict

  def initialize(word)
    @word = word
  end

  def parse
    txt = File.read("./data/dictionary.json")
    data = JSON.parse(txt)

    original_definition = data[@word]["definition"]

    definition =  original_definition.gsub(/{|}/, '')

    data[@word] = definition

    just_def = { definition: definition}

    # add another key of see_also:
    # go through the original_definition, scan for {...}

    p original_definition.index('{')
  end


end