declare -a training_epochs=30

# HBFP with stochastic rounding and 2,6-bit backward
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 2 \
  --training_epochs ${training_epochs} \
  --loss_scaling_scheme Naive \
  --init_scaling_factor 1000
