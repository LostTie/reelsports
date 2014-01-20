Deface::Override.new(:virtual_path  => "spree/layouts/spree_application",
                     :replace => '#content',
                     :name          => "expand_content",
                     :text => %q{<div id="content" class="columns <%= "sixteen" %>" data-hook>
                                    <%= flash_messages %>
                                    <%= yield %>
                                  </div>
                                })
