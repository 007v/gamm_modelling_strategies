# name and paths
overall_name = "gamm_formants_complex_within_type_2"
path.on.local = "~/documents/research/projects/dynamic-gam/gamm_modelling_strategies/formants/complex_within"
path.on.server = "/scratch/ms1341/r/gamm-sim/formants/complex_within"
output.dir = "/scratch/ms1341/r/gamm-sim/formants/complex_within/output_type_2"
r.script.path.on.server = "/scratch/ms1341/r/gamm-sim/gamm_single_iteration.r"

# name of init file (containing details of data & models)
init.file = "formants_complex_within_type_2_init.r"

# name of config file
config.file = "formants_complex_within_type_2_config_file.R"

# details of models to be run 
to_fit <- expand.grid(fixed_effects=c("diff_tp_10"),
                      random_effects=c("noranef+rsmooth_tp_3","noranef+rsmooth_tp_5","noranef+rsmooth_tp_10",
                                       "noranef+rsmoothslope_tp_3","noranef+rsmoothslope_tp_5","noranef+rsmoothslope_tp_10",
                                       "noranef+rsmoothcrossed_tp_3","noranef+rsmoothcrossed_tp_5","noranef+rsmoothcrossed_tp_10"),
                      AR=c("AR_est"),
                      method="discrete",
                      mod_comp="nomodcomp",
                      dataset=c("dense","thin"),
                      visual="noVis")


