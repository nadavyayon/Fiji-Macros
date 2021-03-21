
// Convert all line ROIs to Polygon ROIs with a constant number of vertices 
// Adapted from (see below) 
// ROI2PolylineROI
// G. Landini 6/6/2007
// converts a ROI to Poly-line/gon ROI

PointNo = 50; // number of vertices 
for (r = 0; r < roiManager("count"); r++) {
	roiManager("select", 0);
	t=selectionType();
	if (t==1 || t==3 || t==4) {
		getSelectionCoordinates(x, y);
		Xr = Array.resample(x,PointNo);
		Yr = Array.resample(y,PointNo);
		makeSelection("polygon", Xr,Yr);
		roiManager("add");
		roiManager("select", 0);
		roiManager("delete");
	}
}
