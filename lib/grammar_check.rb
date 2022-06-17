def grammar_check(arg)
  first, last = arg.split[0], arg.split[-1]
  if (A..Z).include(first) && ["!",".","?"].include(last)
    true
  else 
    false

  end 
end 