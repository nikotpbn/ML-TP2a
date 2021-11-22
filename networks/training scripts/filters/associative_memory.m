function p2 = associative_memory(p, t)
    wp = t * pinv(p);
    p2 = wp * p;
end
