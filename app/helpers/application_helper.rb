module ApplicationHelper
  def flash_class(level)
    case level
        when 'success'then "notification is-success"
        when 'alert' then "notification is-danger"
        when 'deleted' then "notification is-info"
    end
  end
end
