ShapeSheetWatch
=================

Visio ShapeSheet watch window

安装visio,安装htmlayout

主要的功能是收集属性，放到一个单独面板中：
核心功能函数：void CAddinApp::OnCommand(UINT id)

右键菜单通过此名称对应ContextMenuShapeSheet
    <contextMenu idMso="ContextMenuShapeSheet">



/********************************************************************/
存疑；
<contextMenu idMso="ContextMenuWorkbookPly">
                     <button idMso="SheetInsertPage"  enabled="false" />
                     <button idMso="SheetDelete"  enabled="false" />
                     <button idMso="SheetRename"  enabled="false" />
                     <button idMso="SheetMoveOrCopy"  enabled="false" />
                     <button idMso="SheetProtect"  enabled="false" />
                     <button idMso="ViewVisualBasicCode"  enabled="false" />
 </contextMenu>

是否需要实现接口，
IShellExtInit,IContextMenu,

