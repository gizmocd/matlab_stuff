%%A look at Gambler's paradox
r_dist = randn(1,1000000);
figure; plot(r_dist);
figure; hist(r_dist,1000);
size = 0;
for x = 1:1000000-1
    if r_dist(x) < 0 && r_dist(x+1) < 0
        size = size + 1;
    end
end
y_count = 1;
y = zeros([1,size]);%is there a better solution than this ugly for loop (above)
                    %in order to specify an array size for y that is equal
                    %to the number of instances two negative r_dist values
                    %occur one after the other?
for x = 1:1000000-2
    if r_dist(x) < 0 && r_dist(x+1) < 0
        y(y_count) = r_dist(x+2);
        y_count = y_count + 1;
    end
end
figure; plot(y);
figure; hist(y,1000),title('QED!');