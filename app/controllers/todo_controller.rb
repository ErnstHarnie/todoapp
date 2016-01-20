class TodoController < ApplicationController
  def index
  end
  
  def new
  
body = Net::HTTP.get(URI("localhost:3000?startdate=#{startdate}&enddate=#{enddate}")).split("}")



data = body.lines.map { |line| JSON.parse(line) }
  end
  
  def create

end


end
