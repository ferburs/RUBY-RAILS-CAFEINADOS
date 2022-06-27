class TicketsController < InheritedResources::Base


  def index
      @tickets = Ticket.all
    end

    def create
      cantidad = ticket_params["cantidad"]
      funcion_id = ticket_params["funcion_id"]
      user_id = ticket_params["user_id"]
      funcion = Funcion.find(funcion_id)
      if funcion.capacidad_permitida? cantidad
      cantidad.to_i.times do
        @ticket = Ticket.new(funcion_id: funcion_id,user_id: user_id)
        @ticket.save
      end
      redirect_to(@ticket,
                  :notice => 'La compra ha sido realizada con éxito.')
      else redirect_to(funcion,:alert => "La cantidad de entradas seleccionada no está disponiible")
      end

    end

    private
  def ticket_params
    params.require(:ticket).permit(:funcion_id, :user_id,:cantidad)
    #params.permit(:funcion_id, :user_id, :cantidad)
  end

end
