#check g_min g_max
python ~/Workspace/Workspace_surf/Exp/feature_ext/scripts/extract_feat_temporal_LLD_rosa.py -f ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/ -m ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/meta.IEMOCAP.txt --gain_stat

python ~/Workspace/Workspace_surf/Exp/feature_ext/scripts/extract_feat_temporal_LLD_rosa.py -f ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/ -m ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/meta.news.txt --gain_stat

python ~/Workspace/Workspace_surf/Exp/feature_ext/scripts/extract_feat_temporal_LLD_rosa.py -f ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/ -m ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/meta.FOXNEWS.txt --gain_stat

python ~/Workspace/Workspace_surf/Exp/feature_ext/scripts/extract_feat_temporal_LLD_rosa.py -f ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/ -m ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/meta.SQL.txt --gain_stat

#decoding without VAD
#python ./src/decoding.py -p_mode 2 -f_mode 0 -l_wav ./wav/IEMOCAP_EXCITED.16k.wav -md ./model/MSPEC_MM.all.ar_vl.0.h5 -c_len 10 -m_t_step 500 -tasks arousal:2,valence:2 -g_min -0.284261 -g_max 0.317006

#python ./src/decoding.py -p_mode 2 -f_mode 1 -l_wav ./wav/IEMOCAP_EXCITED.16k.wav -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks arousal:3,valence:3 -g_min -0.284261 -g_max 0.317006

#python ./src/decoding.py -p_mode 2 -f_mode 1 -l_wav ./wav/NEWS.16k.wav -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks arousal:3,valence:3 -g_min -0.564745 -g_max 0.55982

#VAD mode
#MSPC 2D-CNN-LSTM
#file mode
#python ./src/offline_ser.py -p_mode 2 -f_mode 0 -wav ./wav/IEMOCAP_EXCITED.16k.wav -log ./output/IEMOCAP_EXCITED.16k.wav.dist.mfcc.file.csv -md ./model/MSPEC_MM.all.ar_vl.0.h5 -c_len 10 -m_t_step 500 -tasks arousal:2,valence:2 -g_min -0.284261 -g_max 0.317006 --save

#live demo mode
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -log ./output/live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3'


#classification mode
python ./src/offline_ser.py -p_mode 1 -f_mode 0 -wav ./wav/IEMOCAP_EXCITED.16k.wav -log ./output/IEMOCAP_EXCITED.16k.wav.class.mfcc.file.csv -md ./model/MSPEC_MM.all.ar_vl.0.h5 -c_len 10 -m_t_step 500 -tasks arousal:2,valence:2 -g_min -0.284261 -g_max 0.317006 --save

python ./src/offline_ser.py -p_mode 1 -f_mode 0 -wav ./wav/IEMOCAP_EXCITED.16k.wav -log ./output/IEMOCAP_EXCITED.16k.wav.class.mfcc.live.csv -md ./model/MSPEC_MM.all.ar_vl.0.h5 -c_len 10 -m_t_step 500 -tasks arousal:2,valence:2 -g_min -0.284261 -g_max 0.317006

#RAW 1D-CHRM
python ./src/offline_ser.py -p_mode 1 -f_mode 1 -wav ./wav/IEMOCAP_EXCITED.16k.wav -log ./output/IEMOCAP_EXCITED.16k.wav.class.raw.live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' 

python ./src/offline_ser.py -p_mode 1 -f_mode 1 -wav ./wav/IEMOCAP_EXCITED.16k.wav -log ./output/IEMOCAP_EXCITED.16k.wav.class.raw.file.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save

python ./src/offline_ser.py -p_mode 1 -f_mode 1 -wav ./wav/IEMOCAP_SAD.16k.wav -log ./output/IEMOCAP_SAD.16k.wav.class.raw.file.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save

#python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/IEMOCAP_EXCITED.16k.wav -log ./output/IEMOCAP_EXCITED.16k.wav.dist.raw.live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3'

#NEWS: ENGLISH corpora: LDC, IEMOCAP, SEMAINE, ENTERFACE
python ./src/offline_ser.py -p_mode 1 -f_mode 1 -wav ./wav/NEWS.16k.wav -log ./output/NEWS.16k.wav.class.raw.live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3'

python ./src/offline_ser.py -p_mode 1 -f_mode 0 -wav ./wav/NEWS.16k.wav -log ./output/NEWS.16k.wav.class.mfcc.live.csv -md ./model/MSPEC_MM.all.ar_vl.0.h5 -c_len 10 -m_t_step 500 -tasks arousal:2,valence:2 -g_min -0.284261 -g_max 0.317006

python ./src/offline_ser.py -p_mode 1 -f_mode 1 -wav ./wav/NEWS.16k.wav -log ./output/NEWS.16k.wav.class.raw.file.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save

python ./src/offline_ser.py -p_mode 1 -f_mode 0 -wav ./wav/NEWS.16k.wav -log ./output/NEWS.16k.wav.class.mfcc.file.csv -md ./model/MSPEC_MM.all.ar_vl.0.h5 -c_len 10 -m_t_step 500 -tasks arousal:2,valence:2 -g_min -0.284261 -g_max 0.317006 --save

python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/NEWS.16k.wav -log ./output/NEWS.16k.wav.dist.raw.live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3'

python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/NEWS.16k.wav -log ./output/NEWS.16k.wav.dist.raw.file.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save

python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/FOX_NEWS.16k.wav -log ./output/FOX_NEWS.16k.wav.dist.raw.file.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save

#MORE NEWS
python ~/Workspace/Workspace_surf/Exp/feature_ext/scripts/extract_feat_temporal_LLD_rosa.py -f ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/ -m ~/Workspace/Workspace_old_tf_keras/LIVE_SER/wav/meta.CNNNEWS.txt --gain_stat

python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/2017-10-02_2300_US_CNN_Erin_Burnett_OutFront.16k.wav -log ./output/2017-10-02_2300_US_CNN_Erin_Burnett_OutFront.16k.wav.class.raw.live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' -g_min -0.648979 -g_max 0.54826


#SQL: AIBO corpus only used for training
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s1_v1.16k.wav -log ./output/s1_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s1_v2.16k.wav -log ./output/s1_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s1_v3.16k.wav -log ./output/s1_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s2_v1.16k.wav -log ./output/s2_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s2_v2.16k.wav -log ./output/s2_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s2_v3.16k.wav -log ./output/s2_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s3_v1.16k.wav -log ./output/s3_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s3_v2.16k.wav -log ./output/s3_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s3_v3.16k.wav -log ./output/s3_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s4_v1.16k.wav -log ./output/s4_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s4_v2.16k.wav -log ./output/s4_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s4_v3.16k.wav -log ./output/s4_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s5_v1.16k.wav -log ./output/s5_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s5_v2.16k.wav -log ./output/s5_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s5_v3.16k.wav -log ./output/s5_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s6_v1.16k.wav -log ./output/s6_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s6_v2.16k.wav -log ./output/s6_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s6_v3.16k.wav -log ./output/s6_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s7_v1.16k.wav -log ./output/s7_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s7_v2.16k.wav -log ./output/s7_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s7_v3.16k.wav -log ./output/s7_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s8_v1.16k.wav -log ./output/s8_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s8_v2.16k.wav -log ./output/s8_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s8_v3.16k.wav -log ./output/s8_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s9_v1.16k.wav -log ./output/s9_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s9_v2.16k.wav -log ./output/s9_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s9_v3.16k.wav -log ./output/s9_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s10_v1.16k.wav -log ./output/s10_v1.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s10_v2.16k.wav -log ./output/s10_v2.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -wav ./wav/SQL/s10_v3.16k.wav -log ./output/s10_v3.wav.dist.raw.file.csv -md ./model/AIBO.si.cw.raw.2d.res.lstm.gpool.dnn.4.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --save
#models trained above support only old keras (1.xxx)

#live demo with a new keras trained model (2.xxx)

#For linux os, you need to set a default device for pulseaudio
pacmd list-sources | grep -e device.string -e 'name:'
#For example, you find "name: <Channel_1__Channel_2.4>" as your input source.
pacmd "set-default-source Channel_1__Channel_2.4"
#Then, the following script will use the default pulse device
python ./src/offline_ser.py -p_mode 2 -f_mode 1 -log ./output/live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3'

#For mac os, you need to set a device for "offline_ser.py"
#Running the script without arguments, it will show you a list of devices.
python ./src/offline_ser.py
#if you find your device in index 2
python ./src/offline_ser.py -d_id 2 -p_mode 2 -f_mode 1 -log ./output/live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3'

python ./src/offline_ser.py -p_mode 2 -f_mode 1 -log ./output/live.csv -md ./model/AIBO.si.ENG.cw.raw.2d.res.lstm.gpool.dnn.1.h5 -c_len 1600 -m_t_step 16000 -tasks 'arousal:3,valence:3' --wav './wav/IEMOCAP_EXCITED.16k.wav'