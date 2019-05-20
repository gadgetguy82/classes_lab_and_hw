require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test

  def setup
    @book1 = {
      title: 'Lord of the Rings',
      rental_details: {
        student_name: 'Jeff',
        due_date: '01/12/19'
      }
    }

    @book2 = {
      title: 'Of Mice and Men',
      rental_details: {
        student_name: 'Ollie',
        due_date: '03/07/19'
      }
    }

    @book3 = {
      title: 'Treasure Island',
      rental_details: {
        student_name: 'Sarah',
        due_date: '26/08/19'
      }
    }

    @book_list = [@book1, @book2, @book3]
  end

  def test_library_book_getters
    my_library = Library.new(@book_list)
    assert_equal(@book2, my_library.books[1])
  end
end
