def count_words(arg)
  if !arg.is_a? String
    raise TypeError
  else 
  return arg.split.length
  end 
end 