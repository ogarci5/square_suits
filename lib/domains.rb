module Subdomain
	class Sequence
		def self.matches?(request)
			request.subdomain == "sequence" && request.subdomain != "www" && request.subdomain != ""
		end
	end
	def self.matches?(request)
		request.subdomain.present? && request.subdomain != "www" && request.subdomain != ""
	end
end

class RootDomain
	@subdomains = ["www"]
	def self.matches?(request)
		@subdomains.include?(request.subdomain) || request.subdomain.blank?
	end
end
