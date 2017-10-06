class Film < Product
  attr_accessor :title, :year, :producer

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map {|l| l.chomp}

    self.new(
      title: lines[0],
      producer: lines[1],
      year: lines[2],
      price: lines[3].to_i,
      quantity: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @producer = params[:producer]
  end

  def to_s
    "Фильм \"#{@title}\", #{@year},реж. - #{@producer}, #{super} "
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @producer = params[:producer] if params[:producer]
  end
end