class Item

  @@num_total = 0
  @@num_loaned = 0

  attr_reader :title

  #class variable reader
    def self.num_total
      @@num_total
    end

    def self.num_checked_out
      @@num_checked_out
    end

    def initialize(title)
      @title = title

      @loaned = false

      @@num_total += 1
    end

    def check_out
      unless @loaned
        @loaned = true
        @@num_loaned += 1
      end
    end

    def check_in
      if @loaned
        @loaned = false
        @@num_loaned -= 1
      end
    end

end
