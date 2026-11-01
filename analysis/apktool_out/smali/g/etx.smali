.class public final Lg/etx;
.super Lg/bfm;
.source "SourceFile"


# virtual methods
.method public final c(Lg/eie;)Z
    .locals 3

    iget-object v0, p0, Lg/bfm;->a:Lg/eek;

    iget-object v1, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {p1, v1}, Lg/eie;->p(Lg/gsh;)Lg/cwx;

    move-result-object v1

    iget-object v0, v0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gsh;

    invoke-virtual {p1, v2}, Lg/eie;->p(Lg/gsh;)Lg/cwx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
