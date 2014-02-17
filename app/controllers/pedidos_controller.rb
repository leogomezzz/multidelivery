class PedidosController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:pedido, {}).permit(:data, :hora, :cliente_id)]
    end

end
