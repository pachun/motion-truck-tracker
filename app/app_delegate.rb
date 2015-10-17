class AppDelegate < PM::Delegate
  def on_load(_app, _options)
    customize_navigation_bar
    open TimeSelectionScreen.new(nav_bar: true)
  end

  private

  def customize_navigation_bar
    UINavigationBar.appearance.tap do |nav_bar|
      nav_bar.barTintColor = Colors::NavigationBarBackground
      nav_bar.setTitleTextAttributes(
        UITextAttributeTextColor => Colors::NavigationBarText,
        UITextAttributeFont => Fonts::NavigationBar,
      )
    end
  end
end
