class Author
    @@authors = []
    
    attr_reader :name

    def initialize(name)
        @name = name

        @@authors << self
    end

    def self.all
        @@authors
    end

    def books
        Book.all.select{|book| book.author == self}
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        all_word_counts = self.books.map{|book| book.word_count}
        all_word_counts.inject(:+)
    end

    def self.most_words
        self.all.inject{ |memo, author|
            if memo.total_words < author.total_words
                author
            else
                memo
            end
        }
    end


end