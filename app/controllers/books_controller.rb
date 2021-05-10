class BooksController < ApplicationController
    def index  
        books = Book.all
        render json: books, except: [:created_at, :updated_at]
    end

    # def show
  
    #    book = Book.find_by(id: params[:id])
    #    render json: book
    # end


    def create
        # binding.pry
        book = Book.new(book_params)
        if book.save
            render json: book, except: [:created_at, :updated_at]
        else
          
            render json: {message: "Book Upload Failed. Please Try Again."}
        end
    end

   



    def destroy
        # book_id = params[:id]
        book = Book.find_by(params[:id])
        book.destroy
    end

    private

        def book_params
            params.require(:book).permit(:name, :author_id)
        end

end
