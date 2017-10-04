class Film < Product
  attr_reader :title, :year, :producer

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @producer = params[:producer]
  end

  def to_s
    "Фильм \"#{@title}\", #{@year},реж. - #{@producer}, #{super} "
  end

end