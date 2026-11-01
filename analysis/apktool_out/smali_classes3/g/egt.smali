.class public final Lg/egt;
.super Lg/dgb;
.source "SourceFile"


# virtual methods
.method public final c(JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p1, p2, p3}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwe;

    check-cast p1, Lg/gzj;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lg/gzj;->f:Z

    return-void
.end method

.method public final d(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p1, p2, p3}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cwe;

    invoke-virtual {v0, p1, p2, p4}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/cwe;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    move-object v3, v1

    check-cast v3, Lg/gzj;

    iget-boolean v3, v3, Lg/gzj;->f:Z

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    invoke-interface {v1, v2}, Lg/cwe;->zzd(I)Lg/cwe;

    move-result-object v1

    :cond_0
    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p4, v1

    :goto_0
    invoke-static {p1, p2, p3, p4}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
