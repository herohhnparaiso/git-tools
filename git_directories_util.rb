module GitDir
  def self.list path=nil
    under_dir = if path.nil? || path.empty? || path[0] != "/"
		  #relative
		  "#{Dir.pwd}/#{path}"
		else
		  #absolute
		  path
		end

    unless Dir.exists? under_dir
      raise SystemCallError.new "Directory doesn't exist: '#{under_dir}'"
    end
    under_dir += "/" unless under_dir[-1] == "/"
    Dir["#{under_dir}**/.git"].map{|d| d.gsub(/\/\.git/, "") }
  end 
end
