module RucaptchaNoCookies
  module ViewHelpers
    SESSION_ID_KEY = '_rucaptcha_session_id'

    # override
    def rucaptcha_image_tag(opts = {})
      session_id = SecureRandom.hex(16)

      opts[:class] = opts[:class] || "rucaptcha-image"
      opts[:src] = "#{ru_captcha.root_path}?#{SESSION_ID_KEY}=#{session_id}&t=#{Time.now.strftime('%s%L')}"
      opts[:onclick] = "this.src = '#{ru_captcha.root_path}?#{SESSION_ID_KEY}=#{session_id}&t=' + Date.now();"

      tag('img', opts) + rucaptcha_session_tag(session_id)
    end

    private

    def rucaptcha_session_tag(value)
      opts = {}
      opts[:name]  = SESSION_ID_KEY
      opts[:id]    = "rucaptcha-session-id"
      opts[:type]  = "hidden"
      opts[:value] = value
      tag('input', opts)
    end
  end
end
