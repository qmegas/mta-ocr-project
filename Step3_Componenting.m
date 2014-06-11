function [ frames ] = Step3_Componenting( image )
    [B,L] = bwboundaries(image, 'noholes');
    
    frames = cell(length(B), 1);
    
    for k = 1:length(B)
        min_x = min(B{k}(:,2)) - 1;
        max_x = max(B{k}(:,2)) + 2;
        min_y = min(B{k}(:,1)) - 1;
        max_y = max(B{k}(:,1)) + 2;
        frames{k} = [min_x, min_y, max_x-min_x, max_y-min_y]; %x, y, width, height
    end
end

