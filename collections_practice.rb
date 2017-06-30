def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element.is_a?(String) && element.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if {|element| element.is_a?(String) == false}
end

def count_elements(array)
  counter = []
  array.each do |element|
    count = array.count(element)
    counter.push(element)
    counter[counter.index(element)][:count] = count
    array.delete(element)
  end
  counter.uniq
end

def merge_data(keys, data)
  keys.each_with_index do |element, index|
    data.each do |info|
      info.each do |person, traits|
        if keys[index][:first_name] == person
          keys[index].merge!(traits)
        end
      end
    end
  end
end

def find_cool(array)
  array.each do |element|
    element.each do |key, value|
      return [element] if value == "cool"
    end
  end
end

def organize_schools(schools)
  organized = {}
  schools.each do |name, area|
    if organized[area[:location]]
     organized[area[:location]].push(name)
    else
      organized[area[:location]] = [name]
    end
  end
  organized
end
