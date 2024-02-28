module RucaptchaNoCookies
  module ControllerHelpers
    # override
    def rucaptcha_session_id
      params[:_rucaptcha_session_id]
    end

    private

    # override
    def generate_rucaptcha_session_id
      # do nothing, no need any more
    end
  end
end
