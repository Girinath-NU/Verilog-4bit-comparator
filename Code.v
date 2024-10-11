module comparator(a,b,g,e,s);
    input a,b;
    output reg g,e,s;
    always @(a,b) 
    begin
    if(a>b)
        g=1;
    else if(a==b)
        e=1;
    else if(a<b)
        s=1;
    end
endmodule
