
# normal HBFP
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 8 --mant_bits_bp 8 --bfp_tile_size 0 --weight_mant_bits 16 --device gpu
# test for backward bits
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 8 --mant_bits_bp 2 --bfp_tile_size 0 --weight_mant_bits 16 --device gpu
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 8 --mant_bits_bp 4 --bfp_tile_size 0 --weight_mant_bits 16 --device gpu
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 8 --mant_bits_bp 6 --bfp_tile_size 0 --weight_mant_bits 16 --device gpu
# test for forward bits
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 2 --mant_bits_bp 8 --bfp_tile_size 0 --weight_mant_bits 16 --device gpu
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 4 --mant_bits_bp 8 --bfp_tile_size 0 --weight_mant_bits 16 --device gpu
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 6 --mant_bits_bp 8 --bfp_tile_size 0 --weight_mant_bits 16 --device gpu
# test for weights bits
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 8 --mant_bits_bp 8 --bfp_tile_size 0 --weight_mant_bits 8 --device gpu
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 8 --mant_bits_bp 8 --bfp_tile_size 0 --weight_mant_bits 4 --device gpu
python3 main.py --type getting_started --num_format bfp --rounding_mode stoc --mant_bits 8 --mant_bits_bp 8 --bfp_tile_size 0 --weight_mant_bits 2 --device gpu