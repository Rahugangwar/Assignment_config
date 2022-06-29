#![cfg_attr(feature = "cargo-clippy", deny(clippy::expect_fun_call))]
#![cfg_attr(
    feature = "cargo-clippy",
    warn(
        clippy::result_unwrap_used,
        clippy::panicking_unwrap,
        clippy::option_unwrap_used
    )
)]
#[macro_use]
extern crate slog;
extern crate clap;
extern crate rbdate;
extern crate slog_async;
extern crate slog_term;

#[macro_use]
mod macros;
mod configuration_parameters;
mod init;
mod log;
mod process;
mod read_write_data_files;
mod output_file;
mod structure;

use init::init_loggers;
use process::parameter_calls;
use std::time::SystemTime;
use output_file::write_output;

fn main() {
    let start_aggregation_timer = SystemTime::now();

    // initialize loggers
    let app_name = "Assignment_3";
    let (config_params, log, diagnostics_log) = init_loggers(app_name);
    // Process
    parameter_calls(&config_params, &log, &diagnostics_log);
    write_output(app_name);
    let total_duration = print_return_time_since!(start_aggregation_timer);
    
}
