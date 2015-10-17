module TimeSelectionStyles
  TimeTileMargin = 10
  GutterWidth = 20

  def background_style
    background_color(Colors::Background)
  end

  def location_icon_style
    image("location-icon".uiimage)
    constraints do
      top(80)
      left(GutterWidth * 2)
      height(20)
      width(:scale)
    end
  end

  def current_location_style
    text "129 Kingston St."
    color(Colors::BackgroundText)
    font()
    constraints do
      left.equals(:location_icon, :right).plus(30)
      bottom.equals(:location_icon)
    end
  end

  def top_left_time_tile_style
    background_color(Colors::TimeTile)
    constraints do
      top.equals(:superview).plus(200)
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
