module ApplicationHelper

def calculate_it(amount)
  amount * 44
  end

  def add_to(product)
    html = ""

    html << "<p>This is how you add html to a page</p>"
    #or
    '<button>Add To Cart</button>'.html_safe
    html.html_safe
  end

end
