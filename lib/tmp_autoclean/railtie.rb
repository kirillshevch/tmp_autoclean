module TmpAutoclean
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      enable = config.try(:tmp_autoclean_enable)
      specific_options = config.try(:tmp_autoclean_options)
      
      if enable && specific_options
        specific_options.each do |option|
          Rake::Task["tmp:#{option}:clear"].invoke
        end
      elsif config.try(:tmp_autoclean_enable)
        Rake::Task['tmp:clear'].invoke
      end
    end
  end
end
