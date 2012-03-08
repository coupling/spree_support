Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "downloads_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:downloads, :url => admin_downloads_path) %>",
                     :disabled => false)
