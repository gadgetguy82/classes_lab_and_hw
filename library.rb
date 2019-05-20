class Library

  attr_reader(:books)

  def initialize(book_list)
    @books = book_list
  end

  def book_details(title)
    for book in @books
      if (book[:title].downcase == title.downcase)
        return book
      end
    end
    return nil
  end

  def rental_details(title)
    for book in @books
      if (book[:title].downcase == title.downcase)
        return book[:rental_details]
      end
    end
    return nil
  end

  def add_book(new_title)
    @books.push(
      {
        title: new_title,
        rental_details: {
          student_name: '',
          due_date: ''
        }
      }
    )
  end

  def change_rental_details(title, student, date)
    details = rental_details(title)
    details[:student_name] = student
    details[:due_date] = date
  end
end
