def is_valid?(array)
  array.count == 10 &&
  array.count('w') == array.count('e') &&
  array.count('n') == array.count('s')
end