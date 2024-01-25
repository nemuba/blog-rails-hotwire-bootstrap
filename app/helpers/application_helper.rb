module ApplicationHelper
  include Pagy::Frontend

  def render_modal(partial:, locals:, title:)
    render partial: 'shared/modal', locals: { partial: partial, locals: locals, title: title }
  end

  def render_modal_destroy(link:, title:)
    render partial: 'shared/modal_destroy', locals: { link: link, title: title }
  end

  def render_toast(message:, title:, type: 'bg-success')
    render partial: 'shared/toast', locals: { type: type, title: title, message: message }
  end
end
