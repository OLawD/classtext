class Page < Mustache
	attr_accessor :params, :posts, :raw, :html
	def initialize (posts, raw)
		if (defined?(posts)).nil? # if the constructor was passed posts
			@posts = posts # make them available to the page
		end
		@raw = raw
		p = raw.split "---" # separate the front matter
		p.each do |item|
			item.strip! # remove unnecessary whitespace
		end
		p.shift # remove empty first element in array

		@params, @html = p[0],p[1]
	end
end