module ApplicationHelper
  def flash_class(level)
    case level
        when 'success'then "notification is-success"
        when 'deleted' then "notification is-danger"
        when 'gucci' then "notification is-info"
    end
  end
end
