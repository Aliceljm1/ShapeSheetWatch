ShapeSheetWatch
=================

Visio ShapeSheet watch window

��װvisio,��װhtmlayout

��Ҫ�Ĺ������ռ����ԣ��ŵ�һ����������У�
���Ĺ��ܺ�����void CAddinApp::OnCommand(UINT id)

�Ҽ��˵�ͨ�������ƶ�ӦContextMenuShapeSheet
    <contextMenu idMso="ContextMenuShapeSheet">



/********************************************************************/
���ɣ�
<contextMenu idMso="ContextMenuWorkbookPly">
                     <button idMso="SheetInsertPage"  enabled="false" />
                     <button idMso="SheetDelete"  enabled="false" />
                     <button idMso="SheetRename"  enabled="false" />
                     <button idMso="SheetMoveOrCopy"  enabled="false" />
                     <button idMso="SheetProtect"  enabled="false" />
                     <button idMso="ViewVisualBasicCode"  enabled="false" />
 </contextMenu>

�Ƿ���Ҫʵ�ֽӿڣ�
IShellExtInit,IContextMenu,

