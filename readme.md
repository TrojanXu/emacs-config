;;
;;
;;
窗口重排：
C-x+| 分成两个竖着的窗口
C-x+_ 分成横的（上下）

窗口分割：
C-x 2   //垂直分割
C-x 3   //水平分割

C-x 4 r //redo窗口操作
C-x 4 u //undo窗口操作

窗口切换：
M+数字


buffer切换：
C-x left/right //左右切换
C-x b 	       //切换到某个buffer
C-x k 	       //kill某个buffer
C-x C-b	       //列出buffer列表



C-w  //剪切区域
M-w  //粘贴区域


M-/  //自动补齐
M-； //注释

M-;  //expand-region
M-'  //contract-region


(global-set-key (kbd "C-x e") 'mc/edit-lines)   //编辑选中行   还是这个好用点
(global-set-key (kbd "C->") 'mc/mark-next-lines) //选中下一行
(global-set-key (kbd "C-<") 'mc/mark-previous-lines) //选中前一行