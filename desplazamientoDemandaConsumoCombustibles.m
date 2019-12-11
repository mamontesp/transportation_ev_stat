function desplazamientoDemanda = desplazamientoDemandaConsumoCombustibles(pais, lya)
    if (lya== 'kBoE')
        divider = 1
        label_y_axis = 'kBoE'
    end
    if (lya == 'mBoE')
        divider = 1000
        label_y_axis = 'Millones de BoE'
    end
    fig = figure('Position', [10, 10, 900, 600])
    labels= {'Consumo Vehiculos Convencionales','Consumo Vehiculos Eléctricos'}
    ax=gca
    switch pais
        case "CostaRica-Politicas"
            anos= [2018, 2030]
            
            combustibles_convencionales = [13893.7398927, 7997.07322648]
            combustible_electricidad = [0, 1574.52033252 ]

        case "CostaRica-Base"
            anos= [2018, 2030]
            combustibles_convencionales = [13893.7398927, 13699.227]
            combustible_electricidad = [0, 308.931 ]
            
        case "USA"
            anos= [2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025,2026,2027, 2028, 2029,2030]
            
            combustibles_convencionales = [3997678.78728558, 3984562.26602454, 3916946.21397354, 3770267.80838966, 3613611.67701111, 3495331.67319213, 3380118.64466847, 3267378.89964244,3179052.32047918,3101590.74434791, 3039171.64815033, 2987149.1116569,2895015.16274876]
            combustible_electricidad = [3978.84107876458, 4575.9734715569, 6014.97084902897, 8347.02782520581, 11676.6412178071, 16008.440518671, 21453.6416134383, 28115.2461921142,36351.0581316794,46307.527893789, 58182.4446628183, 72015.7986017284,87951.3381341365]
            
        case "Chile"
            anos= [2020, 2021, 2022, 2023, 2024, 2025,2026,2027, 2028, 2029,2030]
            
            combustibles_convencionales = [62652.6938992719, 64242.9656886942, 65671.4610878859, 66945.3165042825, 68068.5543952187, 69043.3608151544,69870.7161392278,70550.7513552771, 71082.9682609276, 71466.3846648679,71699.6349617085]
            combustible_electricidad = [520.080262497347, 1060.92594250403, 1763.54801274119, 2620.81006577348, 3628.6896442662, 4785.00069375942,6088.76283911488,7539.8450924945, 9138.74565627287, 10886.4467217615,12784.3138943499]

        case "Canada"
            anos= [2020, 2021, 2022, 2023, 2024, 2025,2026,2027, 2028, 2029,2030]
            
            combustibles_convencionales = [416101.62383666, 412650.86151725, 410182.82755738, 407911.90482614, 404641.85912865, 400853.11945835, 396624.12820567, 391977.76916861, 387456.43739648, 382453.22187518, 377144.9326354 ]
            combustible_electricidad = [621.96528407, 712.81396213, 831.69529274, 993.74527372, 1232.27617673, 1627.38129477, 2169.28597698, 2892.15246466, 3897.50309308, 5125.51307604, 6621.32887788 ]
            
        case "Holanda"
            anos= [2020, 2021, 2022, 2023, 2024, 2025,2026,2027, 2028, 2029,2030]
            
            combustibles_convencionales = [880.087380290736, 1388.3582705649, 2117.76477216293, 3099.36555220315, 4332.57039108238, 5784.96093059646, 7405.90507278687, 9142.57597717069, 10949.1288825707, 12788.0914021808, 14627.0539217909 ]
            combustible_electricidad = [177.68056410411, 280.29521410827, 427.55486305623, 625.72993547343, 874.70127211002, 1167.92394083535, 1495.17584333451, 1845.79178541537, 2210.51618267847, 2581.78374675, 2953.05131082153 ]
        otherwise
           close(gcf)
           return ;
    end
    
    combustible_total = [transpose(combustibles_convencionales), transpose(combustible_electricidad)]        
    plot_total_consumo_combustible= area(anos, combustible_total)
    legend(plot_total_consumo_combustible, labels, 'Location', 'southoutside', 'NumColumns', 2)
    grid on
    title('Proyección Desplazamiento Consumo de Combustibles '+pais+' 2018 - 2030')
    xlabel('año')
    ylabel(label_y_axis)
    if(lya=='kBoE')
        ax.YAxis.Exponent = 3
    else
        set (ax, 'YTickMode', 'manual')
        set (ax, 'YTickLabels', get(ax, 'YTick')/divider)
    end
    if (pais=="CostaRica-Base" || pais=="CostaRica-Politicas")
        saveas(gcf, 'fig/CostaRica/ProyeccionDesplazamientoCombustibles-'+pais+'.png')
    else
        saveas(gcf, 'fig/'+pais+'/ProyeccionDesplazamientoCombustibles-'+pais+'.png')
    end
    
    
    close(gcf)
end
    