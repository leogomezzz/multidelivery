class ItemsController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:item, {}).permit(:quantidade, :produto_id, :pedido_id)]
    end
end
