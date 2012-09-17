module ApplicationHelper
  def copy_icon
    "<a><i class='icon-edit icon-white'></i>copy</a>".html_safe
  end

  def space(height = nil, width = nil)
    height ||= 1
    width  ||= 1
    image_tag("/assets/images/space.gif", :alt => "", :height => height, :width => width, :border => "0")
  end
  # see http://twitter.github.com/bootstrap/base-css.html#icons
  def icon(type, content = '', &block)
    #block_content = block_given? ? capture(&block) : ''
    block_content = block_given? ? capture(&block)  : content
    ("<i class='icon-#{type} '></i>" + block_content).html_safe
  end

  def button(type, content = '', &block)
    block_content = block_given? ? capture(&block)  : content
    "<button class='btn-mini btn btn-#{type}' type='button'>#{block_content}</button>".html_safe
  end

  def icon_link_to(type, url, opt={}, &block)
    link_to icon(type, &block), url, opt
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end
end
