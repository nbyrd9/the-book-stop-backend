class BooksController < ApplicationController
    def new
        book = Book.new
    end

    def create
        book = Book.new(book_params)
        if book.save
            render json: book, except: [:created_at, :updated_at]
        else
            render json: {message: "Book Upload Failed. Please Try Again."}
        end
    end

    def index
    end

    def destroy
    end

    # private

    #     def book_params
    #     end

end
