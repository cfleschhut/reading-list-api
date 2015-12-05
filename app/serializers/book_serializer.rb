class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :finished_at, :author, :genre_id, :review, :amazon_id
end
