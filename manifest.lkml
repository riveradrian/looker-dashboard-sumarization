project_name: "adrian-dashboard"

application: dashboard-summarization-project {
  label: "Adrian - Dashboard Summarization"
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
    core_api_methods: ["run_inline_query","all_lookml_models","dashboard","dashboard_dashboard_elements", "me", "all_dashboards", "run_look"]
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

# application: query-insights-demo {
#   label: "Query Insights"
#   # url: "https://localhost:3000/bundle.js"
#   file: "looker-query-insights.js"
#   mount_points: {
#     dashboard_vis: yes
#     dashboard_tile: yes
#     standalone: no
#   }
#   entitlements: {
#     core_api_methods: ["create_sql_query","run_sql_query","run_query","create_query"]
#     navigation: yes
#     use_embeds: yes
#     use_iframes: yes
#     new_window: yes
#     new_window_external_urls: ["https://developers.generativeai.google/*"]
#     local_storage: yes
#   }
# }
