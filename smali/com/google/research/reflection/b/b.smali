.class public Lcom/google/research/reflection/b/b;
.super Lcom/google/research/reflection/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/research/reflection/b/a;-><init>()V

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/research/reflection/b/b;->Yo:I

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/research/reflection/b/a;-><init>(I)V

    .line 28
    const/4 p1, 0x5

    iput p1, p0, Lcom/google/research/reflection/b/b;->Yo:I

    .line 29
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;JJI)Ljava/util/ArrayList;
    .locals 5

    .line 70
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 72
    sget-object v0, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaR:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    .line 73
    invoke-static {p1, v0}, Lcom/google/research/reflection/a/b;->a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Ljava/util/List;

    move-result-object p1

    .line 76
    new-instance v0, Lcom/google/research/reflection/b/c;

    invoke-direct {v0}, Lcom/google/research/reflection/b/c;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 86
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 87
    cmp-long v1, v1, p3

    if-gtz v1, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/research/reflection/b/b;->a(Ljava/lang/String;J)I

    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/a/d;

    .line 90
    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p6}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v1, p7, :cond_2

    .line 92
    new-instance v1, Lcom/google/research/reflection/a/d;

    invoke-direct {v1, v0}, Lcom/google/research/reflection/a/d;-><init>(I)V

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    iget v0, v1, Lcom/google/research/reflection/a/d;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    iput v0, v1, Lcom/google/research/reflection/a/d;->value:F

    .line 99
    :cond_1
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    return-object p5
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/research/reflection/b/b;->hw()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/research/reflection/signal/ReflectionEvent;)Z
    .locals 1

    .line 52
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->dh()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object p1

    sget-object v0, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaR:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne p1, v0, :cond_0

    .line 53
    const/4 p1, 0x1

    return p1

    .line 55
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "local_app_usage_history"

    return-object v0
.end method

.method public final synthetic ht()Lcom/google/research/reflection/b/a;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/research/reflection/b/b;->hw()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hv()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/research/reflection/b/b;->hw()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final hw()Lcom/google/research/reflection/b/b;
    .locals 5

    .line 33
    new-instance v0, Lcom/google/research/reflection/b/b;

    iget v1, p0, Lcom/google/research/reflection/b/b;->Yl:I

    invoke-direct {v0, v1}, Lcom/google/research/reflection/b/b;-><init>(I)V

    .line 34
    iget-object v1, p0, Lcom/google/research/reflection/b/b;->Yi:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    iget-object v3, v0, Lcom/google/research/reflection/b/b;->Yi:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/google/research/reflection/b/b;->Yj:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    iget-object v3, v0, Lcom/google/research/reflection/b/b;->Yj:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/google/research/reflection/b/b;->Yk:[Z

    iget-object v2, p0, Lcom/google/research/reflection/b/b;->Yk:[Z

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/b/b;->Yk:[Z

    .line 41
    iget-object v1, p0, Lcom/google/research/reflection/b/b;->Yr:Lcom/google/research/reflection/b/m;

    iput-object v1, v0, Lcom/google/research/reflection/b/g;->Yr:Lcom/google/research/reflection/b/m;

    .line 42
    return-object v0
.end method
