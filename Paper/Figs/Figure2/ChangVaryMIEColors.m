close all; clear all;

openfig('VaryMIE_BigChange.fig');
h=gca;

for i = 1:length(h.Children)
    ht = h.Children(i);
    if endsWith(class(ht),'Patch')
        col = ht.FaceColor;
        col(1:2) = col(2:-1:1);
        set(ht,'FaceColor',col);
    elseif endsWith(class(ht),'Stair')
        col = ht.Color;
        col(1:2) = col(2:-1:1);
        set(ht,'Color',col);
    end
end

savefig('VaryMIE_BigChange.fig')
print('VaryMIE_BigChange.jpg','-djpeg')