# Compatibility shim for older plugins that still call Dir.exists?
class << Dir
  unless method_defined?(:exists?)
    def exists?(*args)
      exist?(*args)
    end
  end
end
