.class public final Lg/eqh;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Lg/dwg;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/eqh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lg/cci;Ljava/util/List;Lg/cwx;Ljava/util/List;)Ljava/util/List;
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-virtual {p2, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lg/gr;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg/gr;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {p2, v1}, Lg/cwx;->bh(Ljava/util/function/Function;)Ljava/lang/Object;

    new-instance p2, Lg/bbm;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Lg/bbm;-><init>(Ljava/util/HashSet;I)V

    invoke-static {p3, p2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lg/cci;->bk()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lg/cci;->ai:Lg/cci;

    move-object v1, p0

    :goto_0
    if-eq p3, v1, :cond_3

    iget-object v1, p3, Lg/cci;->y:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p3, Lg/cci;->ai:Lg/cci;

    move-object v3, v1

    move-object v1, p3

    move-object p3, v3

    goto :goto_0

    :cond_2
    move-object p2, p1

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/cwx;

    invoke-virtual {p3}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_2
    return-object p1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Add missing generic type declarations: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lg/ebh;->bv(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p3

    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lg/coq;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lg/coq;-><init>(I)V

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lg/efe;

    const/4 p3, 0x3

    invoke-direct {p2, p3, p0}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public static d(Lg/cci;Ljava/util/List;)Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    if-ge v5, v4, :cond_3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    if-nez v6, :cond_1

    :goto_1
    move-object v6, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lg/cwx;->m()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Incorrect class signature, class is not an object: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ge v2, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected interfaces in signature: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_5
    return-object v3
.end method


# virtual methods
.method public e(Lg/cwx;)Z
    .locals 5

    invoke-virtual {p1}, Lg/cwx;->bg()Lg/cwx;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lg/cwx;->bj()Lg/cwx;

    move-result-object p1

    iget-object v2, p0, Lg/eqh;->b:Lg/dwg;

    invoke-virtual {v2, p1}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lg/cwx;->bj()Lg/cwx;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lg/cwx;->bj()Lg/cwx;

    move-result-object v2

    check-cast v2, Lg/aog;

    iget-object v2, v2, Lg/aog;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v0

    check-cast v2, Lg/aog;

    iget-object v2, v2, Lg/aog;->d:Ljava/lang/String;

    :goto_0
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p1, p1, Lg/cci;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cci;

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_4
    iget-object v3, p0, Lg/eqh;->b:Lg/dwg;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v2

    invoke-static {v3, v2}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v2

    invoke-virtual {v3, v2}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v3, v2, Lg/cci;->ai:Lg/cci;

    invoke-virtual {v3, p1}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p1, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p1, Lg/cci;->i:Ljava/util/List;

    :cond_7
    iget-object v3, p1, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, v2, Lg/cci;->ai:Lg/cci;

    iget-object v2, v2, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lg/cci;->ab:Lg/dwg;

    iget-object v4, v2, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v2, v3, v4, v1}, Lg/ve;->k(Lg/dwg;Lg/cwx;Z)V

    iget-object p1, p1, Lg/cci;->ak:Lg/ve;

    iput-object p1, v2, Lg/ve;->c:Lg/ve;

    :cond_8
    invoke-virtual {p0, v0}, Lg/eqh;->e(Lg/cwx;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/eqh;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lg/pj;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SignatureProcessor"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lg/cwx;)Lg/dns;
    .locals 2

    if-eqz p1, :cond_7

    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-virtual {p1, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lg/cwx;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/eqh;->b:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lg/cwx;->ay:Lg/aog;

    invoke-virtual {p0, p1, v0}, Lg/eqh;->i(Lg/cwx;Lg/cwx;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lg/cwx;->ak:Lg/aog;

    invoke-virtual {p0, p1, v0}, Lg/eqh;->i(Lg/cwx;Lg/cwx;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lg/cwx;->v:Lg/aog;

    invoke-virtual {p0, p1, v0}, Lg/eqh;->i(Lg/cwx;Lg/cwx;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lg/cwx;->ap:Lg/aog;

    invoke-virtual {p0, p1, v0}, Lg/eqh;->i(Lg/cwx;Lg/cwx;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lg/dns;->NO_EXCEPTION:Lg/dns;

    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Lg/dns;->THROWS_REQUIRED:Lg/dns;

    return-object p1

    :cond_5
    :goto_1
    sget-object p1, Lg/dns;->RUNTIME:Lg/dns;

    return-object p1

    :cond_6
    :goto_2
    sget-object p1, Lg/dns;->UNKNOWN_TYPE:Lg/dns;

    return-object p1

    :cond_7
    :goto_3
    sget-object p1, Lg/dns;->NO_EXCEPTION:Lg/dns;

    return-object p1
.end method

.method public final h(Lg/dwg;)V
    .locals 1

    iget v0, p0, Lg/eqh;->a:I

    packed-switch v0, :pswitch_data_0

    iput-object p1, p0, Lg/eqh;->b:Lg/dwg;

    return-void

    :pswitch_0
    iput-object p1, p0, Lg/eqh;->b:Lg/dwg;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lg/cwx;Lg/cwx;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lg/eqh;->b:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(Lg/hed;)V
    .locals 9

    iget v0, p0, Lg/eqh;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lg/acq;->ap:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/cvo;

    if-nez v0, :cond_0

    new-instance v0, Lg/cvo;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lg/cvo;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p1, v0}, Lg/lh;->m(Lg/eue;)V

    :cond_0
    iget-object v1, v0, Lg/cvo;->a:Ljava/util/HashSet;

    iget-boolean v2, v0, Lg/cvo;->b:Z

    const/4 v3, 0x1

    if-nez v2, :cond_7

    iput-boolean v3, v0, Lg/cvo;->b:Z

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-nez v0, :cond_7

    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    sget-object v4, Lg/csv;->REMOVE:Lg/csv;

    iget-object v5, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v5, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v6, Lg/acq;->al:Lg/acq;

    iget-object v7, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v6

    check-cast v6, Lg/coe;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lg/coe;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aea;

    invoke-virtual {v7}, Lg/aea;->m()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Lg/aea;->l()Lg/cwx;

    move-result-object v7

    invoke-virtual {v7}, Lg/cwx;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v2, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    invoke-virtual {p0, p1, v6, v5, v4}, Lg/eqh;->n(Lg/hed;Lg/eek;Ljava/util/HashSet;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_5
    const-string v2, "Failed to analyze thrown exceptions"

    invoke-virtual {p1, v2, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lg/ao;->l:Lg/ao;

    iget-object v4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/cym;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lg/cym;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v4

    invoke-virtual {p0, v4}, Lg/eqh;->g(Lg/cwx;)Lg/dns;

    move-result-object v5

    sget-object v6, Lg/dns;->NO_EXCEPTION:Lg/dns;

    if-ne v5, v6, :cond_8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    check-cast v4, Lg/aog;

    iget-object v4, v4, Lg/aog;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Byte code manipulation detected: skipped illegal throws declarations: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_a
    const-string p1, "java.lang.Exception"

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lg/brj;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lg/brj;-><init>(I)V

    invoke-static {v1, p1}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto :goto_a

    :cond_b
    const-string p1, "java.lang.Throwable"

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Lg/brj;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lg/brj;-><init>(I)V

    invoke-static {v1, p1}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto :goto_a

    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    iget-object v6, p0, Lg/eqh;->b:Lg/dwg;

    iget-object v6, v6, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v6, v2}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    :goto_9
    if-eqz v5, :cond_e

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v0, Lg/bbm;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/bbm;-><init>(Ljava/util/HashSet;I)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lg/cci;)Z
    .locals 10

    iget v0, p0, Lg/eqh;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lg/pj;->k(Lg/cci;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1}, Lg/epz;->e(Lg/ebh;)Lg/epz;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lg/epz;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lg/epz;->h()Lg/cwx;

    move-result-object v2

    iget-object v3, p1, Lg/cci;->af:Lg/cwx;

    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lg/cci;->ak:Lg/ve;

    iget-object v5, v5, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "Incorrect class signature: super class is equals to this class"

    invoke-virtual {p1, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lg/cwx;->m()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Incorrect class signature, class is not an object: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    move-object v3, v2

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lg/epz;->h()Lg/cwx;

    move-result-object v4

    if-nez v4, :cond_4

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_3
    invoke-static {p1, v2}, Lg/eqh;->d(Lg/cci;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v3, v2}, Lg/eqh;->c(Lg/cci;Ljava/util/List;Lg/cwx;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lg/cci;->y:Ljava/util/List;

    iput-object v3, p1, Lg/cci;->af:Lg/cwx;

    iput-object v2, p1, Lg/cci;->j:Ljava/util/List;

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    iget-object v0, v0, Lg/epz;->b:Ljava/lang/String;

    const-string v2, "Failed to parse class signature: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object v0, p1, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hcd;

    const-string v2, "Incorrect field signature: "

    const-string v3, "Incorrect inner types in field signature: "

    invoke-static {v1}, Lg/epz;->e(Lg/ebh;)Lg/epz;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, v4, Lg/epz;->b:Ljava/lang/String;

    iget-object v6, v1, Lg/hcd;->f:Lg/cci;

    :try_start_1
    invoke-virtual {v4}, Lg/epz;->h()Lg/cwx;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v4}, Lg/eqh;->e(Lg/cwx;)Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lg/eqh;->b:Lg/dwg;

    iget-object v3, v3, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lg/cwx;->bn()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v6}, Lg/cci;->bk()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/util/HashSet;

    iget-object v7, v6, Lg/cci;->y:Ljava/util/List;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v7, v6, Lg/cci;->ai:Lg/cci;

    move-object v8, v6

    :goto_5
    if-eq v7, v8, :cond_a

    iget-object v8, v7, Lg/cci;->y:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v8, v7, Lg/cci;->ai:Lg/cci;

    move-object v9, v8

    move-object v8, v7

    move-object v7, v9

    goto :goto_5

    :cond_9
    iget-object v3, v6, Lg/cci;->y:Ljava/util/List;

    :cond_a
    invoke-static {v6, v4, v3}, Lg/emr;->u(Lg/ebh;Lg/cwx;Ljava/util/Collection;)V

    :cond_b
    iget-object v3, v1, Lg/hcd;->e:Lg/cwx;

    invoke-virtual {p0, v4, v3}, Lg/eqh;->l(Lg/cwx;Lg/cwx;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/ebh;->bv(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    iput-object v4, v1, Lg/hcd;->e:Lg/cwx;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field signature parse error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lg/hcd;->g:Lg/dsj;

    iget-object v1, v1, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v2}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object p1, p1, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hed;

    invoke-static {v0}, Lg/epz;->e(Lg/ebh;)Lg/epz;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    :try_start_2
    invoke-virtual {v2}, Lg/epz;->l()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lg/hed;->al:Lg/ayu;

    iget-object v4, v4, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lg/epz;->n(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lg/epz;->h()Lg/cwx;

    move-result-object v5

    invoke-virtual {p0, v5}, Lg/eqh;->e(Lg/cwx;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    invoke-virtual {p0, v7}, Lg/eqh;->e(Lg/cwx;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_b

    :cond_11
    iput-object v3, v0, Lg/hed;->ae:Ljava/util/List;

    iget-object v3, p0, Lg/eqh;->b:Lg/dwg;

    iget-object v3, v3, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lg/emr;->q(Lg/hed;Lg/cwx;)V

    new-instance v6, Lg/fss;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7, v0}, Lg/fss;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4, v6}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Incorrect return type in method signature: "

    iget-object v6, v2, Lg/epz;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v7, 0x0

    :try_start_3
    iget-object v8, v0, Lg/hed;->al:Lg/ayu;

    iget-object v8, v8, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {p0, v5, v8}, Lg/eqh;->l(Lg/cwx;Lg/cwx;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    :goto_8
    const/4 v1, 0x0

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :cond_12
    invoke-virtual {p0, v0, v2, v3}, Lg/eqh;->m(Lg/hed;Lg/epz;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lg/hed;->as:Ljava/util/List;

    iput-object v5, v0, Lg/hed;->aw:Lg/cwx;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :goto_9
    :try_start_4
    const-string v3, "Type validation failed for signature: "

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_a
    if-nez v1, :cond_e

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lg/hed;->ae:Ljava/util/List;

    goto/16 :goto_7

    :catch_3
    move-exception v1

    goto :goto_c

    :cond_14
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect inner types in method signature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lg/epz;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/ebh;->bu(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_7

    :goto_c
    iget-object v2, v2, Lg/epz;->b:Ljava/lang/String;

    const-string v3, "Failed to parse method signature: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_15
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Lg/cwx;Lg/cwx;)Z
    .locals 4

    iget-object v0, p0, Lg/eqh;->b:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->u:Lg/cag;

    iget-object v0, v0, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v0, p1, p2}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p2

    sget-object v0, Lg/dho;->UNKNOWN:Lg/dho;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lg/cwx;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lg/cbd;->a:Ljava/util/regex/Pattern;

    invoke-static {p1}, Lg/foj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/cbd;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/cbd;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Lg/cbd;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    if-eq p2, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public m(Lg/hed;Lg/epz;Ljava/util/List;)Ljava/util/List;
    .locals 6

    iget-object p2, p2, Lg/epz;->b:Ljava/lang/String;

    iget-object v0, p1, Lg/hed;->al:Lg/ayu;

    iget-object v1, v0, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Lg/hed;->am:Lg/cci;

    iget-object v2, v2, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v2}, Lg/gqc;->ag()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {v0}, Lg/ayu;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/cwx;

    invoke-virtual {v0, v4, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p3, v1, :cond_1

    return-object v0

    :cond_1
    const-string p3, "Incorrect args count in method signature: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ebh;->bw(Ljava/lang/String;)V

    return-object v5

    :cond_2
    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    invoke-virtual {p0, v0, v3}, Lg/eqh;->l(Lg/cwx;Lg/cwx;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p3, "Incorrect types in method signature: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ebh;->bu(Ljava/lang/String;)V

    return-object v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object p3
.end method

.method public n(Lg/hed;Lg/eek;Ljava/util/HashSet;Z)V
    .locals 8

    sget-object v0, Lg/acq;->ap:Lg/acq;

    const/4 v1, 0x0

    if-nez p4, :cond_2

    iget-object p4, p2, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->THROW:Lg/hay;

    if-ne p4, v2, :cond_2

    sget-object p4, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, p4}, Lg/sm;->g(Lg/csv;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p2, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p2

    instance-of p4, p2, Lg/gks;

    if-eqz p4, :cond_1

    check-cast p2, Lg/gks;

    invoke-virtual {p2}, Lg/gks;->j()Lg/cwx;

    move-result-object p4

    sget-object v0, Lg/cwx;->v:Lg/aog;

    invoke-virtual {p4, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lg/gks;->aa()Lg/eek;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->MOVE_EXCEPTION:Lg/hay;

    if-ne v0, v1, :cond_0

    iget-object p2, p2, Lg/eek;->ai:Lg/gks;

    sget-object v0, Lg/csv;->CUSTOM_DECLARE:Lg/csv;

    iget-object p2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {p2, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1, p4, p3}, Lg/eqh;->o(Lg/hed;Lg/cwx;Ljava/util/HashSet;)V

    return-void

    :cond_1
    instance-of p4, p2, Lg/cly;

    if-eqz p4, :cond_b

    check-cast p2, Lg/cly;

    iget-object p2, p2, Lg/flv;->h:Lg/cwx;

    invoke-virtual {p0, p1, p2, p3}, Lg/eqh;->o(Lg/hed;Lg/cwx;Ljava/util/HashSet;)V

    return-void

    :cond_2
    iget-object p4, p2, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->INVOKE:Lg/hay;

    if-ne p4, v2, :cond_b

    check-cast p2, Lg/hdc;

    iget-object p2, p2, Lg/hdc;->ad:Lg/ayu;

    const/4 p4, 0x1

    invoke-virtual {p2, v1, p4}, Lg/ayu;->p(ZZ)Ljava/lang/String;

    move-result-object p4

    iget-object v1, p2, Lg/ayu;->d:Lg/ve;

    iget-object v2, p0, Lg/eqh;->b:Lg/dwg;

    invoke-virtual {v2, v1}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v1, p2, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v4, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    iget-object v6, v5, Lg/hed;->al:Lg/ayu;

    iget-object v6, v6, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v1, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hed;

    iget-object v5, v4, Lg/hed;->al:Lg/ayu;

    iget-object v5, v5, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v5}, Lg/gqc;->be()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v2, Lg/cci;->ab:Lg/dwg;

    iget-object v5, v5, Lg/dwg;->u:Lg/cag;

    iget-object v5, v5, Lg/cag;->e:Lg/cwm;

    iget-object v6, v4, Lg/hed;->al:Lg/ayu;

    iget-object v6, v6, Lg/ayu;->g:Lg/cwx;

    iget-object v7, p2, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {v5, v6, v7}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v5

    invoke-virtual {v5}, Lg/dho;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    :cond_6
    :goto_0
    if-nez v3, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Lg/eqh;->j(Lg/hed;)V

    iget-object p2, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {p2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p2

    check-cast p2, Lg/cvo;

    iget-object p4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p4, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p4

    check-cast p4, Lg/cvo;

    if-eqz p4, :cond_b

    if-eqz p2, :cond_b

    iget-object p2, p2, Lg/cvo;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_b

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p4

    invoke-virtual {p0, p1, p4, p3}, Lg/eqh;->o(Lg/hed;Lg/cwx;Ljava/util/HashSet;)V

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lg/eqh;->b:Lg/dwg;

    iget-object p2, p2, Lg/dwg;->l:Lg/cut;

    iget-object v1, v1, Lg/ve;->d:Lg/cwx;

    invoke-virtual {p2, v1}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p2, Lg/aht;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lg/fhm;

    :cond_a
    if-eqz v3, :cond_b

    iget-object p2, v3, Lg/fhm;->l:Ljava/util/List;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_b

    iget-object p4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p4, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p4

    check-cast p4, Lg/cvo;

    if-eqz p4, :cond_b

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/cwx;

    invoke-virtual {p0, p1, p4, p3}, Lg/eqh;->o(Lg/hed;Lg/cwx;Ljava/util/HashSet;)V

    goto :goto_2

    :cond_b
    :goto_3
    return-void
.end method

.method public o(Lg/hed;Lg/cwx;Ljava/util/HashSet;)V
    .locals 3

    invoke-virtual {p2}, Lg/cwx;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lg/eqh;->g(Lg/cwx;)Lg/dns;

    move-result-object v0

    sget-object v1, Lg/dns;->UNKNOWN_TYPE:Lg/dns;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thrown type has an unknown type hierarchy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ebh;->bv(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lg/dns;->THROWS_REQUIRED:Lg/dns;

    if-ne v0, v1, :cond_4

    :goto_0
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lg/eqh;->b:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v2, v1}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_3
    sget-object p3, Lg/acq;->ap:Lg/acq;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, p3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/cvo;

    iget-object p1, p1, Lg/cvo;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method
