(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Input::Initialization:: *)
Notation`AutoLoadNotationPalette=False;
BeginPackage["PackageTemplate`","Notation`"];
Notation`AutoLoadNotationPalette=True;
Unprotect@@Names["PackageTemplate`*"];
(*Unprotect[Evaluate[Context[]<>"*"]];*)
ClearAll@@Names["PackageTemplate`*"];


(* ::Input::Initialization:: *)
Off[General::spell1];
Off[Symbolize::boxSymbolExists];(*subscripted symbols:*)
Symbolize[ParsedBoxWrapper[SubscriptBox["_", "_"]]]
On[Symbolize::boxSymbolExists];


(* ::Input::Initialization:: *)
MyCustomFunction::usage="MyCustomFunction[x] calculates x.
MyCustomFunction[x,y] calculates x*y.";

MyCustomFunction2::usage="MyCustomFunction2[x] calculates x^2.
MyCustomFunction2[x,y] calculates x^2*y^2.";


(* ::Input::Initialization:: *)
Begin["`Private`"];


(* ::Input::Initialization:: *)
MakeBoxes[Det[x_],StandardForm]:=MakeBoxes@BracketingBar[x]
BracketingBar=Det;
NumericOrSymbol=(_?NumericQ|_Symbol);


(* ::Input::Initialization:: *)
MyCustomFunction[x_]:=x
MyCustomFunction[x_,y_]:=x y


(* ::Input::Initialization:: *)
MyCustomFunction2[x_]:=x^2
MyCustomFunction2[x_,y_]:=x^2 y^2


(* ::Input::Initialization:: *)
End[];
On[General::spell1];
Protect@@Names["PackageTemplate`*"];
(*Protect[Evaluate[Context[]<>"*"]];*)
EndPackage[];


