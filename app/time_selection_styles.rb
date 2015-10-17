module TimeSelectionStyles
  TimeTileMargin = 10
  GutterWidth = 20

  def background_style
    background_color(Colors::Background)
  end

  def time_tile_return_time_style
    font(Fonts::TimeTileReturnTime)
    constraints do
      center.equals(:superview)
    end
  end

  def time_tile_time_range_style
    font(Fonts::TimeTileTimeRange)
    constraints do
      top.equals(nearest(:time_tile_return_time), :bottom).plus(3)
      center_x.equals(:superview, :center_x)
    end
  end

  def location_icon_style
    image("location-icon".uiimage)
    constraints do
      top(100)
      left(GutterWidth * 2)
      height(15)
      width(:scale)
    end
  end

  def current_location_style
    color(Colors::BackgroundTextLight)
    font(:bold.uifont(15))
    constraints do
      left.equals(:location_icon, :right).plus(15)
      bottom.equals(:location_icon)
    end
  end

  def get_me_back_here_by_style
    text "Get me back here by :"
    color(Colors::BackgroundTextHeavy)
    font(:bold.uifont(20))
    constraints do
      top.equals(:location_icon, :bottom).plus(30)
      left.equals(:top_left_time_tile)
    end
  end

  def top_left_time_tile_style
    background_color(Colors::TimeTile)
    constraints do
      top.equals(:get_me_back_here_by, :bottom).plus(20)
      left.equals(:superview).plus(GutterWidth)
      width.equals(:top_right_time_tile)
      right.equals(:top_right_time_tile, :left).minus(TimeTileMargin)
      height.equals(:self, :width)
    end
  end

  def top_right_time_tile_style
    background_color(Colors::TimeTile)
    constraints do
      top.equals(:top_left_time_tile)
      right.equals(:superview).minus(GutterWidth)
      width.equals(:top_left_time_tile)
      height.equals(:top_left_time_tile)
    end
  end

  def bottom_left_time_tile_style
    background_color(Colors::TimeTile)
    constraints do
      top.equals(:top_left_time_tile, :bottom).plus(TimeTileMargin)
      left.equals(:top_left_time_tile)
      width.equals(:top_left_time_tile)
      height.equals(:top_left_time_tile)
    end
  end

  def bottom_right_time_tile_style
    background_color(Colors::TimeTile)
    constraints do
      top.equals(:top_right_time_tile, :bottom).plus(TimeTileMargin)
      left.equals(:top_right_time_tile)
      width.equals(:top_right_time_tile)
      height.equals(:top_right_time_tile)
    end
  end
end
