class Book < Product
  attr_reader :title, :genre, :author

  def initialize(params)
    super

    @genre = params[:genre]
    @author = params[:author]
    @title = params[:title]
  end

  def to_s
    "Книга \"#{@title}\", #{@genre},автор - #{@author}, #{super} "
  end

end