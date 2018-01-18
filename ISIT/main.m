clc;
clear;
% 鍒濆鍖栧弬鏁�
%% **********骞抽潰娉�**************************************
speaker_array_azimuth=[320,90,95,120]; % 杞﹀唴闊冲搷鎸夊洓涓壃澹板櫒璇曢獙
speaker_array_elevation=[0,0,0,0];
distance=1; %璁＄畻-distance鑷砫istance涔嬮棿鐨勫０鍦恒€�
F=1000;%璁＄畻澹板帇鏃朵俊鍙烽鐜�
dB=0;%dB=1锛岀敾澹板帇绾э紝dB=0锛岀敾澹板帇

% 璁＄畻澹板帇
for w1=0:0.1:1
    for w2=0:0.1:1
        for w3=0:0.1:1
            for w4=0:0.1:1
                w=[w1,w2,w3,w4];
                if length(speaker_array_azimuth) ~= length(w) % 鏉冮噸鏁伴噺涓庢壃澹板櫒鏁伴噺涓嶄竴鑷�
                    display('Dimension error. Please check the dimension of w.');
                    break;break;break;break;
                else
                    p=pressure_2D(speaker_array_azimuth,speaker_array_elevation,w,distance,F,dB);
                    
                end
            end
        end
    end
end
