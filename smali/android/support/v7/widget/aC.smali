.class public Landroid/support/v7/widget/aC;
.super Landroid/support/v4/view/b;
.source "SourceFile"


# instance fields
.field final pF:Landroid/support/v7/widget/aB;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/aB;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/support/v7/widget/aC;->pF:Landroid/support/v7/widget/aB;

    .line 104
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/aC;->pF:Landroid/support/v7/widget/aB;

    iget-object v0, v0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aC;->pF:Landroid/support/v7/widget/aB;

    iget-object v0, v0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 110
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/aC;->pF:Landroid/support/v7/widget/aB;

    iget-object v0, v0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/af;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 114
    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    const/4 p1, 0x1

    return p1

    .line 121
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/aC;->pF:Landroid/support/v7/widget/aB;

    iget-object p1, p1, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/aC;->pF:Landroid/support/v7/widget/aB;

    iget-object p1, p1, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 122
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Landroid/support/v7/widget/aC;->pF:Landroid/support/v7/widget/aB;

    iget-object p1, p1, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object p1

    .line 124
    iget-object p3, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object p1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    return p2

    .line 126
    :cond_1
    return p2
.end method
