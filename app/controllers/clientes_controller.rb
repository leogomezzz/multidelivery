class ClientesController < InheritedResources::Base
def build_resource_params
        [params.fetch(:cliente, {}).permit(:nome, :endereco, :cpf, :telefone, :celular, :email)]
    end
end
