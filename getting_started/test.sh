declare -a training_epochs=30

# Pure Floating point
python3 main.py \
  --type getting_started --num_format fp32 --device gpu \
  --rounding_mode determ \
  --training_epochs ${training_epochs}

# normal HBFP
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 8 \
  --training_epochs ${training_epochs}

# HBFP with 4-bit backward
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 4 \
  --training_epochs ${training_epochs}

# HBFP with stochastic rounding and 4-bit backward
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode stoc \
  --mant_bits 8 --mant_bits_bp 4 \
  --training_epochs ${training_epochs}

# HBFP with loss scaling and 4-bit backward
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 4 \
  --training_epochs ${training_epochs} \
  --loss_scaling_scheme Naive \
  --init_scaling_factor 1000

# HBFP with loss scaling + stochastic rounding and 4-bit backward
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode stoc \
  --mant_bits 8 --mant_bits_bp 4 \
  --training_epochs ${training_epochs} \
  --loss_scaling_scheme Naive \
  --init_scaling_factor 1000

# Other tests for backward bits
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 6 \
  --training_epochs ${training_epochs}

python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 2 \
  --training_epochs ${training_epochs}

# Other tests for forward bits
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 6 --mant_bits_bp 8 \
  --training_epochs ${training_epochs}

python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 4 --mant_bits_bp 8 \
  --training_epochs ${training_epochs}

python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 16 \
  --rounding_mode determ \
  --mant_bits 2 --mant_bits_bp 8 \
  --training_epochs ${training_epochs}

# Other tests for weight mantissa bits
python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 8 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 8 \
  --training_epochs ${training_epochs}

python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 4 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 8 \
  --training_epochs ${training_epochs}

python3 main.py \
  --type getting_started --num_format bfp --device gpu \
  --bfp_tile_size 24 --weight_mant_bits 2 \
  --rounding_mode determ \
  --mant_bits 8 --mant_bits_bp 8 \
  --training_epochs ${training_epochs}
