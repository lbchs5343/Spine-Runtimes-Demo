.class public final Lg/glq;
.super Lg/pj;
.source "SourceFile"

# interfaces
.implements Lg/avy;


# instance fields
.field public a:Z

.field public b:Lg/fbc;


# virtual methods
.method public final _bq(Lg/hed;Lg/cfm;)Z
    .locals 4

    iget-boolean p1, p0, Lg/glq;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lg/eln;

    if-eqz p1, :cond_3

    check-cast p2, Lg/eln;

    iget-object p1, p2, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/adk;

    iget-object p2, p2, Lg/adk;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lg/hcd;

    if-eqz v2, :cond_2

    check-cast v1, Lg/hcd;

    iget-object v1, v1, Lg/hcd;->f:Lg/cci;

    invoke-virtual {v1}, Lg/cci;->bd()Lg/cci;

    move-result-object v1

    sget-object v2, Lg/ewg;->a:Lg/dba;

    iget-object v2, v1, Lg/cci;->ai:Lg/cci;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.R"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/glq;->a:Z

    iget-object p1, p0, Lg/glq;->b:Lg/fbc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return v0
.end method

.method public final c(Lg/ks;)Z
    .locals 4

    if-eqz p1, :cond_3

    iget-object p1, p1, Lg/ks;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fpa;

    iget-object v1, v0, Lg/fpa;->a:Lg/any;

    sget-object v2, Lg/any;->SYSTEM:Lg/any;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/fpa;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ghr;

    iget-object v1, v1, Lg/ghr;->f:Ljava/lang/Object;

    instance-of v2, v1, Lg/chf;

    if-eqz v2, :cond_2

    check-cast v1, Lg/chf;

    invoke-interface {v1}, Lg/chf;->c()Lg/dsj;

    move-result-object v1

    iget-object v1, v1, Lg/dsj;->d:Lg/ve;

    iget-object v1, v1, Lg/ve;->c:Lg/ve;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lg/ve;->e:Ljava/lang/String;

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lg/ve;->b:Ljava/lang/String;

    const-string v2, "android.R"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lg/glq;->b:Lg/fbc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lg/dwg;)V
    .locals 0

    iget-object p1, p1, Lg/dwg;->c:Lg/fbc;

    iput-object p1, p0, Lg/glq;->b:Lg/fbc;

    return-void
.end method

.method public final j(Lg/hed;)V
    .locals 2

    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/ks;

    invoke-virtual {p0, v0}, Lg/glq;->c(Lg/ks;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/glq;->a:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lg/glq;->a:Z

    if-nez v0, :cond_2

    sget-object v0, Lg/fuu;->SWITCH:Lg/fuu;

    invoke-static {p1, v0}, Lg/ddx;->b(Lg/hed;Lg/fuu;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, Lg/buj;->ax(Lg/hed;Lg/avy;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k(Lg/cci;)Z
    .locals 1

    iget-boolean v0, p0, Lg/glq;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/ks;

    invoke-virtual {p0, p1}, Lg/glq;->c(Lg/ks;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
