class Browser
  module Platform
    # Detect if browser is Android.
    def android?
      !!(ua =~ /Android/ && !opera?)
    end

    # Detect if browser is ios?.
    def ios?
      ipod? || ipad? || iphone?
    end

    # Detect if is iOS5.
    def ios4?
      ios? && !!(ua =~ /OS 4/)
    end

    # Detect if is iOS5.
    def ios5?
      ios? && !!(ua =~ /OS 5/)
    end

    # Detect if is iOS6.
    def ios6?
      ios? && !!(ua =~ /OS 6/)
    end

    # Detect if is iOS7.
    def ios7?
      ios? && !!(ua =~ /OS 7/)
    end

    # Detect if current platform is Macintosh.
    def mac?
      !!(ua =~ /Mac OS X/)
    end

    # Detect if current platform is Windows.
    def windows?
      !!(ua =~ /Windows/)
    end

    def windows8?
      windows? && !!(ua =~ /Windows NT 6.[2-3]/)
    end

    def windows_rt?
      windows8? && !!(ua =~ /ARM/)
    end

    # Detect if current platform is Linux flavor.
    def linux?
      !!(ua =~ /Linux/)
    end

    # Detect if current platform is Windows Mobile.
    def windows_mobile?
      !!(ua =~ /Windows CE/)
    end

    # Detect if current platform is Windows Phone.
    def windows_phone?
      !!(ua =~ /Windows Phone/)
    end

    # Return the platform.
    # Passing back pretty names from OS hash
    
    def platform
      case
      when android?       then OS[:android]
      when ios?           then OS[:ios]
      when blackberry?    then OS[:blackberry]
      when linux?         then OS[:linux]
      when mac?           then OS[:mac]
      when windows?       then OS[:windows]

      else
        OS[:other]
      end
    end

  end
end
