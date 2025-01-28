%% Plot ORE figure

clear; clc; close all;

ORE = [12,0,0,0;10,42,0,0;10,44,18,52;15,71,10,34;18,62,19,20];
X = ["2019/20" "2020/21" "2021/22" "2022/23" "2023/24"];

%h = figure(1);
figure('Position',[899 743 1101 293]);
bar(X,ORE)
legend({'Other Courses','Bachelor','Master','Ph.D.'}, ...
    'Location','northwest','FontSize',14)

% Put numbers
nModel = size(ORE,1);
nCat = size(ORE,2);
xPosAmpl = 0.3682626-0.3298725*exp(-0.407004*(nCat-1)); % position amplitude
xPosInc = 2*xPosAmpl/(nCat-1);
modelNames = [];
for idxModel=1:nCat
    bar_xPos = 1:nModel;
    if nModel~=1
        bar_xPos = bar_xPos-xPosAmpl+(idxModel-1)*xPosInc;
    end
    text(bar_xPos,ORE(:,idxModel)',num2str(ORE(:,idxModel),...
        '%d'),'vert','bottom','horiz','center','FontSize',12); 
end

% Save Figure to File
set(gca,'Color','white')
export_fig('ore.png')