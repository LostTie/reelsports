# rubocop:disable all
Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :replace => "[data-hook='products_list_item']",
                     :name => "change_products",
                     :text => %q{
    <li id="product_<%= product.id %>" class="columns three <%= cycle("", "omega", :name => "classes") %>" data-hook="products_list_item" itemscope itemtype="http://schema.org/Product">
      <div class="product-image">
        <%= link_to small_image(product, :itemprop => "image"), product, :itemprop => 'url' %>
      </div>
      <%= link_to truncate(product.name, :length => 50), product, :class => 'info', :itemprop => "name", :title => product.name %>
      <span class="price selling" itemprop="price"><%= display_price(product) %></span>
    </li>
                                })
