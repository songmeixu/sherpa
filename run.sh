

#---------------------------- sherpa-offline ----------------------------
# 16k
sherpa-offline \
  --nn-model=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/zipformer/exp/16k/base_8kh_best_nonstream/jit_script.pt \
  --tokens=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/data/lang_charbpe_fangyan/tokens.txt \
  --use-gpu=false \
  --normalize-samples=false \
  --sample-frequency=16000 \
  --dither=1 \
  --snip-edges=true \
  --high-freq=0 \
  /mnt/lpai-dione/ssai/asr/team/group_data/database/am/chs/audio/testset/test_M01_online/subset/final_query_weekly_20221202_2/wav/LW433B115M1028302-QueryPro-1-VrcMono-2022-11-19-12_07_36_310.wav

# text: 导航到望京 SOHO
# token IDs: 导 航 到 望 京  SO HO
# timestamps (after subsampling): 0 0.04 0.32 0.64 0.88 1.12 1.36

# 8k
sherpa-offline \
  --nn-model=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/zipformer/exp/8k/base_8kh_best_nonstream/jit_script.pt \
  --tokens=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/data/lang_charbpe_fangyan/tokens.txt \
  --use-gpu=false \
  --normalize-samples=false \
  --sample-frequency=8000 \
  --dither=1 \
  --snip-edges=true \
  --high-freq=0 \
  /mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/data/test_wav/8k/LW433B115M1028302-QueryPro-1-VrcMono-2022-11-19-12_07_36_310.wav


#---------------------------- sherpa-online ----------------------------
#8k wav
sherpa-online \
  --nn-model=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/zipformer/exp/8k/base_8kh_chunk_320/jit_script_chunk_320_left_256.pt \
  --tokens=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/data/lang_charbpe_fangyan/tokens.txt \
  --use-gpu=false \
  --normalize-samples=false \
  --sample-frequency=8000 \
  --dither=1 \
  --snip-edges=true \
  --high-freq=0 \
  --padding-seconds=6.6 \
  /mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/data/test_wav/8k/LW433B115M1028302-QueryPro-1-VrcMono-2022-11-19-12_07_36_310.wav

#8k wav_scp
sherpa-online \
  --nn-model=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/zipformer/exp/8k/base_8kh_chunk_320/jit_script_chunk_320_left_256.pt \
  --tokens=/mnt/lpai-dione/ssai/asr/team/songmeixu/work/li/icefall/egs/lixiang_online/ASR/data/lang_charbpe_fangyan/tokens.txt \
  --use-gpu=false \
  --normalize-samples=false \
  --sample-frequency=8000 \
  --dither=1 \
  --snip-edges=true \
  --high-freq=0 \
  --padding-seconds=3.4 \
  --use-wav-scp=true \
  scp:wav.scp \
  ark,scp,t:result.ark,result.scp
