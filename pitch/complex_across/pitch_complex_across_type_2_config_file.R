# name and paths
overall_name = "gamm_pitch_complex_across_type_2"
path.on.local = "~/documents/research/projects/dynamic-gam/gamm_modelling_strategies/pitch/complex_across"
path.on.server = "/scratch/ms1341/r/gamm-sim/pitch/complex_across"
output.dir = "/scratch/ms1341/r/gamm-sim/pitch/complex_across/output_type_2"
r.script.path.on.server = "/scratch/ms1341/r/gamm-sim/gamm_single_iteration.r"

# name of init file (containing details of data & models)
init.file = "pitch_complex_across_type_2_init.r"

# name of config file
config.file = "pitch_complex_across_type_2_config_file.R"

# details of models to be run 
to_fit <- expand.grid(fixed_effects=c("diff_tp_15"),
                      random_effects=c("noranef+noranef","noranef+rintcpt","noranef+rslope",
                                       "noranef+rsmooth_tp_5","noranef+rsmooth_tp_8","noranef+rsmooth_tp_12"),
                      AR=c("AR_est"),
                      method="discrete",
                      mod_comp="nomodcomp",
                      dataset=c("dense","thin"),
                      visual="noVis")


