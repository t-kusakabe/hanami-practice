module Web::Controllers::Books
  class Create
    include Web::Action

    params do
      required(:book).schema do
        required(:title).filled(:str?)
        required(:author).filled(:str?)
      end
    end

    def call(params)
      BookRepository.new.create(params[:book])

      redirect_to '/books'
    end
  end
end
