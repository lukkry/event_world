module EventWorld
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc "Copies faye.ru file"
    def install
      copy_file "faye.ru", "faye.ru"
    end
  end
end
