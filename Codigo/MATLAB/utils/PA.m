function [ auc, precision, sim ] = PA( train, test )
%% 计算PA指标并返回AUC值
    deg_row = sum(train,2);       
    % 所有节点的度构成列向量，将它乘以它的转置即可
    sim = deg_row * deg_row';  
    clear deg_row deg_col;       
    % 相似度矩阵计算完成
    [auc, precision] = CalcAUC(train,test,sim); 
    % 评测，计算该指标对应的AUC
end
