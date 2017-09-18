module ApplicationHelper
  def sortable(column, title)
    direction = sort_direction == "asc" ? "desc" : "asc"
    title = direction == "asc" ? "#{title} <i class='fa fa-arrow-down'></i>" : "#{title} <i class='fa fa-arrow-up'></i>"
    link_to title.html_safe, request.params.merge(sort: column, direction: direction, page: nil), class: 'sortable btn btn-primary', remote: true
  end
end
