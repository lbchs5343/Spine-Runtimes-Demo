.class public final Lg/cis;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# virtual methods
.method public c(Lg/dpa;Lg/dzh;)V
    .locals 10

    iget-object v0, p0, Lg/cis;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    new-instance v1, Lg/cpt;

    invoke-direct {v1, p2}, Lg/cpt;-><init>(Lg/dzh;)V

    iget-object v2, p0, Lg/cis;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p2, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v5, Lg/guq;

    invoke-virtual {v5}, Lg/guq;->d()Lg/guq;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dxk;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Lg/dxk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    move-result-object v4

    instance-of v6, v4, Lg/hbz;

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    check-cast v4, Lg/hbz;

    iget-object v4, v4, Lg/hbz;->a:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lg/byh;->az(D)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    if-ne v4, v7, :cond_0

    :cond_2
    iput-object v5, p2, Lg/dzh;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dxk;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lg/dxk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    move-result-object v2

    instance-of v3, v2, Lg/hbz;

    if-eqz v3, :cond_4

    check-cast v2, Lg/hbz;

    iget-object v2, v2, Lg/hbz;->a:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lg/byh;->az(D)I

    goto :goto_2

    :cond_5
    return-void
.end method
