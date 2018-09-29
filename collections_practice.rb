# your code goes here
def begins_with_r(array)
  array.all? do |element|
     element.start_with?("r")
  end
end

def contain_a(array)
  array_a = []
  array.each do |element|
    if element.include?("a")
    array_a << element
  end
end
  array_a
end

def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa")
    return element
  end
end
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        hash[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(keys, data)
  merge_array = []
  data[0].each do |k, v|
    keys.each do |key|
      if key.values[0] == k
        merge_array.push(key.merge(v))
      end
    end
  end
  merge_array
end

def find_cool(array)
   array.each do |k, v|
   if k[:temperature] == "cool"
   return [k]
   end
end
end
