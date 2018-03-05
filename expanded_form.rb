# You will be given a number and you will need to return it as a string in Expanded Form.


def expanded_form(num)
  num
    .to_s
    .reverse
    .chars
    .map.with_index { | i, idx | i == '0' ? nil : i + '0' * idx }
    .compact
    .reverse
    .join(' + ')
end