.class public abstract Landroid/support/v7/widget/aE;
.super Landroid/support/v7/widget/aa;
.source "SourceFile"


# instance fields
.field pG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/aa;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aE;->pG:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/aA;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/aA;IIII)Z
.end method

.method public abstract a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;IIII)Z
.end method

.method public final a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
    .locals 7

    .line 153
    iget v3, p3, Landroid/support/v7/widget/ac;->left:I

    .line 154
    iget v4, p3, Landroid/support/v7/widget/ac;->top:I

    .line 156
    invoke-virtual {p2}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget p4, p3, Landroid/support/v7/widget/ac;->left:I

    .line 158
    iget p3, p3, Landroid/support/v7/widget/ac;->top:I

    .line 163
    move v6, p3

    move v5, p4

    goto :goto_0

    .line 160
    :cond_0
    iget p3, p4, Landroid/support/v7/widget/ac;->left:I

    .line 161
    iget p4, p4, Landroid/support/v7/widget/ac;->top:I

    .line 163
    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/aE;->a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;IIII)Z

    move-result p1

    return p1
.end method

.method public abstract b(Landroid/support/v7/widget/aA;)Z
.end method

.method public final canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroid/support/v7/widget/aE;->pG:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
    .locals 6

    .line 92
    iget v2, p2, Landroid/support/v7/widget/ac;->left:I

    .line 93
    iget v3, p2, Landroid/support/v7/widget/ac;->top:I

    .line 94
    iget-object p2, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 95
    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 96
    :goto_0
    move v4, v0

    goto :goto_1

    .line 95
    :cond_0
    iget v0, p3, Landroid/support/v7/widget/ac;->left:I

    goto :goto_0

    .line 96
    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    .line 97
    :goto_2
    move v5, p3

    goto :goto_3

    .line 96
    :cond_1
    iget p3, p3, Landroid/support/v7/widget/ac;->top:I

    goto :goto_2

    .line 97
    :goto_3
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    .line 98
    :cond_2
    nop

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 98
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 104
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aE;->a(Landroid/support/v7/widget/aA;IIII)Z

    move-result p1

    return p1

    .line 109
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aE;->a(Landroid/support/v7/widget/aA;)Z

    move-result p1

    return p1
.end method

.method public final e(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
    .locals 8

    .line 116
    if-eqz p2, :cond_1

    iget v0, p2, Landroid/support/v7/widget/ac;->left:I

    iget v1, p3, Landroid/support/v7/widget/ac;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/support/v7/widget/ac;->top:I

    iget v1, p3, Landroid/support/v7/widget/ac;->top:I

    if-eq v0, v1, :cond_1

    .line 122
    :cond_0
    iget v4, p2, Landroid/support/v7/widget/ac;->left:I

    iget v5, p2, Landroid/support/v7/widget/ac;->top:I

    iget v6, p3, Landroid/support/v7/widget/ac;->left:I

    iget v7, p3, Landroid/support/v7/widget/ac;->top:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/aE;->a(Landroid/support/v7/widget/aA;IIII)Z

    move-result p1

    return p1

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aE;->b(Landroid/support/v7/widget/aA;)Z

    move-result p1

    return p1
.end method

.method public final f(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
    .locals 6

    .line 135
    iget v0, p2, Landroid/support/v7/widget/ac;->left:I

    iget v1, p3, Landroid/support/v7/widget/ac;->left:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroid/support/v7/widget/ac;->top:I

    iget v1, p3, Landroid/support/v7/widget/ac;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aE;->h(Landroid/support/v7/widget/aA;)V

    .line 144
    const/4 p1, 0x0

    return p1

    .line 140
    :cond_1
    :goto_0
    iget v2, p2, Landroid/support/v7/widget/ac;->left:I

    iget v3, p2, Landroid/support/v7/widget/ac;->top:I

    iget v4, p3, Landroid/support/v7/widget/ac;->left:I

    iget v5, p3, Landroid/support/v7/widget/ac;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aE;->a(Landroid/support/v7/widget/aA;IIII)Z

    move-result p1

    return p1
.end method
