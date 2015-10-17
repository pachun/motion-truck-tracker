class TimeSelectionLayout < MotionKit::Layout
  include TimeSelectionStyles

  def layout
    root :background do
      add(UIImageView, :location_icon)
      add(UILabel, :current_location) { text("129 Kingston St.") }
      add(UILabel, :get_me_back_here_by)
      add(UIButton, :top_left_time_tile) do
        add(UILabel, :time_tile_return_time) { text("A S A P") }
        add(UILabel, :time_tile_time_range) { text("IN 8-37 MINUTES") }
      end
      add(UIButton, :top_right_time_tile) do
        add(UILabel, :time_tile_return_time) { text("1 : 3 0") }
        add(UILabel, :time_tile_time_range) { text("IN 37 MINUTES") }
      end
      add(UIButton, :bottom_left_time_tile) do
        add(UILabel, :time_tile_return_time) { text("2 : 0 0") }
        add(UILabel, :time_tile_time_range) { text("IN 1 HR. & 7 MIN.") }
      end
      add(UIButton, :bottom_right_time_tile) do
        add(UILabel, :time_tile_return_time) { text("2 : 3 0") }
        add(UILabel, :time_tile_time_range) { text("IN 1 HR. & 37 MIN.") }
      end
    end
  end
end
