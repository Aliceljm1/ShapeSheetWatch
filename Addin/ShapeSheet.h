
#pragma once

struct SRC
{
	CString name;

	short s;
	CString s_name;

	short r;
	CString r_name;

	short c;
	CString c_name;
};

void GetCellNames(IVShapePtr shape, const CString& cell_name_mask, std::vector<SRC>& result);