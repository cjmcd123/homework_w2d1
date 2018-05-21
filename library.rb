class Library

  def initialize(input_title, input_student, input_date)
    @books = [{
      title: input_title,
      rental_details: {
        student_name: input_student,
        date: input_date
      }
      }]
    end

    def book
      return @books
    end

    def student_name(title)
      book = book_search_full(title)
      result = book[:rental_details][:student_name]
      return result
    end

    def book_search_full(title)
      for book in @books
        if book[:title] == title
          return book
        end
      end
    end

    def book_search_rental(title)
      for book in @books
        if book[:title] == title
          return book[:rental_details]
        end
      end
    end

    def book_add_empty(title)
      @books.push({title: "#{title}", rental_details: {student_name: "", date: ""}})
    end

    def book_rental(title, student, date)
      book = book_search_full(title)
      book[:rental_details][:student_name] = student
      book[:rental_details][:date] = date
      return book
    end

  end
