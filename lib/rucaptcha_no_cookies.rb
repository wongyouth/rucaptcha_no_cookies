require "rails"
require "action_controller"
require "active_support/all"
require "rucaptcha"

require "rucaptcha_no_cookies/version"
require "rucaptcha_no_cookies/controller_helpers"
require "rucaptcha_no_cookies/view_helpers"

ActiveSupport.on_load(:action_controller) do
  ActionController::Base.include RucaptchaNoCookies::ControllerHelpers
end

ActiveSupport.on_load(:action_view) do
  include RucaptchaNoCookies::ViewHelpers
end
