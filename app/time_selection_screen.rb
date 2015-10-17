class TimeSelectionScreen < PM::Screen
  title "Let's Eat"

  def on_load
    @layout = TimeSelectionLayout.new(root: view).build
  end
end
