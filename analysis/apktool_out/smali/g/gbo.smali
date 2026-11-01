.class public abstract Lg/gbo;
.super Lg/baf;
.source "SourceFile"


# direct methods
.method public static a(Lg/cfm;Lg/guv;Lg/fza;)Z
    .locals 11

    iget-object v0, p1, Lg/guv;->i:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v2, p0, Lg/cab;

    if-eqz v2, :cond_1

    check-cast p0, Lg/cab;

    iget-object p0, p0, Lg/cab;->y:Lg/eys;

    invoke-static {p0, p1, p2}, Lg/gbo;->a(Lg/cfm;Lg/guv;Lg/fza;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v2, p0, Lg/foe;

    if-eqz v2, :cond_2

    check-cast p0, Lg/bjk;

    iget-object p0, p0, Lg/bjk;->d:Lg/cfm;

    invoke-static {p0, p1, p2}, Lg/gbo;->a(Lg/cfm;Lg/guv;Lg/fza;)Z

    move-result p0

    return p0

    :cond_2
    new-instance v2, Lg/eys;

    invoke-direct {v2, p0}, Lg/eys;-><init>(Lg/cfm;)V

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v6, v2, Lg/eys;->g:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/amj;

    invoke-static {p2, v5}, Lg/gs;->w(Lg/fza;Lg/amj;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/aea;

    iget-object v8, v8, Lg/aea;->i:Lg/fza;

    if-eqz v8, :cond_4

    sget-object v9, Lg/csv;->REMOVE:Lg/csv;

    iget-object v10, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v8, v5}, Lg/gs;->w(Lg/fza;Lg/amj;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_5
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p2, Lg/bmn;

    invoke-direct {p2, p0, v2}, Lg/bmn;-><init>(Lg/cfm;Lg/eys;)V

    iput-object p2, v2, Lg/bjk;->d:Lg/cfm;

    iput-object p1, p2, Lg/bmn;->g:Lg/guv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v4, p2, Lg/bmn;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aea;

    iget-object v4, v0, Lg/aea;->d:Lg/eys;

    if-eqz v4, :cond_8

    iget-boolean v5, v0, Lg/aea;->b:Z

    if-eqz v5, :cond_9

    iput-object v4, p2, Lg/bmn;->h:Lg/amj;

    goto :goto_1

    :cond_9
    iget-object v5, p2, Lg/bmn;->j:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    invoke-interface {p0, p1, p2}, Lg/cfm;->f(Lg/amj;Lg/amj;)Z

    move-result p0

    if-nez p0, :cond_b

    :goto_2
    return v1

    :cond_b
    invoke-interface {v3, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    instance-of p2, p1, Lg/bjk;

    if-eqz p2, :cond_c

    check-cast p1, Lg/bjk;

    iput-object v2, p1, Lg/bjk;->d:Lg/cfm;

    goto :goto_3

    :cond_d
    const/4 p0, 0x1

    return p0
.end method
