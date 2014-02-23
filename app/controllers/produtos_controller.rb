class ProdutosController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:produto, {}).permit(:nome, :peso, :empresa_id, :category_id)]
    end
end
