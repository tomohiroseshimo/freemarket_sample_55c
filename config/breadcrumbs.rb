crumb :root do
  link "メルカリ", root_path
end

crumb :mypage do
  link "マイページ",  mypages_path
  parent :root
end

crumb :mypage_exhibit do
  link "出品した商品-出品中",  mypage_exhibit_mypages_path
  parent :mypage
end

crumb :mypage_transaction do
  link "出品した商品-取引中",  mypage_transaction_mypages_path 
  parent :mypage
end

crumb :mypage_sold do
  link "出品した商品-売却済",   mypage_sold_mypages_path
  parent :mypage
end

crumb :mypage_buy_transaction do
  link "購入した商品-取引中", mypage_buy_transaction_mypages_path
  parent :mypage
end

crumb :mypage_buy_transaction_past do
  link "購入した商品-過去の取引", mypage_buy_transaction_past_mypages_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", logout_index_path
  parent :mypage
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).