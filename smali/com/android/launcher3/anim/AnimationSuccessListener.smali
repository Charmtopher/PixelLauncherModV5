.class public abstract Lcom/android/launcher3/anim/AnimationSuccessListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field protected mCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 31
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    .line 32
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 36
    iget-boolean p1, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationSuccess$5c3ae1ee()V

    .line 39
    :cond_0
    return-void
.end method

.method public abstract onAnimationSuccess$5c3ae1ee()V
.end method
