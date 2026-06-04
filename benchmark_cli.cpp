// Benchmark CLI entry point - runs solver from command file and measures time
#include <iostream>
#include <fstream>
#include <string>
#include <chrono>
#include "include/tools/CommandLineTool.h"

using namespace std;

int main(int argc, char *argv[]) {
    string mode = "holdem";
    string resource_dir = "../resources";
    string input_file = "benchmark/benchmark_texassolver.txt";

    if(argc > 1) input_file = argv[1];
    if(argc > 2) resource_dir = argv[2];
    if(argc > 3) mode = argv[3];

    cout << "=== TexasSolver Benchmark ===" << endl;
    cout << "Input file: " << input_file << endl;
    cout << "Resource dir: " << resource_dir << endl;
    cout << "Mode: " << mode << endl;

    auto total_start = chrono::high_resolution_clock::now();

    CommandLineTool tool(mode, resource_dir);

    auto init_end = chrono::high_resolution_clock::now();
    double init_time = chrono::duration<double>(init_end - total_start).count();
    cout << "Init time: " << init_time << "s" << endl;

    tool.execFromFile(input_file);

    auto solve_end = chrono::high_resolution_clock::now();
    double total_time = chrono::duration<double>(solve_end - total_start).count();
    double solve_time = total_time - init_time;

    cout << "=== Benchmark Results ===" << endl;
    cout << "Total time: " << total_time << "s" << endl;
    cout << "Solve time: " << solve_time << "s" << endl;

    if(solve_time < 20.0) {
        cout << "PASS: Solve time under 20s target" << endl;
    } else {
        cout << "FAIL: Solve time exceeds 20s target" << endl;
    }

    return 0;
}
