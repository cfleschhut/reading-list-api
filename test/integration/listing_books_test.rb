require 'test_helper'

class ListingBooksTest < ActionDispatch::IntegrationTest
  setup do
    Book.create!(title: "Pragmatic Programmer", rating: 5)
    Book.create!(title: "Ender’s Game", rating: 4)
  end

  test "listing books" do
    get "/books"

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal Book.count, json(response.body)[:books].size
  end

  test "lists top rated books" do
    get "/books?rating=5"

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal 1, json(response.body)[:books].size
  end

  test "returns book by id" do
    book = Book.first
    get "/books/#{book.id}"

    assert_equal 200, response.status
    book_response = json(response.body)[:book]
    assert_equal book.title, book_response[:title]
  end
end
