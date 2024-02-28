module RucaptchaNoCookies
  module ViewHelpers
    SESSION_ID_KEY = '_rucaptcha_session_id'

    def rucaptcha_image_tag(opts = {})
      session_id = SecureRandom.hex(16)
      rucaptcha_session_tag(session_id)

      src = "#{ru_captcha.root_path}?#{SESSION_ID_KEY}=#{session_id}&t=#{Time.now.strftime('%s%L')}"
      opts[:class] = opts[:class] || "rucaptcha-image"
      opts[:src] = src
      opts[:onclick] = "this.src = '#{ru_captcha.root_path}?#{SESSION_ID_KEY}=#{session_id}&t=' + Date.now();"
      tag(:img, opts)
    end

    private

    def rucaptcha_session_tag(value)
      opts[:name] = SESSION_ID_KEY
      opts[:id] = "rucaptcha-session-id"
      opts[:type] = "hidden"
      opts[:value] = value
      tag(:input)
    end
  end
end
