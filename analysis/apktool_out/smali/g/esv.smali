.class public final synthetic Lg/esv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/ede;Lg/hed;Lg/hed;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Lg/esv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/esv;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/esv;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/esv;->a:I

    iput-object p1, p0, Lg/esv;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/esv;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    iget v0, p0, Lg/esv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Lg/cwx;

    check-cast p1, Lg/vm;

    invoke-virtual {p1}, Lg/vm;->m()Lg/cwx;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/cwx;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v3, v3, Lg/dwg;->u:Lg/cag;

    iget-object v3, v3, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v3, v2, v1}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v3

    sget-object v4, Lg/dho;->CONFLICT:Lg/dho;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Lg/dho;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incorrect type for immutable var: ssa="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lg/vm;->w(Lg/hed;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/ebh;->bs(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/erg;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    check-cast p1, Lg/eek;

    instance-of v2, p1, Lg/gif;

    if-eqz v2, :cond_1d

    check-cast p1, Lg/gif;

    invoke-virtual {p1}, Lg/gif;->ac()Lg/ayu;

    move-result-object v2

    iget-object v2, v2, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_d

    :cond_2
    iget-object v2, v0, Lg/erg;->a:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {v2, p1}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lg/gif;->z()I

    move-result v0

    invoke-static {p1, v0}, Lg/erg;->d(Lg/gif;I)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lg/gif;->ac()Lg/ayu;

    move-result-object v3

    iget-object v3, v3, Lg/ayu;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lg/erg;->b(Ljava/util/ArrayList;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {p1, v0, v1, v2}, Lg/erg;->c(Lg/gif;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    :cond_3
    invoke-interface {v2}, Lg/ebp;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lg/evh;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    if-eqz v3, :cond_4

    instance-of v3, v3, Lg/aoe;

    if-eqz v3, :cond_4

    sget-object v3, Lg/csv;->VARARG_CALL:Lg/csv;

    invoke-virtual {p1, v3}, Lg/lh;->w(Lg/csv;)V

    :cond_4
    invoke-virtual {p1}, Lg/gif;->ac()Lg/ayu;

    move-result-object v3

    instance-of v4, p1, Lg/eew;

    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Lg/eew;

    invoke-virtual {v4}, Lg/eew;->ab()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lg/hed;->am:Lg/cci;

    iget-object v4, v4, Lg/cci;->af:Lg/cwx;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lg/gif;->aa()Lg/gsh;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lg/flv;->j()Lg/cwx;

    move-result-object v4

    goto :goto_0

    :cond_6
    iget-object v4, v3, Lg/ayu;->d:Lg/ve;

    iget-object v4, v4, Lg/ve;->d:Lg/cwx;

    :goto_0
    iget-object v5, v0, Lg/erg;->a:Lg/dwg;

    iget-object v5, v5, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v3, v6}, Lg/fnq;->l(Lg/cwx;Lg/ayu;Ljava/util/ArrayList;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_d

    :cond_7
    invoke-virtual {p1}, Lg/gif;->ac()Lg/ayu;

    move-result-object v3

    iget-object v3, v3, Lg/ayu;->d:Lg/ve;

    iget-object v3, v3, Lg/ve;->d:Lg/cwx;

    invoke-virtual {p1}, Lg/gif;->aa()Lg/gsh;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lg/flv;->j()Lg/cwx;

    move-result-object v3

    goto :goto_1

    :cond_8
    iget-object v4, p1, Lg/eek;->ah:Lg/hay;

    sget-object v5, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v4, v5, :cond_9

    iget-object v4, p1, Lg/eek;->ai:Lg/gks;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lg/gks;->j()Lg/cwx;

    move-result-object v3

    :cond_9
    :goto_1
    iget-object v4, v0, Lg/erg;->a:Lg/dwg;

    iget-object v4, v4, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v4, v3}, Lg/emr;->y(Lg/cwx;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v4, Lg/emr;->n:Ljava/lang/Object;

    check-cast v4, Lg/dwg;

    iget-object v4, v4, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {v4, p1}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v4

    iget-object v5, p1, Lg/eek;->aj:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_a

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_5

    :cond_a
    new-instance v9, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v8

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v4}, Lg/ebp;->g()Lg/cwx;

    move-result-object v10

    iget-object v11, p1, Lg/eek;->ai:Lg/gks;

    if-eqz v11, :cond_c

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lg/cwx;->h()Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_2

    :cond_b
    instance-of v12, v10, Lg/btl;

    if-eqz v12, :cond_c

    invoke-virtual {v11}, Lg/gks;->j()Lg/cwx;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_2
    invoke-interface {v4}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Lg/gif;->z()I

    move-result v11

    sub-int/2addr v5, v11

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_f

    invoke-interface {v4}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/cwx;

    invoke-virtual {p1}, Lg/gif;->z()I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual {p1, v12}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    if-eqz v12, :cond_e

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Lg/cwx;->h()Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_4

    :cond_d
    instance-of v13, v11, Lg/btl;

    if-eqz v13, :cond_e

    invoke-virtual {v12}, Lg/flv;->j()Lg/cwx;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_f
    move-object v4, v9

    :goto_5
    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_6

    :cond_10
    if-eqz v4, :cond_13

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v5, v10}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object v3, v5

    goto :goto_7

    :cond_12
    :goto_6
    move-object v3, v4

    :cond_13
    :goto_7
    invoke-virtual {v0, v2, v3}, Lg/erg;->g(Lg/ebp;Ljava/util/Map;)Lg/ebp;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ebp;

    invoke-virtual {v0, v6, v3}, Lg/erg;->g(Lg/ebp;Ljava/util/Map;)Lg/ebp;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/gif;->z()I

    move-result v3

    invoke-static {p1, v3}, Lg/erg;->d(Lg/gif;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lg/erg;->i(Lg/ebp;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object v9, v5

    goto :goto_a

    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lg/erg;->b(Ljava/util/ArrayList;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v0, v2, v4, v9}, Lg/erg;->i(Lg/ebp;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v10

    if-eqz v10, :cond_16

    goto :goto_a

    :cond_16
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_9
    if-ge v10, v6, :cond_18

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/cwx;

    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/cwx;

    invoke-virtual {v12}, Lg/cwx;->bm()Z

    move-result v12

    if-nez v12, :cond_17

    invoke-virtual {v13}, Lg/cwx;->bm()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v9, v10, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_18
    if-eqz v11, :cond_19

    invoke-virtual {v0, v2, v4, v9}, Lg/erg;->i(Lg/ebp;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_a

    :cond_19
    if-ne v6, v8, :cond_1a

    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v9

    goto :goto_a

    :cond_1a
    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v9

    :goto_a
    iget-object v0, v1, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->u:Lg/cag;

    iget-object v0, v0, Lg/cag;->e:Lg/cwm;

    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_b
    if-ge v7, v2, :cond_1c

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cwx;

    invoke-virtual {v0, v6, v8}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v10

    sget-object v11, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    if-ne v10, v11, :cond_1b

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1b
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_1c
    invoke-static {p1, v3, v5, v4}, Lg/erg;->c(Lg/gif;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1d
    :goto_d
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lg/nq;

    iget-object v2, p1, Lg/nq;->c:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v0, p1, Lg/nq;->e:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, Lg/nq;->f:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    iget-object p1, p1, Lg/nq;->b:Lg/fov;

    invoke-interface {v0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1e

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Plugin option values is null, option: "

    const-string v3, ", plugin: "

    invoke-static {v0, v2, v3, v1}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Plugin option description not set, plugin: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plugin option name should start with plugin id: \'"

    const-string v3, "\', option: "

    invoke-static {v1, v0, v3, v2}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, [Lg/eek;

    check-cast p1, Lg/yu;

    iget-object v2, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v2, Lg/hed;

    invoke-interface {p1}, Lg/yu;->getOffset()I

    move-result v3

    :try_start_0
    invoke-interface {p1}, Lg/yu;->b()V

    invoke-virtual {v0, p1}, Lg/ffr;->t(Lg/yu;)Lg/eek;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    sget-object v4, Lg/acq;->af:Lg/acq;

    iget-object v5, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->j(Lg/fky;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to decode insn: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v5, :cond_21

    new-instance p1, Lg/eek;

    sget-object v2, Lg/hay;->NOP:Lg/hay;

    const/4 v5, 0x0

    invoke-direct {p1, v2, v5}, Lg/eek;-><init>(Lg/hay;I)V

    new-instance v2, Lg/hab;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "decode failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lg/hab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v4, v2}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    :goto_e
    iput v3, p1, Lg/eek;->ag:I

    aput-object p1, v1, v3

    return-void

    :cond_21
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_3
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    iget-object v2, v1, Lg/hed;->am:Lg/cci;

    check-cast p1, Lg/eek;

    sget-object v3, Lg/dva;->a:[I

    iget-object v4, p1, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_f

    :pswitch_4
    check-cast p1, Lg/adz;

    iget-object p1, p1, Lg/adz;->a:Ljava/lang/Object;

    check-cast p1, Lg/dsj;

    iget-object v3, v0, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v3, p1}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object p1

    if-eqz p1, :cond_22

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lg/hcd;->d:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v1, v0}, Lg/acw;->aj(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p1, Lg/hcd;->d:Ljava/util/List;

    iget-object p1, p1, Lg/hcd;->f:Lg/cci;

    iget-object v3, p1, Lg/cci;->h:Ljava/util/List;

    invoke-static {v3, v1, v0}, Lg/acw;->aj(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lg/cci;->h:Ljava/util/List;

    iget-object v1, p1, Lg/cci;->z:Ljava/util/List;

    iget-object v0, v0, Lg/hed;->am:Lg/cci;

    invoke-static {v1, v2, v0}, Lg/acw;->aj(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lg/cci;->z:Ljava/util/List;

    goto :goto_f

    :pswitch_5
    check-cast p1, Lg/gif;

    invoke-virtual {p1}, Lg/gif;->ac()Lg/ayu;

    move-result-object p1

    iget-object v3, v0, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v3, p1}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object p1

    if-eqz p1, :cond_22

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v1, v0}, Lg/acw;->aj(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lg/hed;->bh(Ljava/util/List;)V

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    iget-object v3, p1, Lg/cci;->h:Ljava/util/List;

    invoke-static {v3, v1, v0}, Lg/acw;->aj(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lg/cci;->h:Ljava/util/List;

    iget-object v1, p1, Lg/cci;->z:Ljava/util/List;

    iget-object v0, v0, Lg/hed;->am:Lg/cci;

    invoke-static {v1, v2, v0}, Lg/acw;->aj(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lg/cci;->z:Ljava/util/List;

    :cond_22
    :goto_f
    return-void

    :pswitch_6
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Lg/byr;

    check-cast p1, Lg/amj;

    invoke-static {v0, v1, p1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/ggg;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Lg/grs;

    check-cast p1, Lg/ve;

    const-string v2, "import "

    invoke-virtual {v1, v2}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v0, v0, Lg/ggg;->e:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v0, p1}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v1, v0}, Lg/eos;->b(Lg/cdv;)V

    :cond_23
    invoke-virtual {p1}, Lg/ve;->m()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const/16 p1, 0x3b

    invoke-interface {v1, p1}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_8
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/ggg;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Lg/eos;

    check-cast p1, Lg/ebh;

    instance-of v2, p1, Lg/cci;

    if-eqz v2, :cond_26

    check-cast p1, Lg/cci;

    :try_start_1
    new-instance v2, Lg/ggg;

    iget-object v3, v0, Lg/ggg;->h:Lg/ggg;

    if-nez v3, :cond_24

    move-object v3, v0

    :cond_24
    invoke-direct {v2, p1, v3}, Lg/ggg;-><init>(Lg/cci;Lg/ggg;)V

    move-object v3, v1

    check-cast v3, Lg/grs;

    invoke-virtual {v3}, Lg/grs;->m()V

    iget-object v3, v2, Lg/ggg;->e:Lg/cci;

    sget-object v4, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v3, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_10

    :cond_25
    invoke-virtual {v2, v1}, Lg/ggg;->y(Lg/eos;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lg/ggg;->t(Lg/eos;Z)V

    :goto_10
    iget-object v0, v0, Lg/ggg;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Lg/ggg;->r()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_13

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Inner class code generation error"

    invoke-static {p1, v1, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_26
    check-cast p1, Lg/hed;

    const-string v2, "Method not inlined, still used in: "

    iget-object v3, v0, Lg/ggg;->e:Lg/cci;

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v3, v3, Lg/dwg;->i:Lg/ur;

    iget-object v3, v3, Lg/ur;->aa:Lg/qp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/esh;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    const/4 v5, 0x2

    if-eq v4, v5, :cond_28

    const/4 v2, 0x3

    if-eq v4, v2, :cond_2c

    const/4 v2, 0x4

    if-ne v4, v2, :cond_27

    goto/16 :goto_12

    :cond_27
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected decompilation mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    sget-object v3, Lg/acq;->g:Lg/acq;

    iget-object v4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/fmz;

    if-eqz v3, :cond_2c

    iget-object v3, v3, Lg/fmz;->b:Lg/eek;

    if-nez v3, :cond_29

    goto :goto_12

    :cond_29
    :try_start_2
    iget-object v3, p1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v2}, Lg/lh;->w(Lg/csv;)V

    goto/16 :goto_13

    :catch_2
    move-exception v2

    goto :goto_11

    :cond_2a
    iget-object v3, p1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lg/bev;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lg/bev;-><init>(I)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_13

    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg/ebh;->bw(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_12

    :goto_11
    const-string v3, "Failed to check method usage"

    invoke-virtual {p1, v3, v2}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_12
    move-object v2, v1

    check-cast v2, Lg/grs;

    iget-object v3, v2, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v0, Lg/ggg;->g:I

    if-eq v3, v4, :cond_2d

    invoke-virtual {v2}, Lg/grs;->m()V

    :cond_2d
    iget v3, v2, Lg/grs;->z:I

    :try_start_3
    invoke-virtual {v0, v1, p1}, Lg/ggg;->x(Lg/eos;Lg/hed;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    iget-object v4, p1, Lg/hed;->am:Lg/cci;

    invoke-virtual {v4}, Lg/cci;->bd()Lg/cci;

    move-result-object v4

    sget-object v5, Lg/csv;->RESTART_CODEGEN:Lg/csv;

    iget-object v4, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    const-string v5, "Method generation error"

    if-nez v4, :cond_2e

    invoke-static {p1, v5, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, Lg/bzu;->g(Lg/eos;Lg/ebh;)V

    iput v3, v2, Lg/grs;->z:I

    invoke-virtual {v2}, Lg/grs;->af()V

    :goto_13
    return-void

    :cond_2e
    new-instance p1, Lg/gck;

    invoke-direct {p1, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_9
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/BitSet;

    check-cast p1, Lg/aea;

    iget-object v2, p1, Lg/aea;->i:Lg/fza;

    if-nez v2, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null handler block in: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/ebh;->bw(Ljava/lang/String;)V

    goto :goto_14

    :cond_2f
    iget p1, v2, Lg/fza;->x:I

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    :goto_14
    return-void

    :pswitch_a
    iget-object v0, p0, Lg/esv;->b:Ljava/lang/Object;

    check-cast v0, Lg/fza;

    iget-object v1, p0, Lg/esv;->c:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    check-cast p1, Lg/fza;

    iget-object v2, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-static {p1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v2

    instance-of v3, v2, Lg/dog;

    if-eqz v3, :cond_30

    check-cast v2, Lg/dog;

    invoke-virtual {v2, v0, v1}, Lg/dog;->aa(Lg/fza;Lg/fza;)V

    :cond_30
    invoke-virtual {p1}, Lg/fza;->ad()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/esv;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
