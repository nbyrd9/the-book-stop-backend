class AuthorsController < ApplicationController

def index
    authors = Author.all
    render json: authors, except: [:created_at, :updated_at], include: [:books]
end

def show
    author = Author.find_by(id: params[:id])
    if author
        render json: author, except: [:created_at, :updated_at], status: 200
    else
        render json: {message: "Author not found. Please try again."}
    end
end

def create
    author = Author.new(author_params)
    if author.save
        render json: author, status: 200
    else
        render json: { errors: list.errors.full_messages }
    end
end


def destroy
    author = Author.find_by(id: params[:id])
    author.destroy
    render json: author
end



private
    def author_params
        params.require(:author).permit(:name)
    end


end
