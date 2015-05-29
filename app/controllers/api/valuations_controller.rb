module API

        class ValuationsController < ApplicationController

            def index
                @response = HTTParty.get("http://www.zillow.com/webservice/GetZestimate.htm?zws-id=X1-ZWz1a84jof1frf_8b748&zpid=48749425")
                render json: @response
            end

            def new
                @search = HTTParty.get("http://www.zillow.com/webservice/GetZestimate.htm?zws-id=X1-ZWz1a84jof1frf_8b748&zpid=48749425")
            end
        end

end
