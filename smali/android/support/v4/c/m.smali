.class final Landroid/support/v4/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic jd:Landroid/support/v4/c/j;


# direct methods
.method constructor <init>(Landroid/support/v4/c/j;)V
    .locals 0

    .line 267
    iput-object p1, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 271
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 276
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aC()V

    .line 282
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 286
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/j;->j(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    .line 291
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aB()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 341
    invoke-static {p0, p1}, Landroid/support/v4/c/j;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 346
    nop

    .line 347
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 348
    iget-object v3, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/c/j;->e(II)Ljava/lang/Object;

    move-result-object v3

    .line 349
    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 351
    :cond_1
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 301
    new-instance v0, Landroid/support/v4/c/k;

    iget-object v1, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/c/k;-><init>(Landroid/support/v4/c/j;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/j;->j(Ljava/lang/Object;)I

    move-result p1

    .line 307
    if-ltz p1, :cond_0

    .line 308
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/j;->r(I)V

    .line 309
    const/4 p1, 0x1

    return p1

    .line 311
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 316
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aB()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-eq v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 321
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aB()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aA()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 331
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/c/j;->w(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 336
    iget-object v0, p0, Landroid/support/v4/c/m;->jd:Landroid/support/v4/c/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/c/j;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
