function t = build_target(net_type, base, p)
    switch(net_type)
        case 'filter'
            t = repmat(base, 1, size(p, 2) / 10);
        case 'classifier'
            t = repmat(base,1,size(p, 2) / 10);
    end
end