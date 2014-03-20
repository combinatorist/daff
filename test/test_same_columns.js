var coopy = require('coopyhx');
var assert = require('assert');

var t1 = new coopy.CoopyTableView([["Name","Number"],["John",14]]);
var t2 = new coopy.CoopyTableView([["Name","Number"],["Mary",17],["John",15]]);
var d1 = new coopy.ViewedDatum(t1,new coopy.TableView());
var d1 = new coopy.ViewedDatum(t2,new coopy.TableView());

var ct = new coopy.Coopy.compareTables(t1,t2);
var comp = ct.getComparisonState();
assert(comp.has_same_columns);

t2.setCell(0,0,"Number");
comp.reset();
ct.attach(comp);
assert(!comp.has_same_columns);