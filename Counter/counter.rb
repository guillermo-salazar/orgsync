class Counter
  def character_min_max_occurrences input
    sentence = input.tr(" ","").downcase
    [min_character_count(sentence), max_character_count(sentence)]
  end
  def max_character_count input
    sorted_items||=sorted_character_occurrences_array input
    max = sorted_items.first
  end
  def min_character_count input
    sorted_items||=sorted_character_occurrences_array input
    min = ['z', input.length]
    sorted_items.each {|item| min = item if item[1]<min[1]}
    min
  end
  def sorted_character_occurrences_array input
    occurrences = Hash.new(0)
    input.chars.each{ |item| occurrences[item]+= 1 }
    occurrences.sort.sort_by{|key, value| value}.reverse
  end
end
