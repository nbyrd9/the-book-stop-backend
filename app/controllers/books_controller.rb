class BooksController < ApplicationController
    def index
        books = Book.all
        render json: books, except: [:created_at, :updated_at]
    end

    def show
       book = Book.find_by(id: params[:id])
       render json: book
    end
    
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

    def update 
        book.update(book_params)
        if book.save
          render json: book, status: 200
        else
          render json: { errors: book.errors.full_messages }
        end
    end 



    def destroy
        # book_id = params[:id]
        book = Book.find_by(params[:id])
        book.destroy
    end

    private

        def book_params
            params.require(:book).permit(:name, :genre, :published, :author_id)
        end

end
