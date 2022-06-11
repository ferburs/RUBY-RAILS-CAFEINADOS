class TicketsController < InheritedResources::Base

  private

    def ticket_params
      #params.require(:ticket).permit(:funcion_id, :user_id)
      params.permit(:funcion_id, :user_id)
    end

end
