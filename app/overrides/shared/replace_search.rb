Deface::Override.new(:virtual_path  => "spree/shared/_nav_bar",
                     :replace => '#search-bar',
                     :name          => "replace_search",
                     :text => %q{
    <li id="home-link" data-hook><%= link_to Spree.t(:shop), spree.root_path %></li>
    <li id="about-link" data-hook><%= link_to Spree.t(:about), '/about' %></li>
    <li id="about-link" data-hook><%= link_to Spree.t(:contact), '/contact-us' %></li>
    <li id="link-to-cart" data-hook><%= link_to_cart %></li>
                                })
