N = 15;

     nodes= [1     2     3     4     5     6     7     8     9    10    11    12    13    14    15];

node_sizes= [3     2     3     2     3     2     3     2     3     2     3     2     3     2     3];

dag=zeros(N,N);

dag=[
      0     0     0     0     0     0     0     0     1     0     0     0     0     0     0;
     0     0     0     0     0     0     1     0     1     0     0     0     0     0     0;
     0     0     0     0     0     1     0     1     1     0     0     0     0     0     1;
     0     0     0     0     0     1     1     0     0     0     0     1     1     0     0;
     0     0     0     0     0     0     1     0     0     1     1     0     0     1     0;
     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0;
     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0;
     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0;
     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0;
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1;
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0;
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0;
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0;
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0;
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0		];
 
pnet = mk_pnet(dag, node_sizes, nodes);


    
names = {'1' ,    '2',     '3' ,    '4' ,    '5' ,    '6' ,    '7' ,    '8'  ,   '9'  ,  '10'  ,  '11'  ,  '12'  ,  '13'  ,  '14'   , '15'}; 
carre_rond = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]; 
draw_layout(pnet.dag,names,carre_rond);



pnet.CPD{1} = tabular_CPD(pnet, 1,[ 1.0000         0    0.6859]); 
pnet.CPD{2} = tabular_CPD(pnet, 2,[1.0000    0.3345]); 
pnet.CPD{3} = tabular_CPD(pnet, 3,[1.0000    0.9635    0.4827]); 
pnet.CPD{4} = tabular_CPD(pnet, 4,[1.0000    0.8363]); 
pnet.CPD{5} = tabular_CPD(pnet, 5,[1.0000    0.1953    0.6536]); 
pnet.CPD{6} = tabular_CPD(pnet, 6,[0.6108    1.0000    0.2945    1.0000    0.9644    1.0000    1.0000    0.5145    1.0000    0.3571    1.0000         0]); 



pnet.CPD{7} = tabular_CPD(pnet, 7,[0.6353    1.0000    0.9267    1.0000    0.8604    1.0000    0.9068    1.0000         0    1.0000    0.1689    1.0000    1.0000    0.5331 1.0000    0.5326    1.0000         0    1.0000    0.7245    1.0000    0.3904    1.0000    0.7407    0.3068    0.2247    0.6961    0.7095 0.8332    0.8953    0.7130    0.2452         0    0.9838    0.7627    0.6034]); 
pnet.CPD{8} = tabular_CPD(pnet, 8,[0.3007    1.0000    0.5478    1.0000    0.6166    1.0000]); 
pnet.CPD{9} = tabular_CPD(pnet, 9,[    0.5219    1.0000         0    1.0000         0    1.0000         0    1.0000         0    1.0000    0.4123    1.0000    0.5824    1.0000    0.6042    1.0000    0.7924    1.0000    1.0000    0.7525    1.0000    0.2916    1.0000         0    1.0000    0.4067    1.0000    0.1884    1.0000    0.7150    1.0000    0.8411    1.0000    0.4696    1.0000    0.2250         0    0.5268    0.7656    0.2819    0.3489    0.3281    0.4150    0.5387    0.7535         0         0         0    0.7849    0.6481    0.5475    0.3243    0.1955    0.5479]); 
pnet.CPD{10} = tabular_CPD(pnet, 10,[0.1926    1.0000    0.7276    1.0000    0.3639    1.0000]); 

pnet.CPD{11} = tabular_CPD(pnet, 11,[    0.3078    1.0000    0.4295    1.0000    0.1918    1.0000    1.0000    0.5872    1.0000    0.1867    1.0000    0.3250    0.1923    0.8680    0.4759    0.5630    0.7136    0.3438]); 
pnet.CPD{12} = tabular_CPD(pnet, 12,[0.2924    1.0000    0.9121    1.0000    0.3371    1.0000    1.0000    0.4783    1.0000    0.4736    1.0000    0.7120]); 
pnet.CPD{13} = tabular_CPD(pnet, 13,[0    1.0000    0.8615    1.0000    1.0000    0.6186    1.0000    0.5986    0.8704    0.1677    0.4157    0.9229]);
pnet.CPD{14} = tabular_CPD(pnet, 14,[    0.4737    1.0000    0.9170    1.0000    0.1630    1.0000    0.3122    1.0000    0.3990    1.0000         0    1.0000         0    1.0000    0.6359    1.0000    0.9023    1.0000]); 
pnet.CPD{15} = tabular_CPD(pnet, 15,[0.4343    1.0000    0.3388    1.0000    0.4038    1.0000    1.0000    0.3293    1.0000    0.3738    1.0000    0.6366    0.8724         0    0.3024    0.8761    0.3983    0.8772]);


%for d=1:N
%  node_n=d
%  ps = parents(dag,d)
%end


evidence = cell(1,N);

evidence{9} = 2;  
evidence{11} = 1;  

var_interest= 13;

disp('----------------nouveau--1-----------');
engine = MG_inf_engine(pnet);

tic; [Bel_Cdt_new] = global_propagation(engine, evidence, var_interest,0,1); toc;

Bel_Cdt_new

disp('----------------classique-------------');
engine = jtree_inf_engine(pnet);
tic; [engine] = global_propagation(engine, evidence); toc;
%affichage pour A
marg = marginal_nodes(engine, var_interest);
BEL_Cdt_classique=marg.T




%disp('----------------nouveau---2----------');
%engine = MG_inf_engine(pnet);

%tic; [Bel_Cdt_new] = enter_evidence(engine, evidence, var_interest,0,2); toc;

%Bel_Cdt_new

