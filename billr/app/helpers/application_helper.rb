module ApplicationHelper
  def intellinav
    if @auth.present?
      link_to(@auth.email, login_path, :method => :delete, :confirm => 'Are you sure?')
    else
      link_to('Login', login_path)
    end
  end
end
