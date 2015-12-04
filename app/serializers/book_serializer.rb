class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :author, :genre_id, :review, :amazon_id
end
