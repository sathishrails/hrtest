module MandatesHelper
  def add_interview_link(name)
    link_to name, "#", :class => "add_interview"
  end 
end
