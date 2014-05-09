Deface::Override.new(:virtual_path  => "spree/shared/_nav_bar",
                     :replace => '#search-bar',
                     :name          => "replace_search",
                     :text => %q{
    <li id="home-link" data-hook><%= link_to 'Shop', spree.root_path %></li>
    <li id="about-link" data-hook><%= link_to 'About', '/about' %></li>
    <li id="about-link" data-hook><%= link_to 'Contact', '/contact-us' %></li>
    <li id="link-to-cart" data-hook><%= link_to_cart %></li>
                                })
