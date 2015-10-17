class TimeSelectionLayout < MotionKit::Layout
  include TimeSelectionStyles

  def layout
    root :background do
      add UIImageView, :location_icon
      add UILabel, :current_location
      add UIButton, :top_left_time_tile
      add UIButton, :top_right_time_tile
      add UIButton, :bottom_left_time_tile
      add UIButton, :bottom_right_time_tile
    end
  end
end
