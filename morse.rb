morse = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..'
}


def decode_char(str)
  $morse.each do |key, value|
    return key if value == str
  end
end

def decode_word(word)
  decoded_chars = []
  c = ''
  word.each_char do |i|
    if i == ' '
      decoded_chars << decode_char(c) unless c.empty?
      c = ''
    else
      c += i
    end
  end
  decoded_chars << decode_char(c)
  decoded_chars.join
end
