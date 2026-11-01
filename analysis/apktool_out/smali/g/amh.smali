.class public final Lg/amh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cag;

.field public final b:Lg/hed;

.field public final c:Lg/eie;

.field public final d:Lg/cwm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/amh;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/hed;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/amh;->b:Lg/hed;

    new-instance v0, Lg/eie;

    invoke-direct {v0, p1}, Lg/eie;-><init>(Lg/hed;)V

    iput-object v0, p0, Lg/amh;->c:Lg/eie;

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    iget-object p1, p1, Lg/cci;->ab:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->u:Lg/cag;

    iput-object p1, p0, Lg/amh;->a:Lg/cag;

    iget-object p1, p1, Lg/cag;->e:Lg/cwm;

    iput-object p1, p0, Lg/amh;->d:Lg/cwm;

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 9

    iget-object v0, p0, Lg/amh;->b:Lg/hed;

    iget-object v1, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1388

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multi-variable search skipped. Vars limit reached: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected less than 5000)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v3

    :cond_0
    iget-object v1, v0, Lg/hed;->at:Ljava/util/List;

    new-instance v2, Lg/cwo;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lg/cwo;-><init>(Lg/amh;I)V

    invoke-static {v1, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lg/hed;->at:Ljava/util/List;

    new-instance v2, Lg/cwo;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lg/cwo;-><init>(Lg/amh;I)V

    invoke-static {v1, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lg/amh;->c:Lg/eie;

    iget-object v2, v1, Lg/eie;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    iget-object v1, v1, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lg/brj;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lg/brj;-><init>(I)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Lg/cwo;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lg/cwo;-><init>(Lg/amh;I)V

    invoke-static {v2, v4}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lg/brj;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lg/brj;-><init>(I)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bfz;

    iget-boolean v8, v7, Lg/bfz;->e:Z

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    iput v3, v7, Lg/bfz;->b:I

    iget-object v8, v7, Lg/bfz;->a:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cwx;

    iput-object v8, v7, Lg/bfz;->f:Lg/cwx;

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/bfz;

    invoke-virtual {p0, v8}, Lg/amh;->f(Lg/bfz;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bfz;

    invoke-virtual {v7}, Lg/bfz;->g()Z

    move-result v7

    if-eqz v7, :cond_8

    if-lt v5, v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bfz;

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v7}, Lg/bfz;->g()Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/2addr v8, v5

    if-lt v8, v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bfz;

    goto :goto_1

    :cond_8
    add-int/2addr v6, v5

    const v7, 0xf4240

    if-le v6, v7, :cond_4

    :goto_2
    return v3

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/bfz;

    iput-boolean v5, v6, Lg/bfz;->e:Z

    goto :goto_3

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/bfz;

    invoke-virtual {p0, v4}, Lg/amh;->f(Lg/bfz;)Z

    move-result v4

    if-nez v4, :cond_b

    return v3

    :cond_c
    :goto_4
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/brj;

    const/16 v4, 0x1b

    invoke-direct {v2, v4}, Lg/brj;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/bfz;

    iget-object v6, v4, Lg/bfz;->c:Lg/vm;

    iget-object v7, v4, Lg/bfz;->f:Lg/cwx;

    invoke-virtual {v7}, Lg/cwx;->h()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_5

    :cond_d
    iget-object v8, v6, Lg/vm;->h:Lg/ffr;

    iget-object v8, v8, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v8, Lg/cwx;

    invoke-virtual {v7, v8}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v6, v7}, Lg/vm;->s(Lg/cwx;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bfz;

    iget-object v4, v2, Lg/bfz;->c:Lg/vm;

    iget-object v6, v2, Lg/bfz;->f:Lg/cwx;

    iget-object v7, p0, Lg/amh;->a:Lg/cag;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lg/zf;->a:Lg/zf;

    invoke-virtual {v7, v0, v4, v6, v8}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;

    move-result-object v4

    sget-object v6, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v4, v6, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Multi-variable search result rejected for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/ebh;->bw(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    return v5
.end method

.method public final f(Lg/bfz;)Z
    .locals 2

    iget-boolean v0, p1, Lg/bfz;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/bfz;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bfm;

    iget-object v1, p0, Lg/amh;->c:Lg/eie;

    invoke-virtual {v0, v1}, Lg/bfm;->c(Lg/eie;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Ljava/util/Set;Ljava/util/LinkedHashSet;Lg/cwx;)Z
    .locals 3

    invoke-virtual {p3}, Lg/cwx;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/amh;->a:Lg/cag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fog;

    invoke-interface {v1}, Lg/fog;->getType()Lg/cwx;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p3, v1, v2}, Lg/cag;->l(Lg/cwx;Lg/fog;Lg/cwx;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V
    .locals 1

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    invoke-virtual {p0, p1, p2, v0}, Lg/amh;->g(Ljava/util/Set;Ljava/util/LinkedHashSet;Lg/cwx;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public final i(Lg/gks;)Lg/bfm;
    .locals 3

    iget-object v0, p1, Lg/gsh;->ae:Lg/eek;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lg/gks;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/cid;->a:[I

    iget-object v2, v0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/etx;

    invoke-direct {v1, v0, p1}, Lg/bfm;-><init>(Lg/eek;Lg/gsh;)V

    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lg/gks;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lg/fmc;

    invoke-direct {v1, p0, v0, p1}, Lg/fmc;-><init>(Lg/amh;Lg/eek;Lg/gks;)V

    return-object v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
