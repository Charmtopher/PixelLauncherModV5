.class Lcom/android/launcher3/allapps/AllAppsContainerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field final synthetic val$dragController:Lcom/android/launcher3/dragndrop/DragController;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$1;->val$dragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragEnd()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$1;->val$dragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 277
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$1;->val$v:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method
