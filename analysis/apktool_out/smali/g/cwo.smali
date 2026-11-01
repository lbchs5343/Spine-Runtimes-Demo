.class public final synthetic Lg/cwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/amh;


# direct methods
.method public synthetic constructor <init>(Lg/amh;I)V
    .locals 0

    iput p2, p0, Lg/cwo;->a:I

    iput-object p1, p0, Lg/cwo;->b:Lg/amh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, Lg/cwo;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    check-cast v0, Lg/bfz;

    iget-object p1, v0, Lg/bfz;->d:Ljava/util/List;

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lg/coq;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lg/coq;-><init>(I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lg/egl;

    const/16 v2, 0xc

    iget-object v3, p0, Lg/cwo;->b:Lg/amh;

    invoke-direct {v1, v2, v3}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, v0, Lg/bfz;->e:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, v0, Lg/bfz;->b:I

    iget-object v1, v0, Lg/bfz;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwx;

    iput-object p1, v0, Lg/bfz;->f:Lg/cwx;

    :cond_2
    :goto_0
    invoke-virtual {v3, v0}, Lg/amh;->f(Lg/bfz;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/bfz;->e:Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lg/bfz;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    return-void

    :pswitch_0
    check-cast p1, Lg/vm;

    iget-object v0, p0, Lg/cwo;->b:Lg/amh;

    iget-object v1, v0, Lg/amh;->c:Lg/eie;

    invoke-virtual {v1, p1}, Lg/eie;->q(Lg/vm;)Lg/bfz;

    move-result-object v1

    iget-boolean v2, v1, Lg/bfz;->e:Z

    if-eqz v2, :cond_4

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v1, Lg/bfz;->d:Ljava/util/List;

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lg/bfz;->d:Ljava/util/List;

    iget-object v2, p1, Lg/vm;->c:Lg/gks;

    invoke-virtual {v0, v2}, Lg/amh;->i(Lg/gks;)Lg/bfm;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v1, Lg/bfz;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object p1, p1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v0, v2}, Lg/amh;->i(Lg/gks;)Lg/bfm;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, v1, Lg/bfz;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_3
    return-void

    :pswitch_1
    check-cast p1, Lg/vm;

    iget-object v0, p0, Lg/cwo;->b:Lg/amh;

    iget-object v1, v0, Lg/amh;->b:Lg/hed;

    iget-object v2, v0, Lg/amh;->c:Lg/eie;

    invoke-virtual {v2, p1}, Lg/eie;->q(Lg/vm;)Lg/bfz;

    move-result-object v2

    invoke-virtual {p1}, Lg/vm;->m()Lg/cwx;

    move-result-object v3

    iget-object v4, p1, Lg/vm;->h:Lg/ffr;

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    iput-object v3, v2, Lg/bfz;->f:Lg/cwx;

    iput-boolean v5, v2, Lg/bfz;->e:Z

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v2, Lg/bfz;->a:Ljava/util/List;

    goto/16 :goto_c

    :cond_8
    iget-object v3, v4, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v3, Lg/cwx;

    invoke-virtual {v3}, Lg/cwx;->h()Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v3, v2, Lg/bfz;->f:Lg/cwx;

    iput-boolean v5, v2, Lg/bfz;->e:Z

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v2, Lg/bfz;->a:Ljava/util/List;

    goto/16 :goto_c

    :cond_9
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v4, v4, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fog;

    invoke-interface {v8}, Lg/fog;->f()Lg/au;

    move-result-object v9

    sget-object v10, Lg/au;->ASSIGN:Lg/au;

    if-ne v9, v10, :cond_a

    invoke-interface {v8}, Lg/fog;->getType()Lg/cwx;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-interface {v8}, Lg/fog;->getType()Lg/cwx;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v4, v7, v3}, Lg/amh;->h(Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V

    invoke-virtual {v0, v4, v7, v6}, Lg/amh;->h(Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cwx;

    invoke-virtual {v8}, Lg/cwx;->h()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v8}, Lg/cwx;->m()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v1, Lg/hed;->am:Lg/cci;

    iget-object v9, v9, Lg/cci;->ab:Lg/dwg;

    iget-object v9, v9, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v8}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lg/fov;

    const/16 v10, 0xb

    invoke-direct {v9, v10}, Lg/fov;-><init>(I)V

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_7

    :cond_c
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_7

    :cond_d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lg/cwx;->g()[Lg/bjt;

    move-result-object v8

    array-length v11, v8

    :goto_6
    if-ge v9, v11, :cond_e

    aget-object v12, v8, v9

    invoke-static {v12}, Lg/cwx;->bc(Lg/bjt;)Lg/bcx;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    move-object v8, v10

    :goto_7
    invoke-virtual {v0, v4, v7, v8}, Lg/amh;->h(Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V

    goto :goto_5

    :cond_f
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    invoke-virtual {v6}, Lg/cwx;->h()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v6}, Lg/cwx;->m()Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v6, v8}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_a

    :cond_10
    iget-object v8, v1, Lg/hed;->am:Lg/cci;

    iget-object v8, v8, Lg/cci;->ab:Lg/dwg;

    iget-object v8, v8, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v6}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v8, Lg/cut;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_11

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_11
    invoke-static {v6}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v8, Lg/fov;

    const/16 v10, 0xb

    invoke-direct {v8, v10}, Lg/fov;-><init>(I)V

    invoke-interface {v6, v8}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v8

    invoke-interface {v6, v8}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_a

    :cond_12
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_a

    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lg/cwx;->g()[Lg/bjt;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v10, :cond_14

    aget-object v12, v6, v11

    invoke-static {v12}, Lg/cwx;->bc(Lg/bjt;)Lg/bcx;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_14
    move-object v6, v8

    :goto_a
    invoke-virtual {v0, v4, v7, v6}, Lg/amh;->h(Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/Collection;)V

    goto :goto_8

    :cond_15
    iget-object p1, p1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget-object v1, v1, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_16

    iget-object v3, v1, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->APUT:Lg/hay;

    if-ne v3, v6, :cond_16

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Lg/flv;->j()Lg/cwx;

    move-result-object v1

    invoke-virtual {v1}, Lg/cwx;->h()Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Lg/aoe;

    invoke-direct {v3, v1}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-virtual {v0, v4, v7, v3}, Lg/amh;->g(Ljava/util/Set;Ljava/util/LinkedHashSet;Lg/cwx;)Z

    goto :goto_b

    :cond_17
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_18

    iput-boolean v5, v2, Lg/bfz;->e:Z

    sget-object p1, Lg/cwx;->ad:Lg/gnh;

    iput-object p1, v2, Lg/bfz;->f:Lg/cwx;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v2, Lg/bfz;->a:Ljava/util/List;

    goto :goto_c

    :cond_18
    if-ne p1, v5, :cond_19

    iput-boolean v5, v2, Lg/bfz;->e:Z

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwx;

    iput-object p1, v2, Lg/bfz;->f:Lg/cwx;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, v2, Lg/bfz;->a:Ljava/util/List;

    goto :goto_c

    :cond_19
    iput-boolean v9, v2, Lg/bfz;->e:Z

    sget-object p1, Lg/cwx;->ad:Lg/gnh;

    iput-object p1, v2, Lg/bfz;->f:Lg/cwx;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Lg/amh;->d:Lg/cwm;

    iget-object v0, v0, Lg/cwm;->d:Ljava/util/Comparator;

    invoke-static {p1, v0}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v2, Lg/bfz;->a:Ljava/util/List;

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/cwo;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
