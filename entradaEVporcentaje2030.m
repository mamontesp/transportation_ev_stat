%Porcentaje por tipo de vehiculo
function entradaEVporcentaje2030 = entradaEVporcentaje2030(pais)
    switch pais
        case "USA"
            years= [2018, 2025, 2030]
            labels_per_year = ['2018', '2025', '2030']
            labels_per_type = {"Carros y SUV", "Buses", "Carga liviana", "Carga pesada", "Motos"}
            legend_per_ev_type = ["PHEV", "BEV"]
            
            automoviles_phev = [0.148501423312987, 0.328509471429666, 0.817432678802449]
            
            automoviles_bev = [0.191029972195669, 3.38139657500356, 11.250987503385]

            group_automoviles = [automoviles_phev; automoviles_bev]
            
            
            buses_phev = [0.00180588719224672, 0.0502071543202559, 0.201601778352344]
            
            buses_bev = [0.0289945221421835, 0.186782568155714, 1.52275360833681]

            group_buses = [buses_phev; buses_bev]
            

            
            carga_liviana_phev = [0.0164010373819501, 0.278709507877116, 0.94042978916158]
            
            carga_liviana_bev = [0.0392710098269004, 1.35383417191382, 5.77303524483724]
            
            group_carga_liviana = [carga_liviana_phev; carga_liviana_bev]
            
            
            carga_pesada_phev = [0.00153241253483308, 0.0444299204553939, 0.190099065056124]
            
            carga_pesada_bev = [0.00321555417145301, 0.0747981781347887, 0.31846455726151]

            
            group_carga_pesada = [carga_pesada_phev; carga_pesada_bev]
            
            
            motos_phev = [0,0,0]
            motos_bev = [0.0504287477642279, 1.2544741668025, 4.57960009160551]
            group_motos = [motos_phev; motos_bev]
            
            %data_2018 = transpose([group_automoviles(:, 1), group_buses(:, 1), group_carga_liviana(:,1), group_carga_pesada(:,1), group_motos(:,1)])
            %data_2025 = transpose([group_automoviles(:, 2), group_buses(:, 2), group_carga_liviana(:,2), group_carga_pesada(:,2), group_motos(:,2)])
            %data_2030 = transpose([group_automoviles(:, 3), group_buses(:, 3), group_carga_liviana(:,3), group_carga_pesada(:,3), group_motos(:,3)])
            
            stackData(1,:,:)= transpose(group_automoviles);
            stackData(2,:,:)= transpose(group_buses);
            stackData(3,:,:)= transpose(group_carga_liviana);
            stackData(4,:,:)= transpose(group_carga_pesada);
            stackData(5,:,:)= transpose(group_motos);
            
            title = 'Crecimiento de la participación del parque eléctrico por tipo de vehiculo (2018-2030) - USA'
            namefig = 'fig/CrecimientoParque2030-USA.png'
            plotBarStackGroups(stackData, labels_per_type, labels_per_year, legend_per_ev_type, title, namefig)

            
        case "Japon"
            years= ['2017', '2030-1', '2030-2' ]
            labels_per_year = ['2017', 'Expectativa baja - 2030', 'Expectativa alta- 2030']
            labels_per_type = {"Carros y SUV", "Buses", "Carga liviana", "Carga pesada", "Motos"}
            legend_per_ev_type = ["Convencionales", "PHEV", "BEV", ", Hibridos", "Celda de combustible"]
            
            conventional = 
            automoviles_phev = [0.148501423312987, 0.328509471429666, 0.817432678802449]
            
            automoviles_bev = [0.191029972195669, 3.38139657500356, 11.250987503385]

            group_automoviles = [automoviles_phev; automoviles_bev]
            
            
            buses_phev = [0.00180588719224672, 0.0502071543202559, 0.201601778352344]
            
            buses_bev = [0.0289945221421835, 0.186782568155714, 1.52275360833681]

            group_buses = [buses_phev; buses_bev]
            

            
            carga_liviana_phev = [0.0164010373819501, 0.278709507877116, 0.94042978916158]
            
            carga_liviana_bev = [0.0392710098269004, 1.35383417191382, 5.77303524483724]
            
            group_carga_liviana = [carga_liviana_phev; carga_liviana_bev]
            
            
            carga_pesada_phev = [0.00153241253483308, 0.0444299204553939, 0.190099065056124]
            
            carga_pesada_bev = [0.00321555417145301, 0.0747981781347887, 0.31846455726151]

            
            group_carga_pesada = [carga_pesada_phev; carga_pesada_bev]
            
            
            motos_phev = [0,0,0]
            motos_bev = [0.0504287477642279, 1.2544741668025, 4.57960009160551]
            group_motos = [motos_phev; motos_bev]
            
            %data_2018 = transpose([group_automoviles(:, 1), group_buses(:, 1), group_carga_liviana(:,1), group_carga_pesada(:,1), group_motos(:,1)])
            %data_2025 = transpose([group_automoviles(:, 2), group_buses(:, 2), group_carga_liviana(:,2), group_carga_pesada(:,2), group_motos(:,2)])
            %data_2030 = transpose([group_automoviles(:, 3), group_buses(:, 3), group_carga_liviana(:,3), group_carga_pesada(:,3), group_motos(:,3)])
            
            stackData(1,:,:)= transpose(group_automoviles);
            stackData(2,:,:)= transpose(group_buses);
            stackData(3,:,:)= transpose(group_carga_liviana);
            stackData(4,:,:)= transpose(group_carga_pesada);
            stackData(5,:,:)= transpose(group_motos);
            
            title = 'Crecimiento de la participación del parque eléctrico por tipo de vehiculo (2018-2030) - USA'
            namefig = 'fig/CrecimientoParque2030-USA.png'
            plotBarStackGroups(stackData, labels_per_type, labels_per_year, legend_per_ev_type, title, namefig)

    end