.class Landroid/support/v4/view/Y;
.super Landroid/support/v4/view/X;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroid/support/v4/view/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 3

    .line 136
    :try_start_0
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception p2

    .line 138
    const-string v0, "ViewParentCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewParent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return-void
.end method

.method public final a(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 0

    .line 147
    :try_start_0
    invoke-interface/range {p1 .. p6}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception p2

    .line 149
    const-string p3, "ViewParentCompat"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "ViewParent "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement interface method onNestedScroll"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    return-void
.end method

.method public final a(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 0

    .line 158
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-void

    .line 159
    :catch_0
    move-exception p2

    .line 160
    const-string p3, "ViewParentCompat"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "ViewParent "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    return-void
.end method

.method public final a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .line 181
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 182
    :catch_0
    move-exception p2

    .line 183
    const-string p3, "ViewParentCompat"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "ViewParent "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement interface method onNestedPreFling"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 0

    .line 169
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 170
    :catch_0
    move-exception p2

    .line 171
    const-string p3, "ViewParentCompat"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "ViewParent "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement interface method onNestedFling"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 114
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 115
    :catch_0
    move-exception p2

    .line 116
    const-string p3, "ViewParentCompat"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "ViewParent "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement interface method onStartNestedScroll"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 126
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 127
    :catch_0
    move-exception p2

    .line 128
    const-string p3, "ViewParentCompat"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "ViewParent "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return-void
.end method
