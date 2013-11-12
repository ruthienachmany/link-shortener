ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

  ActiveAdmin::Dashboards.build do
    section "Recent Links" do
      table_for Link.order("created_at desc").limit(5) do
        column :long_link
        column :created_at
      end
      strong { link_to "View All Links", admin_links_path }
    end
  end
    # end
  end # content
end
