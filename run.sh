#!/usr/bin/env bash

LOG_FILE=$"log.txt"
DIAGNOSTICS_FILE=$"diag.txt"
EMPLOYEE_DATA_FILE=$"emp.txt"
DEPARTMENT_DATA_FILE=$"dept.xls"
SALARY_DATA_FILE=$"salary.xlsx"
LEAVE_DATA_FILE=$"leave.xlsx"
FINAL_OUTPUT=$"output.txt"

cargo run -- \
--log-file ${LOG_FILE} \
--diagnostics-log-file ${DIAGNOSTICS_FILE} \
--employee-data-file ${EMPLOYEE_DATA_FILE} \
--department-data-file ${DEPARTMENT_DATA_FILE} \
--salary-data-file ${SALARY_DATA_FILE} \
--leave-data-file ${LEAVE_DATA_FILE} \
--final-output-file ${FINAL_OUTPUT} \
