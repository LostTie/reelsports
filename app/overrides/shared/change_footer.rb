# rubocop:disable all
Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :replace => '#footer',
                     :name => "change_footer",
                     :text => %q{
<footer id="footer" class="sixteen columns" data-hook>
  <div id="footer-left" class="columns alpha eight" data-hook>
    <p>Designed by <%= link_to 'Lost Tie', 'http://losttie.com/' %></p>
  </div>
  <div id="footer-right" class="columns omega eight" data-hook>
    <p>Reel Sportswear Corpus Christi, TX</p>
  </div>
</footer>
                                })
