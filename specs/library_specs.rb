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

    @my_library = Library.new(@book_list)
  end

  def test_library_book_getters
    assert_equal(@book2, @my_library.books[1])
  end

  def test_get_all_book_details_from_title
    assert_equal(@book3, @my_library.book_details('Treasure Island'))
  end

  def test_get_rental_details_from_title
    assert_equal(@book1[:rental_details], @my_library.rental_details('Lord of the Rings'))
  end

  def test_add_book_to_library
    @my_library.add_book('War and Peace')
    assert_equal(4, @my_library.books.length)
  end

  def test_change_rental_details
    @my_library.change_rental_details('Treasure Island', 'Peter', '04/08/19')
    assert_equal(
      {
        title: 'Treasure Island',
        rental_details: {
          student_name: 'Peter',
          due_date: '04/08/19'
        }
      }, @my_library.books[2]
    )
  end

end
