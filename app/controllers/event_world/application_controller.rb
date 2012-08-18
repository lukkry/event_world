module EventWorld
  class ApplicationController < ActionController::Base
    before_filter :set_faye_path

    def set_faye_path
      gon.faye_path = EwConfig.faye_path
    end
  end
end
