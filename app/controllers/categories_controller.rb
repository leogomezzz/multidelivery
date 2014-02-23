class CategoriesController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:category, {}).permit(:nome, :descricao)]
    end
end
