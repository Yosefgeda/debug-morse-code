$morse = {
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
def decode(message)
  words = message.split('   ')
  decoded_words = []
  words.each do |word|
    words = decode_word(word)
    decoded_words << words
  end
  decoded_words.join(' ')
end

# puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...") // A BOX FULL OF RUBIES