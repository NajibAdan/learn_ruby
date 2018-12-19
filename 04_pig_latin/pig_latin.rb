#write your code here
def vowelPosition(word)
    position = 0
    splitWord = word.split('')
    quPosition = word.include?('qu')
    vowels = ['a','e','i','o','u']
    splitWord.each do |letter|
        if (quPosition)
            position = splitWord.index('q')+2
        elsif vowels.include?(letter)
            position = splitWord.index(letter)
            break
        end
    end
    position
end

def translate(word)
    convertedWord = ''
    splitWord = word.split()
    if splitWord.length == 1
        pigLatin(word,vowelPosition(word))
    else
        splitWord.each do |word|
            convertedWord += pigLatin(word,vowelPosition(word))+' '
        end
        return convertedWord[0..-2]
    end
end

def pigLatin(word,vowelPos)
    pigLatinWord = ''
    if vowelPos == 0
        pigLatinWord = word + 'ay'
        pigLatinWord
    else
        pigLatinWord =  word[vowelPos..-1] + word[0..vowelPos-1]+ 'ay'
        pigLatinWord
    end
end

