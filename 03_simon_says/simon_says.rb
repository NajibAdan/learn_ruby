#write your code here
def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase,numberOfRepeats=2)
    repeatedPhrase = ''
    numberOfRepeats.times do
        repeatedPhrase +=phrase + ' '
    end
    repeatedPhrase[0..-2]
end

def start_of_word(phrase,position)
    tempWord = ''
    position.times do |i|
        tempWord += phrase[i]
    end
    tempWord
end

def first_word(phrase,all=false)
    tempWord = phrase.split()
    if (all)
        tempWord
    else
        tempWord[0]
    end
end

def titleize(word)
    littleWords = ['the','and','over']
    titleizedPhrase = ''
    tempWord = first_word(word,true)
    tempWord.each do |title|
        if !littleWords.include?(title) || tempWord.index(title) == 0
            titleizedPhrase +=title.capitalize! + ' '
        else
            titleizedPhrase += title + ' '
        end
    end
    titleizedPhrase[0..-2]
end

