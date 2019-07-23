class Book
    @@books = []
    
    attr_reader :title, :author, :word_count

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count

        @@books << self
    end

    def self.all
        @@books
    end

end