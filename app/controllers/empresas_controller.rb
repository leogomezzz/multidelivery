class EmpresasController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:empresa, {}).permit(:nome, :cnpj)]
    end
end
