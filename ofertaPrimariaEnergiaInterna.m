function ofertaPrimaria = ofertaPrimariaEnergiaInterna(pais)
    switch pais
        case "Costa Rica"
            x = [43, 28, 25, 4, 0]
            explode = [1, 0, 1, 0, 0]
            labels = {"Carbón mineral y petróleo", "Leña, bagazo, cascarilla y otros residuos", "Hidroenergía","Geotermía", "Energía eólica, biogás y energía solar" }
            figure('Position', [10, 10, 900, 600])
            title('Oferta Primaria Costa Rica')
            pie(x, explode)
            legend(labels, 'Location', 'southoutside')
            saveas(gcf, 'fig/OfertaPrimariaCostaRica.png')
        case "Japon"
            x = [42.9, 27.5, 23.3, 2.6, 1.7, 0.5, 0.8, 0.1]
            explode = [0, 0, 0, 1, 1, 1, 1, 1]
            labels = {"Petroleo", "Carbón", "Gas natural", "Biocombustibles", "Hidroenergía","Geotermía", "Energía solar", "Energía eólica" }
            figure('Position', [10, 10, 900, 600])
            title('Oferta Primaria Japon')
            pie(x, explode)
            ax = gca
            ax.Children
            delete(ax.Children([1,3,5]))
            legend(labels, 'Location', 'southoutside')
            saveas(gcf, 'fig/OfertaPrimariaJapon.png')
        case "California"
            x = [0.42, 27.77, 21.83, 7.3, 8.79, 0.70, 2.09, 4.09, 2.37, 4.95, 3.45, 7.19, 0.61,8.37]
        
            labels = {'Carbón', 'Gas Natural', 'Gasolina (sin etanol)', 'Combustible destilado',...
             'Combustible para aviones', 'HGL', 'Combustible residual', 'Otro petróleo',...
             'Energía nuclear', 'Hidroeléctrica', 'Biomasa', 'Otras renovables',...
             'Importaciones netas', 'Flujo interstatal'}

            figure('Position', [10, 10, 900, 600])
            title('Oferta Primaria California -2017')
            pie(x)
            ax = gca
            ax.Children
            delete(ax.Children([1,3,5]))
            legend(labels, 'Location', 'southoutside')
            saveas(gcf, 'fig/OfertaPrimariaCalifornia.png')      
        otherwise
            fprintf('Select a country')
    end
end