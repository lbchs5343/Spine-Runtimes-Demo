.class public final Lg/cmf;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lg/bgf;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cmf;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/cmf;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final ad(Lg/hed;Lg/cih;Lg/cfm;)V
    .locals 2

    new-instance p1, Lg/gjz;

    invoke-direct {p1, p3, p2}, Lg/gjz;-><init>(Lg/cfm;Lg/cih;)V

    instance-of v0, p3, Lg/cab;

    if-eqz v0, :cond_0

    check-cast p3, Lg/cab;

    iget-object p3, p3, Lg/cab;->j:Lg/buj;

    instance-of v0, p3, Lg/k;

    if-eqz v0, :cond_0

    check-cast p3, Lg/k;

    iget-object v0, p3, Lg/k;->_l:Lg/eek;

    invoke-virtual {p0, v0, p1}, Lg/cmf;->c(Lg/eek;Lg/gjz;)V

    iget-object p3, p3, Lg/k;->_m:Lg/eek;

    invoke-virtual {p0, p3, p1}, Lg/cmf;->c(Lg/eek;Lg/gjz;)V

    :cond_0
    invoke-interface {p2}, Lg/cih;->c()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-interface {p2}, Lg/cih;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    invoke-virtual {p0, v1, p1}, Lg/cmf;->c(Lg/eek;Lg/gjz;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Lg/eek;Lg/gjz;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lg/eek;->ai:Lg/gks;

    iget-object v1, p0, Lg/cmf;->b:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v3, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lg/gks;->a:Lg/vm;

    new-instance v2, Lg/fov;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lg/fov;-><init>(I)V

    invoke-static {v1, v0, v2}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bjo;

    iget-object v0, v0, Lg/bjo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lg/cmf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0}, Lg/eek;->h(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gks;

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v3, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lg/gks;->a:Lg/vm;

    new-instance v2, Lg/fov;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lg/fov;-><init>(I)V

    invoke-static {v1, v0, v2}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bjo;

    iget-object v0, v0, Lg/bjo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
