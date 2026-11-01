.class public abstract Lg/ewg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ewg;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ewg;->a:Lg/dba;

    return-void
.end method

.method public static b(Lg/cci;Lg/gyo;Z)V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->f:Lg/dxb;

    iget-object v1, v1, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v1, Lg/bqm;

    iget-object v1, v1, Lg/bqm;->a:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lg/esa;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lg/esa;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lj$/util/Map$b;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cci;

    new-instance v4, Lg/duk;

    invoke-direct {v4, v3}, Lg/duk;-><init>(Lg/cci;)V

    invoke-virtual {v3}, Lg/cci;->av()V

    iget-object v5, v3, Lg/cci;->ag:Ljava/util/List;

    new-instance v6, Lg/dti;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lg/dti;-><init>(Lg/duk;I)V

    invoke-static {v5, v6}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v3, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v3}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/gyo;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/azy;

    iget-object v3, v2, Lg/azy;->g:Ljava/lang/String;

    iget-object v4, v2, Lg/azy;->b:Ljava/lang/String;

    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lg/bih;

    invoke-direct {v5, p0, p2}, Lg/bih;-><init>(Lg/cci;Z)V

    invoke-static {v1, v3, v5}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/duk;

    iget-object v5, v3, Lg/duk;->b:Ljava/util/HashMap;

    new-instance v6, Lg/ly;

    invoke-direct {v6, v3, v4, v2, p2}, Lg/ly;-><init>(Lg/duk;Ljava/lang/String;Lg/azy;Z)V

    invoke-static {v5, v4, v6}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    iget v2, v2, Lg/azy;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hcd;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lg/hcd;->g:Lg/dsj;

    iget-object v5, v3, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v5, v5, Lg/dwg;->i:Lg/ur;

    iget-object v5, v5, Lg/ur;->r:Ljava/util/EnumSet;

    sget-object v6, Lg/ffl;->VALID:Lg/ffl;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lg/csv;->DONT_RENAME:Lg/csv;

    invoke-virtual {v2, v5}, Lg/lh;->w(Lg/csv;)V

    iput-object v4, v3, Lg/dsj;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-void
.end method
