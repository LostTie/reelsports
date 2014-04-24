Deface::Override.new(:virtual_path  => "spree/shared/_nav_bar",
                     :replace => '#search-bar',
                     :name          => "replace_search",
                     :text => %q{
    <li id="home-link" data-hook><%= link_to Spree.t(:store), spree.root_path %></li>
    <li id="link-to-cart" data-hook><%= link_to_cart %></li>
                                })
