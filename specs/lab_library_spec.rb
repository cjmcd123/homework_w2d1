require("minitest/autorun")
require("minitest/rg")

require_relative("../library.rb")

class TestLibrary < MiniTest::Test

  def test_book
    books = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    assert_equal([{:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}], books.book)
  end

  def test_book_search_full
    books = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    result = books.book_search_full("lord_of_the_rings")
    assert_equal({:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, result)
  end

  def test_book_search_rental
    books = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    result = books.book_search_rental("lord_of_the_rings")
    assert_equal({:student_name=>"Jeff", :date=>"01/12/16"}, result)
  end

  def test_book_add_empty
    books = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    books.book_add_empty("harry_potter")
    assert_equal(2, books.book.length)
  end

  def test_book_rental
    books = Library.new("lord_of_the_rings", "", "")
    books.book_rental("lord_of_the_rings", "Jeff", "01/12/16")
    assert_equal({:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, books.book[0])
  end

  def test_student_name
    books = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    result = books.student_name("lord_of_the_rings")
    assert_equal("Jeff", result)
  end

end
