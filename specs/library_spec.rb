require('minitest/autorun')
require('minitest/rg')
require_relative('../library')



class TestLibrary < MiniTest::Test

def setup


@books_array = [
    {
      title: "American Idiot",
      rental_details: {
        student_name: "Tre Cool",
        date: "13/09/04"
      }
    },

    {
      title: "California",
      rental_details: {
        student_name: "Mark Hoppus",
        date: 04/07/16
      }
    },

    {
      title: "All Hope Is Gone",
      rental_details: {
        student_name: "Corey Taylor",
        date: "06/06/06"
      }
    }

    ]

    @morningside = Library.new(@books_array)

  end

  # def test_one
  #   assert_equal(3, @books_array.length)
  # end


  def test_get_names
    result = @morningside.get_names
    assert_equal(["American Idiot", "California", "All Hope Is Gone"], result)
  end

  def test_get_book_info_with_title__found
    result = @morningside.get_book_info("All Hope Is Gone")
    assert_equal({
      title: "All Hope Is Gone",
      rental_details: {
        student_name: "Corey Taylor",
        date: "06/06/06"
      }
    },result)
  end
  #
  def test_get_book_info_with_title__not_found
    result = @morningside.get_book_info("All Killer, No Filler")
    assert_equal("book not found", result)
  end

  def test_rental_details__found
    result = @morningside.rental_details("American Idiot")
    assert_equal({
      student_name: "Tre Cool",
      date: "13/09/04"
    }, result)
  end

  def test_rental_details_not_found
    result = @morningside.rental_details("Wishful Thinking")
    assert_equal("book not found", result)
  end

  def test_book_count
    result = @morningside.book_count
    assert_equal(3, result)
  end


  def test_add_book
    @morningside.add_book("Infinity On High")
    result = @morningside.book_count
    assert_equal(4, result)
  end

  def test_update
    result = @morningside.update("American Idiot", "Peter Rabbit", "31/02/19")
    assert_equal({
      student_name: "Peter Rabbit",
      date: "31/02/19"
    }, result)
  end











end
