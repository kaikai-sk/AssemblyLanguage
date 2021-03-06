IFNDEF GDI32_INC
GDI32_INC equ <1>

PROTO64 external,AbortDoc, :QWORD
PROTO64 external,AbortPath, :QWORD
PROTO64 external,AddFontMemResourceEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,AddFontResourceA, :QWORD
PROTO64 external,AddFontResourceExA, :QWORD,:QWORD,:QWORD
PROTO64 external,AddFontResourceExW, :QWORD,:QWORD,:QWORD
PROTO64 external,AddFontResourceW, :QWORD
PROTO64 external,AngleArc, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,AnimatePalette, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,Arc, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ArcTo, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,BeginPath, :QWORD
PROTO64 external,BitBlt, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CancelDC, :QWORD
PROTO64 external,CheckColorsInGamut, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ChoosePixelFormat, :QWORD,:QWORD
PROTO64 external,Chord, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CloseEnhMetaFile, :QWORD
PROTO64 external,CloseFigure, :QWORD
PROTO64 external,CloseMetaFile, :QWORD
PROTO64 external,ColorCorrectPalette, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ColorMatchToTarget, :QWORD,:QWORD,:QWORD
PROTO64 external,CombineRgn, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CombineTransform, :QWORD,:QWORD,:QWORD
PROTO64 external,CopyEnhMetaFileA, :QWORD,:QWORD
PROTO64 external,CopyEnhMetaFileW, :QWORD,:QWORD
PROTO64 external,CopyMetaFileA, :QWORD,:QWORD
PROTO64 external,CopyMetaFileW, :QWORD,:QWORD
PROTO64 external,CreateBitmap, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateBitmapIndirect, :QWORD
PROTO64 external,CreateBrushIndirect, :QWORD
PROTO64 external,CreateColorSpaceA, :QWORD
PROTO64 external,CreateColorSpaceW, :QWORD
PROTO64 external,CreateCompatibleBitmap, :QWORD,:QWORD,:QWORD
PROTO64 external,CreateCompatibleDC, :QWORD
PROTO64 external,CreateDCA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateDCW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateDIBPatternBrush, :QWORD,:QWORD
PROTO64 external,CreateDIBPatternBrushPt, :QWORD,:QWORD
PROTO64 external,CreateDIBSection, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateDIBitmap, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateDiscardableBitmap, :QWORD,:QWORD,:QWORD
PROTO64 external,CreateEllipticRgn, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateEllipticRgnIndirect, :QWORD
PROTO64 external,CreateEnhMetaFileA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateEnhMetaFileW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateFontA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateFontIndirectA, :QWORD
PROTO64 external,CreateFontIndirectExA, :QWORD
PROTO64 external,CreateFontIndirectExW, :QWORD
PROTO64 external,CreateFontIndirectW, :QWORD
PROTO64 external,CreateFontW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateHalftonePalette, :QWORD
PROTO64 external,CreateHatchBrush, :QWORD,:QWORD
PROTO64 external,CreateICA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateICW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateMetaFileA, :QWORD
PROTO64 external,CreateMetaFileW, :QWORD
PROTO64 external,CreatePalette, :QWORD
PROTO64 external,CreatePatternBrush, :QWORD
PROTO64 external,CreatePen, :QWORD,:QWORD,:QWORD
PROTO64 external,CreatePenIndirect, :QWORD
PROTO64 external,CreatePolyPolygonRgn, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreatePolygonRgn, :QWORD,:QWORD,:QWORD
PROTO64 external,CreateRectRgn, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateRectRgnIndirect, :QWORD
PROTO64 external,CreateRoundRectRgn, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateScalableFontResourceA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateScalableFontResourceW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,CreateSolidBrush, :QWORD
PROTO64 external,DPtoLP, :QWORD,:QWORD,:QWORD
PROTO64 external,DeleteColorSpace, :QWORD
PROTO64 external,DeleteDC, :QWORD
PROTO64 external,DeleteEnhMetaFile, :QWORD
PROTO64 external,DeleteMetaFile, :QWORD
PROTO64 external,DeleteObject, :QWORD
PROTO64 external,DescribePixelFormat, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,DeviceCapabilitiesExA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,DeviceCapabilitiesExW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,DrawEscape, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,Ellipse, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnableEUDC, :QWORD
PROTO64 external,EndDoc, :QWORD
PROTO64 external,EndFormPage, :QWORD
PROTO64 external,EndPage, :QWORD
PROTO64 external,EndPath, :QWORD
PROTO64 external,EnumEnhMetaFile, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumFontFamiliesA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumFontFamiliesExA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumFontFamiliesExW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumFontFamiliesW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumFontsA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumFontsW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumICMProfilesA, :QWORD,:QWORD,:QWORD
PROTO64 external,EnumICMProfilesW, :QWORD,:QWORD,:QWORD
PROTO64 external,EnumMetaFile, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EnumObjects, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EqualRgn, :QWORD,:QWORD
PROTO64 external,Escape, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EudcLoadLinkW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,EudcUnloadLinkW, :QWORD,:QWORD
PROTO64 external,ExcludeClipRect, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ExtCreatePen, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ExtCreateRegion, :QWORD,:QWORD,:QWORD
PROTO64 external,ExtEscape, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ExtFloodFill, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ExtSelectClipRgn, :QWORD,:QWORD,:QWORD
PROTO64 external,ExtTextOutA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ExtTextOutW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,FillPath, :QWORD
PROTO64 external,FillRgn, :QWORD,:QWORD,:QWORD
PROTO64 external,FixBrushOrgEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,FlattenPath, :QWORD
PROTO64 external,FloodFill, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,FrameRgn, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GdiArtificialDecrementDriver, :QWORD,:QWORD
PROTO64 external,GdiComment, :QWORD,:QWORD,:QWORD
PROTO64 external,GdiDeleteSpoolFileHandle, :QWORD
PROTO64 external,GdiEndDocEMF, :QWORD
PROTO64 external,GdiEndPageEMF, :QWORD,:QWORD
PROTO64 external,GdiFlush, 
PROTO64 external,GdiGetBatchLimit, 
PROTO64 external,GdiGetDC, :QWORD
PROTO64 external,GdiGetDevmodeForPage, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GdiGetPageCount, :QWORD
PROTO64 external,GdiGetPageHandle, :QWORD,:QWORD,:QWORD
PROTO64 external,GdiGetSpoolFileHandle, :QWORD,:QWORD,:QWORD
PROTO64 external,GdiPlayDCScript, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GdiPlayEMF, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GdiPlayJournal, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GdiPlayPageEMF, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GdiPlayPrivatePageEMF, :QWORD,:QWORD,:QWORD
PROTO64 external,GdiPlayScript, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GdiResetDCEMF, :QWORD,:QWORD
PROTO64 external,GdiSetBatchLimit, :QWORD
PROTO64 external,GdiStartDocEMF, :QWORD,:QWORD
PROTO64 external,GdiStartPageEMF, :QWORD
PROTO64 external,GetArcDirection, :QWORD
PROTO64 external,GetAspectRatioFilterEx, :QWORD,:QWORD
PROTO64 external,GetBitmapBits, :QWORD,:QWORD,:QWORD
PROTO64 external,GetBitmapDimensionEx, :QWORD,:QWORD
PROTO64 external,GetBkColor, :QWORD
PROTO64 external,GetBkMode, :QWORD
PROTO64 external,GetBoundsRect, :QWORD,:QWORD,:QWORD
PROTO64 external,GetBrushOrgEx, :QWORD,:QWORD
PROTO64 external,GetCharABCWidthsA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharABCWidthsFloatA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharABCWidthsFloatW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharABCWidthsI, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharABCWidthsW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharWidth32A, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharWidth32W, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharWidthA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharWidthFloatA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharWidthFloatW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharWidthI, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharWidthW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharacterPlacementA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetCharacterPlacementW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetClipBox, :QWORD,:QWORD
PROTO64 external,GetClipRgn, :QWORD,:QWORD
PROTO64 external,GetColorAdjustment, :QWORD,:QWORD
PROTO64 external,GetColorSpace, :QWORD
PROTO64 external,GetCurrentObject, :QWORD,:QWORD
PROTO64 external,GetCurrentPositionEx, :QWORD,:QWORD
PROTO64 external,GetDCBrushColor, :QWORD
PROTO64 external,GetDCOrgEx, :QWORD,:QWORD
PROTO64 external,GetDCPenColor, :QWORD
PROTO64 external,GetDIBColorTable, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetDIBits, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetDeviceCaps, :QWORD,:QWORD
PROTO64 external,GetDeviceGammaRamp, :QWORD,:QWORD
PROTO64 external,GetEnhMetaFileA, :QWORD
PROTO64 external,GetEnhMetaFileBits, :QWORD,:QWORD,:QWORD
PROTO64 external,GetEnhMetaFileDescriptionA, :QWORD,:QWORD,:QWORD
PROTO64 external,GetEnhMetaFileDescriptionW, :QWORD,:QWORD,:QWORD
PROTO64 external,GetEnhMetaFileHeader, :QWORD,:QWORD,:QWORD
PROTO64 external,GetEnhMetaFilePaletteEntries, :QWORD,:QWORD,:QWORD
PROTO64 external,GetEnhMetaFilePixelFormat, :QWORD,:QWORD,:QWORD
PROTO64 external,GetEnhMetaFileW, :QWORD
PROTO64 external,GetFontAssocStatus, :QWORD
PROTO64 external,GetFontData, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetFontLanguageInfo, :QWORD
PROTO64 external,GetFontResourceInfoW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetFontUnicodeRanges, :QWORD,:QWORD
PROTO64 external,GetGlyphIndicesA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetGlyphIndicesW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetGlyphOutlineA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetGlyphOutlineW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetGraphicsMode, :QWORD
PROTO64 external,GetICMProfileA, :QWORD,:QWORD,:QWORD
PROTO64 external,GetICMProfileW, :QWORD,:QWORD,:QWORD
PROTO64 external,GetKerningPairsA, :QWORD,:QWORD,:QWORD
PROTO64 external,GetKerningPairsW, :QWORD,:QWORD,:QWORD
PROTO64 external,GetLayout, :QWORD
PROTO64 external,GetLogColorSpaceA, :QWORD,:QWORD,:QWORD
PROTO64 external,GetLogColorSpaceW, :QWORD,:QWORD,:QWORD
PROTO64 external,GetMapMode, :QWORD
PROTO64 external,GetMetaFileA, :QWORD
PROTO64 external,GetMetaFileBitsEx, :QWORD,:QWORD,:QWORD
PROTO64 external,GetMetaFileW, :QWORD
PROTO64 external,GetMetaRgn, :QWORD,:QWORD
PROTO64 external,GetMiterLimit, :QWORD,:QWORD
PROTO64 external,GetNearestColor, :QWORD,:QWORD
PROTO64 external,GetNearestPaletteIndex, :QWORD,:QWORD
PROTO64 external,GetObjectA, :QWORD,:QWORD,:QWORD
PROTO64 external,GetObjectType, :QWORD
PROTO64 external,GetObjectW, :QWORD,:QWORD,:QWORD
PROTO64 external,GetOutlineTextMetricsA, :QWORD,:QWORD,:QWORD
PROTO64 external,GetOutlineTextMetricsW, :QWORD,:QWORD,:QWORD
PROTO64 external,GetPaletteEntries, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetPath, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetPixel, :QWORD,:QWORD,:QWORD
PROTO64 external,GetPixelFormat, :QWORD
PROTO64 external,GetPolyFillMode, :QWORD
PROTO64 external,GetROP2, :QWORD
PROTO64 external,GetRandomRgn, :QWORD,:QWORD,:QWORD
PROTO64 external,GetRasterizerCaps, :QWORD,:QWORD
PROTO64 external,GetRegionData, :QWORD,:QWORD,:QWORD
PROTO64 external,GetRelAbs, :QWORD,:QWORD
PROTO64 external,GetRgnBox, :QWORD,:QWORD
PROTO64 external,GetStockObject, :QWORD
PROTO64 external,GetStretchBltMode, :QWORD
PROTO64 external,GetSystemPaletteEntries, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetSystemPaletteUse, :QWORD
PROTO64 external,GetTextAlign, :QWORD
PROTO64 external,GetTextCharacterExtra, :QWORD
PROTO64 external,GetTextCharset, :QWORD
PROTO64 external,GetTextCharsetInfo, :QWORD,:QWORD,:QWORD
PROTO64 external,GetTextColor, :QWORD
PROTO64 external,GetTextExtentExPointA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextExtentExPointI, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextExtentExPointW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextExtentPoint32A, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextExtentPoint32W, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextExtentPointA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextExtentPointI, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextExtentPointW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetTextFaceA, :QWORD,:QWORD,:QWORD
PROTO64 external,GetTextFaceW, :QWORD,:QWORD,:QWORD
PROTO64 external,GetTextMetricsA, :QWORD,:QWORD
PROTO64 external,GetTextMetricsW, :QWORD,:QWORD
PROTO64 external,GetViewportExtEx, :QWORD,:QWORD
PROTO64 external,GetViewportOrgEx, :QWORD,:QWORD
PROTO64 external,GetWinMetaFileBits, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,GetWindowExtEx, :QWORD,:QWORD
PROTO64 external,GetWindowOrgEx, :QWORD,:QWORD
PROTO64 external,GetWorldTransform, :QWORD,:QWORD
PROTO64 external,IntersectClipRect, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,InvertRgn, :QWORD,:QWORD
PROTO64 external,LPtoDP, :QWORD,:QWORD,:QWORD
PROTO64 external,LineDDA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,LineTo, :QWORD,:QWORD,:QWORD
PROTO64 external,MaskBlt, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ModifyWorldTransform, :QWORD,:QWORD,:QWORD
PROTO64 external,MoveToEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,OffsetClipRgn, :QWORD,:QWORD,:QWORD
PROTO64 external,OffsetRgn, :QWORD,:QWORD,:QWORD
PROTO64 external,OffsetViewportOrgEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,OffsetWindowOrgEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PaintRgn, :QWORD,:QWORD
PROTO64 external,PatBlt, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PathToRegion, :QWORD
PROTO64 external,Pie, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PlayEnhMetaFile, :QWORD,:QWORD,:QWORD
PROTO64 external,PlayEnhMetaFileRecord, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PlayMetaFile, :QWORD,:QWORD
PROTO64 external,PlayMetaFileRecord, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PlgBlt, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PolyBezier, :QWORD,:QWORD,:QWORD
PROTO64 external,PolyBezierTo, :QWORD,:QWORD,:QWORD
PROTO64 external,PolyDraw, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PolyPolygon, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PolyPolyline, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,PolyTextOutA, :QWORD,:QWORD,:QWORD
PROTO64 external,PolyTextOutW, :QWORD,:QWORD,:QWORD
PROTO64 external,Polygon, :QWORD,:QWORD,:QWORD
PROTO64 external,Polyline, :QWORD,:QWORD,:QWORD
PROTO64 external,PolylineTo, :QWORD,:QWORD,:QWORD
PROTO64 external,PtInRegion, :QWORD,:QWORD,:QWORD
PROTO64 external,PtVisible, :QWORD,:QWORD,:QWORD
PROTO64 external,RealizePalette, :QWORD
PROTO64 external,RectInRegion, :QWORD,:QWORD
PROTO64 external,RectVisible, :QWORD,:QWORD
PROTO64 external,Rectangle, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,RemoveFontMemResourceEx, :QWORD
PROTO64 external,RemoveFontResourceA, :QWORD
PROTO64 external,RemoveFontResourceExA, :QWORD,:QWORD,:QWORD
PROTO64 external,RemoveFontResourceExW, :QWORD,:QWORD,:QWORD
PROTO64 external,RemoveFontResourceW, :QWORD
PROTO64 external,ResetDCA, :QWORD,:QWORD
PROTO64 external,ResetDCW, :QWORD,:QWORD
PROTO64 external,ResizePalette, :QWORD,:QWORD
PROTO64 external,RestoreDC, :QWORD,:QWORD
PROTO64 external,RoundRect, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SaveDC, :QWORD
PROTO64 external,ScaleViewportExtEx, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,ScaleWindowExtEx, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SelectBrushLocal, :QWORD,:QWORD
PROTO64 external,SelectClipPath, :QWORD,:QWORD
PROTO64 external,SelectClipRgn, :QWORD,:QWORD
PROTO64 external,SelectFontLocal, :QWORD,:QWORD
PROTO64 external,SelectObject, :QWORD,:QWORD
PROTO64 external,SelectPalette, :QWORD,:QWORD,:QWORD
PROTO64 external,SetAbortProc, :QWORD,:QWORD
PROTO64 external,SetArcDirection, :QWORD,:QWORD
PROTO64 external,SetBitmapBits, :QWORD,:QWORD,:QWORD
PROTO64 external,SetBitmapDimensionEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetBkColor, :QWORD,:QWORD
PROTO64 external,SetBkMode, :QWORD,:QWORD
PROTO64 external,SetBoundsRect, :QWORD,:QWORD,:QWORD
PROTO64 external,SetBrushOrgEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetColorAdjustment, :QWORD,:QWORD
PROTO64 external,SetColorSpace, :QWORD,:QWORD
PROTO64 external,SetDCBrushColor, :QWORD,:QWORD
PROTO64 external,SetDCPenColor, :QWORD,:QWORD
PROTO64 external,SetDIBColorTable, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetDIBits, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetDIBitsToDevice, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetDeviceGammaRamp, :QWORD,:QWORD
PROTO64 external,SetEnhMetaFileBits, :QWORD,:QWORD
PROTO64 external,SetFontEnumeration, :QWORD
PROTO64 external,SetGraphicsMode, :QWORD,:QWORD
PROTO64 external,SetICMMode, :QWORD,:QWORD
PROTO64 external,SetICMProfileA, :QWORD,:QWORD
PROTO64 external,SetICMProfileW, :QWORD,:QWORD
PROTO64 external,SetLayout, :QWORD,:QWORD
PROTO64 external,SetMagicColors, :QWORD,:QWORD,:QWORD
PROTO64 external,SetMapMode, :QWORD,:QWORD
PROTO64 external,SetMapperFlags, :QWORD,:QWORD
PROTO64 external,SetMetaFileBitsEx, :QWORD,:QWORD
PROTO64 external,SetMetaRgn, :QWORD
PROTO64 external,SetMiterLimit, :QWORD,:QWORD,:QWORD
PROTO64 external,SetPaletteEntries, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetPixel, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetPixelFormat, :QWORD,:QWORD,:QWORD
PROTO64 external,SetPixelV, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetPolyFillMode, :QWORD,:QWORD
PROTO64 external,SetROP2, :QWORD,:QWORD
PROTO64 external,SetRectRgn, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetRelAbs, :QWORD,:QWORD
PROTO64 external,SetStretchBltMode, :QWORD,:QWORD
PROTO64 external,SetSystemPaletteUse, :QWORD,:QWORD
PROTO64 external,SetTextAlign, :QWORD,:QWORD
PROTO64 external,SetTextCharacterExtra, :QWORD,:QWORD
PROTO64 external,SetTextColor, :QWORD,:QWORD
PROTO64 external,SetTextJustification, :QWORD,:QWORD,:QWORD
PROTO64 external,SetViewportExtEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetViewportOrgEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetWinMetaFileBits, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetWindowExtEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetWindowOrgEx, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,SetWorldTransform, :QWORD,:QWORD
PROTO64 external,StartDocA, :QWORD,:QWORD
PROTO64 external,StartDocW, :QWORD,:QWORD
PROTO64 external,StartFormPage, :QWORD
PROTO64 external,StartPage, :QWORD
PROTO64 external,StretchBlt, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,StretchDIBits, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,StrokeAndFillPath, :QWORD
PROTO64 external,StrokePath, :QWORD
PROTO64 external,SwapBuffers, :QWORD
PROTO64 external,TextOutA, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,TextOutW, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,TranslateCharsetInfo, :QWORD,:QWORD,:QWORD
PROTO64 external,UnrealizeObject, :QWORD
PROTO64 external,UpdateColors, :QWORD
PROTO64 external,UpdateICMRegKeyA, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,UpdateICMRegKeyW, :QWORD,:QWORD,:QWORD,:QWORD
PROTO64 external,WidenPath, :QWORD
PROTO64 external,gdiPlaySpoolStream, :QWORD,:QWORD,:QWORD,:QWORD,:QWORD,:QWORD

ELSE
echo -----------------------------------------
echo WARNING Duplicate include file gdi32.inc
echo -----------------------------------------
ENDIF

