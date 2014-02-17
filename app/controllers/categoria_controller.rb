class CategoriaController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:categoria, {}).permit(:nome, :descricao)]
    end
end
