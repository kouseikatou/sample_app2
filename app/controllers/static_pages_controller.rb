class StaticPagesController < ApplicationController
  def home
    # render ....
    # => app/views/static_pages/home.html.erb
  end

   # => app/views/コントローラー名/アクション名.html.erb
  def help
     # => app/views/static_pages/help.html.erb
  end

  def about
  end

  # => app/views/static_pages/contact.html.erb
  def contact
  end
end
