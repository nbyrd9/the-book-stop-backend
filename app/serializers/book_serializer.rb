class BookSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :genre, :published, :author_id
end