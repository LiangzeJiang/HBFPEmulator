LOG_PATH = './log/'


def get_log_path(args):
    args = vars(args)
    log_dir = LOG_PATH
    attributes = ["rounding_mode",
                  "num_format",
                  "mant_bits",
                  "mant_bits_bp",
                  "weight_mant_bits",
                  "loss_scaling_scheme",
                  "init_scaling_factor",
                  "training_epochs"]
    filename = log_dir + 'log'
    for attr in attributes:
        if attr in args.keys():
            filename += '_'
            if args[attr] is None:
                filename += '0'
            else:
                filename += str(args[attr])
    return filename + '.txt'

def perf_parser(log_path):
    pass

def track_grad_stat(model):
    for name, p in model.named_parameters():
        return [p.grad.min().item(), p.grad.max().item(), p.grad.mean().item()]

