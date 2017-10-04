class Book < Product
  attr_accessor :title, :genre, :author

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      quantity: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @genre = params[:genre]
    @author = params[:author]
    @title = params[:title]
  end

  def to_s
    "Книга \"#{@title}\", #{@genre}, автор - #{@author}, #{super} "
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end
end