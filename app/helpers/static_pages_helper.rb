module StaticPagesHelper

  def heading_detail(heading)
    base_heading = "Welcome to 2B"

    if heading != ''
      base_heading = base_heading + ' | ' + heading
    else
      base_heading
    end
  end

end
