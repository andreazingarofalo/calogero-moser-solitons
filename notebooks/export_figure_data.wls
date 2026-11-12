(* Exports the worldline data of Figs 3.2-3.6 of the thesis as CSV files (t, q_1, ..., q_N),
   using the definitions of Soliton_solutions_to_CM_systems.nb.
   Usage: wolframscript -file export_figure_data.wls <output directory> *)
nbFile = FileNameJoin[{DirectoryName[$InputFileName], "Soliton_solutions_to_CM_systems.nb"}];
outDir = $ScriptCommandLine[[2]];
inputs = Cases[Get[nbFile], Cell[BoxData[b_], "Input", ___] :> b, Infinity];
Scan[ToExpression[#, StandardForm] &, inputs[[1 ;; 5]]]; (* Beq, ReBeq/ImBeq, rootReBeq, rootImBeq, XTab *)
worldlines[n_, zs_List, tmax_, dt_] := Module[{rx, ry, X},
  rx = rootReBeq[n, Length[zs], zs];
  ry = rootImBeq[n, Length[zs], zs, rx];
  X = XTab[n, rx, ry];
  Table[Prepend[Sort[Re@Eigenvalues[N[X /. t -> s]]], s], {s, 0, tmax, dt}]];
figs = {
  {"fig3_2",  10, {1 + I},                     10, 0.02},
  {"fig3_3a", 10, {1.2 + 0.3 I},               10, 0.02},
  {"fig3_3b", 10, {2.8 + 2.4 I},               10, 0.02},
  {"fig3_4a",  6, {-1.1 + 0.5 I, 0.1 - 2 I},   20, 0.02},
  {"fig3_4b",  6, {-1.1 + 0.5 I, 0.1 - I},     20, 0.02},
  {"fig3_5a",  6, {0.1 + 0.5 I, 0.1 - 0.9 I},  20, 0.02},
  {"fig3_5b",  6, {0.1 + 0.5 I, 0.1 - 0.1 I},  20, 0.02},
  {"fig3_6",  10, {0.1 + 0.5 I, 0.1 - I},      20, 0.02}};
Do[
  {name, n, zs, tmax, dt} = f;
  data = worldlines[n, zs, tmax, dt];
  Export[FileNameJoin[{outDir, name <> ".csv"}],
    StringRiffle[Prepend[
      Map[ToString[NumberForm[#, {8, 5}, ExponentFunction -> (Null &)]] &, data, {2}],
      Prepend["q" <> ToString[#] & /@ Range[n], "t"]], "\n", ","] <> "\n", "Text"];
  Print[name, ": ", Length[data], " rows"], {f, figs}];
