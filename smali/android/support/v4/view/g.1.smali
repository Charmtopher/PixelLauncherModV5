.class public final Landroid/support/v4/view/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getAbsoluteGravity(II)I
    .locals 2

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 146
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0

    .line 149
    :cond_0
    const p1, -0x800001

    and-int/2addr p0, p1

    return p0
.end method
