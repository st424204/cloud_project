%% ����ƾ�Ū�J, �R�W��"data"���ܼ�
%% �� t �� ppg �� ecg �ƾڧ�X��
data = importdata('data.txt');
t_delta=data(1:3:end);
t=[];
t(1)=t_delta(1);
t_temp=t(1);
for i=2:length(t_delta)
t(i)=t_delta(i)+t_temp;
t_temp=t(i);
end
ppg=data(2:3:end);
ecg=data(3:3:end);
%% �e�X ppg �� ecg ��ɶ����ܤ�
figure(1);
plot(t/1000,ppg,'-x');
%hold on;
%plot(t/1000,ecg,'-o');
%legend('PPG','ECG');
legend('PPG');
hold off;
%% �qppg��peak
figure(2);
findpeaks(ppg,t/1000,'MinPeakProminence',20,'MinPeakWidth',0.02,'MinPeakDistance',0.5,'Annotate','extents');
[pks,locs]=findpeaks(ppg,t/1000,'MinPeakProminence',20,'MinPeakWidth',0.02,'MinPeakDistance',0.5,'Annotate','extents');
rr_value=diff(locs);
rr_pos=locs(2:end);
pos1=find(rr_value>1);
rr_value(pos1)=[];
rr_pos(pos1)=[];
figure(3);
plot(t/1000,ppg);
hold on;
plot(rr_pos,rr_value*100,'-o');
plot(rr_pos,60./rr_value,'-x');
print(3,'-djpeg','image.jpeg');
legend('PPGG','RR(sec)*100','Heart Rate(beats/min)');
hold off;
