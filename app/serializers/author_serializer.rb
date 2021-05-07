class AuthorSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name
    attribute :books do |author|
      TodoSerializer.new(author.books).as_json["data"]
    end

  end