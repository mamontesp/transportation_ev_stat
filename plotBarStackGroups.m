function [] = plotBarStackGroups(stackData, groupLabels, barLabels, legends, titleBar, namefig)
    %% Plot a set of stacked bars, but group them according to labels provided.
    %%
    %% Params: 
    %%      stackData is a 3D matrix (i.e., stackData(i, j, k) => (Group, Stack, StackElement)) 
    %%      groupLabels is a CELL type (i.e., { 'a', 1 , 20, 'because' };)
    %%
    %% Copyright 2011 Evan Bollig (bollig at scs DOT fsu ANOTHERDOT edu
    %%
    %% 
    NumGroupsPerAxis = size(stackData, 1);
    NumStacksPerGroup = size(stackData, 2);
    % Count off the number of bins
    groupBins = 1:NumGroupsPerAxis;
    MaxGroupWidth = 0.65; % Fraction of 1. If 1, then we have all bars in groups touching
    groupOffset = MaxGroupWidth/NumStacksPerGroup;
    figure('Position', [10, 10, 900, 600])
        hold on; 
    for i=1:NumStacksPerGroup
        Y = squeeze(stackData(:,i,:));

        % Center the bars:

        internalPosCount = i - ((NumStacksPerGroup+1) / 2);

        % Offset the group draw positions:
        groupDrawPos = (internalPosCount)* groupOffset + groupBins;

        h(i,:) = bar(Y, 'stacked');
        set(h(i,:),'BarWidth',groupOffset);
        set(h(i,:),'XData',groupDrawPos);
    end
    l = legend(legends, 'Location','eastoutside');
    
    text_2018 = text(0.75,0.8,"2018")   
    set(text_2018,'Rotation',90);
    
    text_2025 = text(1,4,"2025")   
    set(text_2025,'Rotation',90);
    
    text_2030 = text(1.2,12.2,"2030")   
    set(text_2030,'Rotation',90);
    
    hold off;
    colors = jet(size(h,2)); %or define your own color order; 1 for each m segments
    colors = repelem(colors,size(h,1),1); 
    colors = mat2cell(colors,ones(size(colors,1),1),3);
    set(h,{'FaceColor'},colors)
    
    set(gca,'XTickMode','manual');
    set(gca,'XTick',1:NumGroupsPerAxis);
    set(gca,'XTickLabelMode','manual');
    set(gca,'XTickLabel',groupLabels);
    set(gca,'XTickLabelRotation',45);
    title(titleBar)
    ylabel('Porcentaje de parque vehicular según tipo de carro')
    xlabel('Tipo de vehiculo')
    grid on
    saveas(gcf, namefig)
     
end 
