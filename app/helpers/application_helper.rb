module ApplicationHelper
  def render_modal(partial:, locals:, title:)
    render partial: 'shared/modal', locals: { partial: partial, locals: locals, title: title }
  end

  def render_modal_destroy(link:, title:)
    render partial: 'shared/modal_destroy', locals: { link: link, title: title }
  end
end
