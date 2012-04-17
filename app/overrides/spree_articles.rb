Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "articles_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:articles, :url => admin_articles_path) %>",
                     :disabled => false)
