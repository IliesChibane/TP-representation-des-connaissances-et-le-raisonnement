function [clpot, modif_pot, cap_max]=two_nodes_stability(pnet, engine,  clpot, C, ns,nodes_type)

%This procedure ensures for each cluster having at least two nodes (which can be
%neighbors, parents, children, parents-children) its stability with respect to each pair of them using the procedure newpot_n_nodes.

%--------------------------------------------------------------------------------------------------------------------
cap_max=0;
modif_pot=0;
i=1;
nb=0;

while (i<=C) & (modif_pot==0) & (cap_max==0)      %to trat all clusters
    
   nodes=define_nodes(pnet.dag, engine, i, nodes_type, C);

    if length(nodes)>=2         %stabilize at two nodes is useless with clusters having less then two ps
       j=1;
       while (j<= length(nodes)-1)  &  (modif_pot==0) & (cap_max==0)
          first_node=nodes(j);
          k=j+1;
          while (k <= length(nodes)) &  (modif_pot==0) & (cap_max==0)
              second_node=nodes(k);
              two_nodes=myunion(first_node, second_node);
              % [clpot{i},modif_pot]=fast_newpot_n_nodes(clpot{i}, clpot, two_nodes, ns);
              [clpot{i},modif_pot,cap_max]=newpot_n_nodes(clpot{i}, clpot, two_nodes, ns);
             %modif_pot indicatres if there is a modification when stabilizing  clpot{i} w.r.t two_nodes
             %if any cluster is modified we exist this procedure and restabilize the moral graph at one-neighbor
           k=k+1;   
          end
          j=j+1;
       end
    end
 
 i=i+1;
 nb=nb+1;
   if nb  > 8000
       cap_max=1;
   end
 end
 
 
 %if cap_max==1
     
  %   'on a depass� la capacit�'
  %end
 
 
 


