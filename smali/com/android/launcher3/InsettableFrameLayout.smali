.class public Lcom/android/launcher3/InsettableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field protected mInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    .line 23
    return-void
.end method

.method public static dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 4

    .line 98
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 99
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 101
    instance-of v3, v2, Lcom/android/launcher3/Insettable;

    if-eqz v3, :cond_0

    .line 102
    check-cast v2, Lcom/android/launcher3/Insettable;

    invoke-interface {v2, p1}, Lcom/android/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 62
    instance-of p1, p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 2

    .line 56
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 2

    .line 51
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .line 67
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 95
    return-void
.end method

.method public final setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 28
    instance-of v1, p1, Lcom/android/launcher3/Insettable;

    if-eqz v1, :cond_0

    .line 29
    move-object p3, p1

    check-cast p3, Lcom/android/launcher3/Insettable;

    invoke-interface {p3, p2}, Lcom/android/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    if-nez v1, :cond_1

    .line 31
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 32
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    .line 33
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->rightMargin:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->rightMargin:I

    .line 34
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->getChildCount()I

    move-result v0

    .line 42
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/launcher3/InsettableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    return-void
.end method
