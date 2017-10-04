class Disk < Product
  attr_accessor :title, :genre, :author, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      author: lines[1],
      genre: lines[2],
      year: lines[3],
      price: lines[4].to_i,
      quantity: lines[5].to_i
    )
  end

  def initialize(params)
    super

    @genre = params[:genre]
    @author = params[:author]
    @title = params[:title]
    @year = params[:year]
  end

  def to_s
    "Альбом \"#{@title}\" - #{@author}, #{@genre}, #{@year}, #{super} "
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
    @year = params[:year] if params[:year]
  end
end