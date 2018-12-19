class Book
# write your code here
    attr_accessor :title
    def title()
        littleWords = ['and','the','of','in','on','a','an']
        wordsInTheTitle = @title.split(' ')
        wordsInTheTitle.each_with_index do |word, index|
            if (!littleWords.include?(word)) || index == 0
                wordsInTheTitle[index] = word.capitalize
            end
        end
        wordsInTheTitle * ' '
    end
end

puts 'inferno'.split(' ').inspect
