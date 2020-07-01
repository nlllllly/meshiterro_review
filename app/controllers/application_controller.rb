class ApplicationController < ActionController::Base
    # 登録・ログイン認証をする前（before_actionで）に、「configure_permitted_parameters」が実行される。
    before_action :configure_permitted_parameters, if: :devise_controller?

    # protected　は他の呼び出されたコントローラ（deviseのコントローラ）から操作できる。/ private　は他のコントローラからは参照できないから今回は使ってない。
    protected
    def configure_permitted_parameters
        # そもそも、「name」のカラムは、deviseのデフォルトでは存在しないため、カラムを追加する際には、以下のような書き方で追記が必要。
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        # sign_upの時に、:nameの操作を許可（permit）している。
    end
    
end
