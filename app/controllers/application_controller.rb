class ApplicationController < ActionController::Base
  before_action :basic_auth

  def after_sign_out_path_for(resource)
    items_login_index_path # ログアウト後に遷移するpathを設定
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '1234'
    end
  end
end
