#Work Repository

class WorkRepo

	def initialize (db)
		@db = db["works"]
	end

	def find (args = {})
		puts "*********** QUERY **************\n"
		puts args
		results = @db.find(args).to_a
		puts "\n*********** RESULTS ************\n"
		puts results
		results
	end
end