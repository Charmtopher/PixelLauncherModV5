.class Landroid/support/v7/widget/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field lc:Landroid/widget/OverScroller;

.field mInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic oD:Landroid/support/v7/widget/RecyclerView;

.field pA:I

.field pB:I

.field private pC:Z

.field private pD:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 4907
    iput-object p1, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4898
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/az;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4902
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/az;->pC:Z

    .line 4905
    iput-boolean v0, p0, Landroid/support/v7/widget/az;->pD:Z

    .line 4908
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/az;->lc:Landroid/widget/OverScroller;

    .line 4909
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/az;)Landroid/widget/OverScroller;
    .locals 0

    .line 4894
    iget-object p0, p0, Landroid/support/v7/widget/az;->lc:Landroid/widget/OverScroller;

    return-object p0
.end method


# virtual methods
.method final b(IIII)I
    .locals 6

    .line 5088
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5089
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5090
    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5091
    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    .line 5092
    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 5093
    if-eqz v2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    .line 5094
    :goto_1
    div-int/lit8 p4, p2, 0x2

    .line 5095
    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 5096
    int-to-float p4, p4

    .line 5097
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr p1, v4

    const v4, 0x3ef1463b

    mul-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p1, v4

    mul-float/2addr p1, p4

    add-float/2addr p4, p1

    .line 5100
    if-lez p3, :cond_2

    .line 5101
    const/4 p1, 0x4

    const/high16 p2, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr p1, p2

    goto :goto_3

    .line 5103
    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    .line 5104
    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 5106
    :goto_3
    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final b(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 5119
    iget-object v0, p0, Landroid/support/v7/widget/az;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 5120
    iput-object p4, p0, Landroid/support/v7/widget/az;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5121
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/az;->lc:Landroid/widget/OverScroller;

    .line 5123
    :cond_0
    iget-object p4, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5124
    const/4 p4, 0x0

    iput p4, p0, Landroid/support/v7/widget/az;->pB:I

    iput p4, p0, Landroid/support/v7/widget/az;->pA:I

    .line 5125
    iget-object v0, p0, Landroid/support/v7/widget/az;->lc:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5126
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_1

    .line 5130
    iget-object p1, p0, Landroid/support/v7/widget/az;->lc:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5132
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->bA()V

    .line 5133
    return-void
.end method

.method final bA()V
    .locals 1

    .line 5057
    iget-boolean v0, p0, Landroid/support/v7/widget/az;->pC:Z

    if-eqz v0, :cond_0

    .line 5058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/az;->pD:Z

    return-void

    .line 5060
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5061
    iget-object v0, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/s;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5063
    return-void
.end method

.method public final f(III)V
    .locals 1

    .line 5110
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/az;->b(IIILandroid/view/animation/Interpolator;)V

    .line 5111
    return-void
.end method

.method public run()V
    .locals 24

    .line 4913
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v1, :cond_0

    .line 4914
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/az;->stop()V

    .line 4915
    return-void

    .line 4917
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/az;->pD:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/az;->pC:Z

    .line 4918
    iget-object v3, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4921
    iget-object v3, v0, Landroid/support/v7/widget/az;->lc:Landroid/widget/OverScroller;

    .line 4922
    iget-object v4, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v4, v4, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    .line 4923
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 4924
    iget-object v5, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v5

    .line 4925
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 4926
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 4927
    iget v6, v0, Landroid/support/v7/widget/az;->pA:I

    sub-int v14, v12, v6

    .line 4928
    iget v6, v0, Landroid/support/v7/widget/az;->pB:I

    sub-int v15, v13, v6

    .line 4929
    nop

    .line 4930
    nop

    .line 4931
    iput v12, v0, Landroid/support/v7/widget/az;->pA:I

    .line 4932
    iput v13, v0, Landroid/support/v7/widget/az;->pB:I

    .line 4933
    nop

    .line 4935
    iget-object v6, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move v7, v14

    move v8, v15

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4936
    aget v6, v5, v1

    sub-int/2addr v14, v6

    .line 4937
    aget v5, v5, v2

    sub-int/2addr v15, v5

    .line 4940
    :cond_1
    iget-object v5, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v5, :cond_6

    .line 4941
    iget-object v5, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4942
    iget-object v5, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4943
    const-string v5, "RV Scroll"

    invoke-static {v5}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    .line 4944
    iget-object v5, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/ax;)V

    .line 4945
    if-eqz v14, :cond_2

    .line 4946
    iget-object v5, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v6, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v7, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v5, v14, v6, v7}, Landroid/support/v7/widget/af;->scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result v5

    .line 4947
    sub-int v6, v14, v5

    goto :goto_0

    .line 4949
    :cond_2
    move v5, v1

    move v6, v5

    :goto_0
    if-eqz v15, :cond_3

    .line 4950
    iget-object v7, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v8, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v7, v15, v8, v9}, Landroid/support/v7/widget/af;->scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result v7

    .line 4951
    sub-int v8, v15, v7

    goto :goto_1

    .line 4953
    :cond_3
    move v7, v1

    move v8, v7

    :goto_1
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 4954
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4956
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4957
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4959
    if-eqz v4, :cond_7

    iget-boolean v9, v4, Landroid/support/v7/widget/au;->pe:Z

    if-nez v9, :cond_7

    .line 4960
    iget-boolean v9, v4, Landroid/support/v7/widget/au;->av:Z

    if-eqz v9, :cond_7

    .line 4961
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v9}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v9

    .line 4962
    if-nez v9, :cond_4

    .line 4963
    invoke-virtual {v4}, Landroid/support/v7/widget/au;->stop()V

    goto :goto_2

    .line 4964
    :cond_4
    iget v10, v4, Landroid/support/v7/widget/au;->pd:I

    if-lt v10, v9, :cond_5

    .line 4965
    sub-int/2addr v9, v2

    iput v9, v4, Landroid/support/v7/widget/au;->pd:I

    .line 4966
    :cond_5
    sub-int v9, v14, v6

    sub-int v10, v15, v8

    invoke-static {v4, v9, v10}, Landroid/support/v7/widget/au;->a(Landroid/support/v7/widget/au;II)V

    goto :goto_2

    .line 4972
    :cond_6
    move v5, v1

    move v6, v5

    move v7, v6

    move v8, v7

    :cond_7
    :goto_2
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 4973
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4975
    :cond_8
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9

    .line 4976
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v14, v15}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4979
    :cond_9
    iget-object v9, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v9

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v20, v8

    invoke-virtual/range {v16 .. v22}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v9

    if-nez v9, :cond_13

    if-nez v6, :cond_a

    if-eqz v8, :cond_13

    .line 4982
    :cond_a
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v9

    float-to-int v9, v9

    .line 4984
    nop

    .line 4985
    if-eq v6, v12, :cond_d

    .line 4986
    if-gez v6, :cond_b

    neg-int v11, v9

    goto :goto_3

    :cond_b
    if-lez v6, :cond_c

    .line 4989
    move v11, v9

    goto :goto_3

    .line 4986
    :cond_c
    nop

    .line 4989
    :cond_d
    move v11, v1

    .line 4990
    :goto_3
    if-eq v8, v13, :cond_f

    .line 4991
    if-gez v8, :cond_e

    neg-int v9, v9

    goto :goto_4

    :cond_e
    if-lez v8, :cond_f

    goto :goto_4

    .line 4994
    :cond_f
    move v9, v1

    :goto_4
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    if-eq v1, v10, :cond_10

    .line 4995
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v11, v9}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 4997
    :cond_10
    if-nez v11, :cond_11

    if-eq v6, v12, :cond_11

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    if-nez v9, :cond_12

    if-eq v8, v13, :cond_12

    .line 4998
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    if-nez v1, :cond_13

    .line 4999
    :cond_12
    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5002
    :cond_13
    if-nez v5, :cond_14

    if-eqz v7, :cond_15

    .line 5003
    :cond_14
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5, v7}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5006
    :cond_15
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 5007
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 5010
    :cond_16
    if-eqz v15, :cond_17

    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_17

    if-ne v7, v15, :cond_17

    .line 5012
    move v1, v2

    goto :goto_5

    .line 5010
    :cond_17
    nop

    .line 5012
    const/4 v1, 0x0

    :goto_5
    if-eqz v14, :cond_18

    iget-object v6, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v6}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v6

    if-eqz v6, :cond_18

    if-ne v5, v14, :cond_18

    .line 5014
    move v5, v2

    goto :goto_6

    .line 5012
    :cond_18
    nop

    .line 5014
    const/4 v5, 0x0

    :goto_6
    if-nez v14, :cond_19

    if-eqz v15, :cond_1b

    :cond_19
    if-nez v5, :cond_1b

    if-eqz v1, :cond_1a

    goto :goto_7

    .line 5017
    :cond_1a
    const/4 v1, 0x0

    goto :goto_8

    .line 5014
    :cond_1b
    :goto_7
    nop

    .line 5017
    move v1, v2

    :goto_8
    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1d

    if-nez v1, :cond_1c

    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 5018
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_9

    .line 5026
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/az;->bA()V

    .line 5027
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    if-eqz v1, :cond_1f

    .line 5028
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    iget-object v2, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v14, v15}, Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_a

    .line 5020
    :cond_1d
    :goto_9
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5021
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5022
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v1}, Landroid/support/v7/widget/y;->bi()V

    .line 5024
    :cond_1e
    iget-object v1, v0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 5033
    :cond_1f
    :goto_a
    if-eqz v4, :cond_21

    .line 5034
    iget-boolean v1, v4, Landroid/support/v7/widget/au;->pe:Z

    if-eqz v1, :cond_20

    .line 5035
    const/4 v1, 0x0

    invoke-static {v4, v1, v1}, Landroid/support/v7/widget/au;->a(Landroid/support/v7/widget/au;II)V

    .line 5037
    :cond_20
    iget-boolean v1, v0, Landroid/support/v7/widget/az;->pD:Z

    if-nez v1, :cond_21

    .line 5038
    invoke-virtual {v4}, Landroid/support/v7/widget/au;->stop()V

    .line 5041
    :cond_21
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/az;->pC:Z

    iget-boolean v1, v0, Landroid/support/v7/widget/az;->pD:Z

    if-eqz v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/az;->bA()V

    .line 5042
    :cond_22
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 5136
    iget-object v0, p0, Landroid/support/v7/widget/az;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5137
    iget-object v0, p0, Landroid/support/v7/widget/az;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5138
    return-void
.end method
