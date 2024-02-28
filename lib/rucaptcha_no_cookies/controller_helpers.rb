module RucaptchaNoCookies
  module ControllerHelpers
    def rucaptcha_session_id
      params[:_rucaptcha_session_id]
    end

    # Generate a new Captcha
    def generate_rucaptcha
      res = RuCaptcha.generate
      session_val = {
        code: res[0],
        time: Time.now.to_i
      }
      RuCaptcha.cache.write(rucaptcha_sesion_key_key, session_val, expires_in: RuCaptcha.config.expires_in)
      res[1]
    end
  end
end
