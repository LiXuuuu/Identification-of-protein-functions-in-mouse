function Q = rwr(A, restart_prob)
  n = size(A, 1);%���������
  A = A - diag(diag(A));%��ȥA�ĶԽ���Ԫ��
  A = A + diag(sum(A) == 0);
  P = bsxfun(@rdivide, A, sum(A));%������A��ÿһ�����sum��A��
  Q = (eye(n) - (1 - restart_prob) * P) \ (restart_prob * eye(n));%eye(n)����nά�ĵ�λ����
end
%?���A����������A��ȥ��Խ���Ԫ���ٸ�ֵ��A����A���ϣ�ÿ����ͺ���ֵΪ0���ֵ��Ϊ1����Ϊ0��ֵ��Ϊ���ĶԽ�Ԫ��Ȼ��ֵ��A����A��ÿ�����
%ÿ�еĺ��൱�ڹ�һ��Ȼ��ֵ��P���õ�λ�����ȥ0��5*P֮���0��5*��λ��������ֵ��Q�����ء�