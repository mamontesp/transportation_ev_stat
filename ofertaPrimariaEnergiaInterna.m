function ofertaPrimaria = ofertaPrimariaEnergiaInterna(pais)
    figure('Position', [10, 10, 900, 600])
    switch pais
        case "CostaRica"
            x = [43, 28, 25, 4, 0]
            explode = [1, 0, 1, 0, 0]
            labels = {"Carbón mineral y petróleo", "Leña, bagazo, cascarilla y otros residuos", "Hidroenergía","Geotermía", "Energía eólica, biogás y energía solar" }
            pie(x, explode)
            title('Oferta Primaria Costa Rica - 2015')
        case "Japon"
            x = [42.9, 27.5, 23.3, 2.6, 1.7, 0.5, 0.8, 0.1]
            explode = [0, 0, 0, 1, 1, 1, 1, 1]
            labels = {"Petroleo", "Carbón", "Gas natural", "Biocombustibles", "Hidroenergía","Geotermía", "Energía solar", "Energía eólica" }
            pie(x, explode)
            title('Oferta Primaria Japon')
            ax = gca
            ax.Children
            delete(ax.Children([1,3,5]))
        case "California"
            x = [0.42, 27.77, 21.83, 7.3, 8.79, 0.70, 2.09, 4.09, 2.37, 4.95, 3.45, 7.19, 0.61,8.37]
        
            labels = {'Carbón', 'Gas Natural', 'Gasolina (sin etanol)', 'Combustible destilado',...
             'Combustible para aviones', 'HGL', 'Combustible residual', 'Otro petróleo',...
             'Energía nuclear', 'Hidroeléctrica', 'Biomasa', 'Otras renovables',...
             'Importaciones netas', 'Flujo interstatal'}
            pie(x)
            title('Oferta Primaria California -2017')
            ax = gca
            ax.Children
            delete(ax.Children([1,3,5]))
            
        case "USA"
            x = [92.2, 2.7, 5.0, 0.09]
            labels = {'Petroleo', 'Gas Natural', 'Biomasa', 'Electricidad'}
            figure('Position', [10, 10, 900, 600])
            pie(x)
            title('Uso de energía en transporte por tipo de combustible en US - 2017')
        
        case "Brasil"
            x = [43.5700580296599, 25.6526585732041, 18.7032871676903, 4.33549922649957, 4.03092636909131, 2.31604583086541, 1.16120888368311, 0.230315919306271]
            labels = {'Diesel','Gasolina','Etanol','Biodiesel','Queroseno','Gas Natural','Fueloil','Electricidad'}
            pie(x)
            title('Oferta Primaria Brasil -2018')
            
        case "Chile"
            x = [57, 41, 1, 1]
            labels = {'Diesel','Gasolina','Gas','Electricidad'}
            pie(x)
            title('Oferta Primaria Chile -2012')
        otherwise
            fprintf('Select a country')
            close(gcf)
            return ;
    end
    legend(labels, 'Location', 'southoutside','NumColumns', 2)
    saveas(gcf, 'fig/'+pais+'/OfertaPrimaria'+pais+'.png')
    close(gcf)
end