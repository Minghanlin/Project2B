module StaticPagesHelper

  def heading_detail(heading)
    if logged_in?
    base_heading = "Hello, logged in Redmart user!"
    else
    base_heading = "Welcome to Redmart"
    end

    if heading != ''
      base_heading = base_heading + ' | ' + heading
    else
      base_heading
    end
  end

end
