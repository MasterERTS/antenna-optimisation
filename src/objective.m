function f = objective(x)
    A = [5 10];
    B = [10 5];
    C = [0 12];
    D = [12 0];
    f = 200*norm(A-x) + 150*norm(B-x) + 200*norm(C-x) + 300*norm(D-x);
    %f = -f;
end