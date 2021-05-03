class AuthorsController < ApplicationController

def index
    authors = Author.all
    render json: authors, except: [:created_at, :updated_at]
end

def show
    author = Author.find_by(id: params[:id])
    if author
        render json: authors, except: [:created_at, :updated_at]
    else
        render json: {message: "Author not found. Please try again."}
    end
end

# def create
# end

# def update
# end

# def destroy
# end



# private
#     def author_params
#     end


end
