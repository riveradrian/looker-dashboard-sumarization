project_name: "adrian-dashboard"

application: dinamyc-hierarchy-filters-extension {
  label: "Dinamyc Hierarchy Filters"
  file: "bundle.js"
  # url: "http://localhost:8080/bundle.js"

  mount_points: {
    dashboard_vis: yes
    dashboard_tile: yes
    standalone: yes
  }
  entitlements: {
    local_storage: yes
    use_form_submit: yes
    core_api_methods: ["run_inline_query", "all_lookml_models", "dashboard", "dashboard_dashboard_elements", "me", "all_dashboards", "run_look", "update_dashboard", "run_tile"]
    external_api_urls: [
      "https://websocket-service-p7edbxne6a-uc.a.run.app",
      "https://*.googleapis.com","https://slack.com/api/*","https://slack.com/*", "https://jsonplaceholder.typicode.com/*"
    ]
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth",
      "https://www.googleapis.com/auth/chat.spaces",
      "https://www.googleapis.com/auth/drive.metadata.readonly",
      "https://www.googleapis.com/auth/spreadsheets.readonly",
      "https://www.googleapis.com/auth/chat.messages",
      "https://www.googleapis.com/auth/userinfo.profile",
      "https://www.googleapis.com/auth/chat.spaces.readonly",
      "https://www.googleapis.com/auth/chat.bot",
      "https://www.googleapis.com/auth/chat.messages.create",
      "https://slack.com/oauth/v2/authorize"
    ]
    scoped_user_attributes: []
    global_user_attributes: []
  }
}
