.class public final synthetic Lg/agx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/agx;->a:I

    iput-object p2, p0, Lg/agx;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lg/agx;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lg/agx;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_0
    check-cast v5, Lg/gcu;

    check-cast p1, Lg/gks;

    invoke-virtual {v5, p1}, Lg/gcu;->i(Lg/gsh;)V

    return-void

    :pswitch_1
    check-cast v5, Lg/mo;

    check-cast p1, Lg/vm;

    iget-object v0, p1, Lg/vm;->h:Lg/ffr;

    iget-object v1, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p1, Lg/vm;->c:Lg/gks;

    iget-object v6, v1, Lg/gks;->a:Lg/vm;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lg/vm;->m()Lg/cwx;

    move-result-object v6

    goto :goto_0

    :cond_0
    sget-object v6, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    iget-object v7, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lg/flv;->h:Lg/cwx;

    goto :goto_0

    :cond_1
    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_2

    new-instance v1, Lg/fiq;

    sget-object v4, Lg/au;->ASSIGN:Lg/au;

    invoke-direct {v1, v4, v6, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v1}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto/16 :goto_8

    :cond_2
    iget-object v6, v1, Lg/gsh;->ae:Lg/eek;

    if-eqz v6, :cond_c

    iget-object v7, v6, Lg/eek;->ai:Lg/gks;

    if-nez v7, :cond_3

    goto/16 :goto_7

    :cond_3
    sget-object v1, Lg/ahs;->a:[I

    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1

    iget-object v1, v6, Lg/eek;->ai:Lg/gks;

    iget-object v1, v1, Lg/flv;->h:Lg/cwx;

    new-instance v4, Lg/fiq;

    sget-object v6, Lg/au;->ASSIGN:Lg/au;

    invoke-direct {v4, v6, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v4}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto/16 :goto_8

    :pswitch_2
    sget-object v1, Lg/csv;->SOFT_CAST:Lg/csv;

    iget-object v4, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_8

    :cond_4
    new-instance v1, Lg/bue;

    iget-object v4, v5, Lg/mo;->a:Lg/dwg;

    check-cast v6, Lg/adz;

    invoke-direct {v1, v4, v6}, Lg/bue;-><init>(Lg/dwg;Lg/adz;)V

    invoke-static {v0, v1}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto/16 :goto_8

    :pswitch_3
    check-cast v6, Lg/adz;

    iget-object v1, v6, Lg/eek;->ai:Lg/gks;

    iget-object v1, v1, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v1}, Lg/cwx;->bn()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lg/apz;

    iget-object v7, v5, Lg/mo;->a:Lg/dwg;

    invoke-direct {v4, v7, v6, v1}, Lg/apz;-><init>(Lg/dwg;Lg/adz;Lg/cwx;)V

    goto :goto_1

    :cond_5
    new-instance v4, Lg/fiq;

    sget-object v6, Lg/au;->ASSIGN:Lg/au;

    invoke-direct {v4, v6, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    :goto_1
    invoke-static {v0, v4}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto/16 :goto_8

    :pswitch_4
    check-cast v6, Lg/hdc;

    iget-object v1, v6, Lg/hdc;->ad:Lg/ayu;

    iget-object v1, v1, Lg/ayu;->g:Lg/cwx;

    iget-object v4, v5, Lg/mo;->a:Lg/dwg;

    iget-object v4, v4, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {v4, v6}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lg/ebp;->g()Lg/cwx;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lg/cwx;->bk()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lg/cwx;->bn()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v6, Lg/hdc;->ab:Lg/eqp;

    iget-object v8, v6, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lg/eqp;->STATIC:Lg/eqp;

    if-eq v7, v8, :cond_8

    sget-object v8, Lg/eqp;->SUPER:Lg/eqp;

    if-eq v7, v8, :cond_8

    new-instance v1, Lg/gti;

    iget-object v7, v5, Lg/mo;->a:Lg/dwg;

    invoke-direct {v1, v7, v6, v4}, Lg/gti;-><init>(Lg/dwg;Lg/hdc;Lg/cwx;)V

    goto :goto_3

    :cond_7
    move-object v1, v4

    :cond_8
    new-instance v4, Lg/fiq;

    sget-object v6, Lg/au;->ASSIGN:Lg/au;

    invoke-direct {v4, v6, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    move-object v1, v4

    :goto_3
    invoke-static {v0, v1}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto/16 :goto_8

    :pswitch_5
    sget-object v1, Lg/acq;->bh:Lg/acq;

    iget-object v4, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/eng;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lg/eng;->a:Lg/aea;

    iget-object v1, v1, Lg/aea;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ve;

    new-instance v6, Lg/fiq;

    sget-object v7, Lg/au;->ASSIGN:Lg/au;

    iget-object v4, v4, Lg/ve;->d:Lg/cwx;

    invoke-direct {v6, v7, v4, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v6}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto :goto_4

    :cond_9
    new-instance v1, Lg/fiq;

    sget-object v4, Lg/au;->ASSIGN:Lg/au;

    iget-object v6, v6, Lg/eek;->ai:Lg/gks;

    iget-object v6, v6, Lg/flv;->h:Lg/cwx;

    invoke-direct {v1, v4, v6, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v1}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {v6, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    check-cast v1, Lg/ekh;

    new-instance v4, Lg/fiq;

    sget-object v6, Lg/au;->ASSIGN:Lg/au;

    iget-object v1, v1, Lg/flv;->h:Lg/cwx;

    invoke-direct {v4, v6, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v4}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto :goto_8

    :pswitch_7
    check-cast v6, Lg/eew;

    iget-object v1, v6, Lg/eew;->y:Lg/dkz;

    sget-object v7, Lg/dkz;->CONSTRUCTOR:Lg/dkz;

    if-ne v1, v7, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    iget-object v1, v6, Lg/eew;->a:Lg/ayu;

    if-eqz v4, :cond_b

    iget-object v4, v5, Lg/mo;->a:Lg/dwg;

    iget-object v6, v1, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v4, v6}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v4

    if-eqz v4, :cond_b

    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v7, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lg/acq;->r:Lg/acq;

    iget-object v4, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v6}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v4

    check-cast v4, Lg/glh;

    if-eqz v4, :cond_b

    iget-object v6, v4, Lg/glh;->a:Lg/dhx;

    sget-object v7, Lg/dhx;->CONSTRUCTOR:Lg/dhx;

    if-ne v6, v7, :cond_b

    iget-object v1, v4, Lg/glh;->f:Lg/cwx;

    goto :goto_6

    :cond_b
    iget-object v1, v1, Lg/ayu;->d:Lg/ve;

    iget-object v1, v1, Lg/ve;->d:Lg/cwx;

    :goto_6
    new-instance v4, Lg/fiq;

    sget-object v6, Lg/au;->ASSIGN:Lg/au;

    invoke-direct {v4, v6, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v4}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto :goto_8

    :pswitch_8
    check-cast v6, Lg/adz;

    iget-object v1, v6, Lg/adz;->a:Ljava/lang/Object;

    check-cast v1, Lg/cwx;

    new-instance v4, Lg/fiq;

    sget-object v6, Lg/au;->ASSIGN:Lg/au;

    invoke-direct {v4, v6, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v4}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto :goto_8

    :cond_c
    :goto_7
    new-instance v4, Lg/fiq;

    sget-object v6, Lg/au;->ASSIGN:Lg/au;

    iget-object v1, v1, Lg/flv;->h:Lg/cwx;

    invoke-direct {v4, v6, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    invoke-static {v0, v4}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    :cond_d
    :goto_8
    iget-object p1, p1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget-object v4, v1, Lg/gsh;->ae:Lg/eek;

    if-nez v4, :cond_e

    :goto_a
    move-object v8, v2

    goto/16 :goto_d

    :cond_e
    instance-of v6, v4, Lg/gif;

    if-eqz v6, :cond_14

    move-object v6, v4

    check-cast v6, Lg/gif;

    invoke-virtual {v6}, Lg/gif;->aa()Lg/gsh;

    move-result-object v7

    if-nez v7, :cond_10

    :cond_f
    :goto_b
    move-object v8, v2

    goto :goto_c

    :cond_10
    iget-object v8, v5, Lg/mo;->a:Lg/dwg;

    iget-object v8, v8, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {v8, v6}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v8

    if-nez v8, :cond_11

    goto :goto_b

    :cond_11
    if-eq v7, v1, :cond_13

    invoke-virtual {v6, v1}, Lg/eek;->aq(Lg/gsh;)I

    move-result v7

    invoke-virtual {v6}, Lg/gif;->z()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-interface {v8}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    invoke-virtual {v7}, Lg/cwx;->bn()Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_b

    :cond_12
    new-instance v8, Lg/flg;

    iget-object v9, v5, Lg/mo;->a:Lg/dwg;

    invoke-direct {v8, v9, v6, v1, v7}, Lg/flg;-><init>(Lg/dwg;Lg/gif;Lg/gks;Lg/cwx;)V

    goto :goto_c

    :cond_13
    instance-of v6, v8, Lg/hed;

    if-eqz v6, :cond_f

    check-cast v8, Lg/hed;

    invoke-static {v8}, Lg/fnq;->h(Lg/hed;)Lg/ve;

    move-result-object v6

    new-instance v8, Lg/fiq;

    sget-object v7, Lg/au;->USE:Lg/au;

    iget-object v6, v6, Lg/ve;->d:Lg/cwx;

    invoke-direct {v8, v7, v6, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    :goto_c
    if-eqz v8, :cond_14

    goto :goto_d

    :cond_14
    iget-object v6, v4, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->CHECK_CAST:Lg/hay;

    if-ne v6, v7, :cond_15

    sget-object v6, Lg/csv;->SOFT_CAST:Lg/csv;

    iget-object v4, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_a

    :cond_15
    new-instance v8, Lg/fiq;

    sget-object v4, Lg/au;->USE:Lg/au;

    iget-object v1, v1, Lg/flv;->h:Lg/cwx;

    invoke-direct {v8, v4, v1, v3}, Lg/fiq;-><init>(Lg/au;Lg/cwx;I)V

    :goto_d
    invoke-static {v0, v8}, Lg/mo;->c(Lg/ffr;Lg/fog;)V

    goto/16 :goto_9

    :cond_16
    return-void

    :pswitch_9
    check-cast v5, Lg/guv;

    check-cast p1, Lg/aea;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, p1, Lg/aea;->j:Lg/guv;

    return-void

    :pswitch_a
    check-cast v5, Lg/dwk;

    check-cast p1, Lg/eek;

    invoke-virtual {v5, p1}, Lg/eek;->au(Lg/eek;)V

    return-void

    :pswitch_b
    check-cast v5, Lg/gxv;

    check-cast p1, Lg/cih;

    iget-object v0, v5, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    check-cast v5, Lg/dwg;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ve;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v6, Lg/asq;->a:Lg/dba;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    :cond_17
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/cci;

    if-nez v2, :cond_18

    goto :goto_f

    :cond_18
    iget-object v10, v9, Lg/cci;->x:Ljava/lang/String;

    invoke-static {v10}, Lg/asq;->c(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v7, :cond_17

    if-eq v8, v7, :cond_19

    if-ge v10, v8, :cond_17

    :cond_19
    :goto_f
    iget-object v2, v9, Lg/cci;->x:Ljava/lang/String;

    invoke-static {v2}, Lg/asq;->c(Ljava/lang/String;)I

    move-result v8

    move-object v2, v9

    goto :goto_e

    :cond_1a
    iget-object v6, v5, Lg/dwg;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lg/dwg;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Lg/cci;->bn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v2, Lg/cci;->x:Ljava/lang/String;

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lg/gpn;

    const/16 v8, 0x1b

    invoke-direct {v7, v8}, Lg/gpn;-><init>(I)V

    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object v6

    const-string v7, "\n  "

    invoke-static {v7}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lg/dwg;->a:Lg/dba;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v4

    const/4 p1, 0x2

    aput-object v6, v1, p1

    const/4 p1, 0x3

    aput-object v5, v1, p1

    const-string p1, "Found duplicated class: {}, count: {}, sources:\n  {}\n Keep class with source: {}, others will be removed."

    invoke-interface {v7, p1, v1}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Classes with same name are omitted, all sources:\n  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    return-void

    :pswitch_d
    check-cast v5, Lg/gkk;

    check-cast p1, Lg/cci;

    :try_start_0
    invoke-static {p1}, Lg/gkk;->c(Lg/cci;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Anonymous visitor error"

    invoke-static {p1, v1, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    iget-object p1, p1, Lg/cci;->i:Ljava/util/List;

    new-instance v0, Lg/agx;

    const/16 v1, 0x13

    invoke-direct {v0, v1, v5}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_e
    check-cast v5, Lg/dzh;

    check-cast p1, Lg/pj;

    iget-object v0, v5, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lg/pj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_f
    check-cast v5, Ljava/util/HashMap;

    check-cast p1, Lg/fqt;

    invoke-virtual {v5, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_10
    check-cast v5, Lg/gay;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_11
    check-cast v5, Ljava/util/LinkedHashSet;

    check-cast p1, Lg/gsh;

    check-cast p1, Lg/gks;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lg/vm;->x()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v5}, Lg/eak;->ae(Ljava/util/List;Ljava/util/LinkedHashSet;)V

    :cond_1b
    return-void

    :pswitch_12
    check-cast v5, Lg/ejb;

    check-cast p1, Lg/vm;

    iget-object v0, p1, Lg/vm;->b:Lg/ejb;

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object v0

    iget-boolean v1, v0, Lg/ejb;->d:Z

    if-eqz v1, :cond_1c

    iput-boolean v4, v5, Lg/ejb;->d:Z

    :cond_1c
    iget-boolean v1, v0, Lg/ejb;->b:Z

    if-eqz v1, :cond_1d

    iput-boolean v4, v5, Lg/ejb;->b:Z

    :cond_1d
    iget-boolean v0, v0, Lg/ejb;->a:Z

    if-eqz v0, :cond_1e

    iput-boolean v4, v5, Lg/ejb;->a:Z

    :cond_1e
    invoke-virtual {p1, v5}, Lg/vm;->n(Lg/ejb;)V

    return-void

    :pswitch_13
    check-cast v5, Ljava/util/Set;

    check-cast p1, Lg/fza;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_14
    check-cast v5, Ljava/util/function/Consumer;

    check-cast p1, Lg/eii;

    invoke-virtual {p1, v5}, Lg/eii;->g(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_15
    check-cast v5, Lg/gez;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v5, Lg/gez;->g:Z

    return-void

    :pswitch_16
    check-cast v5, Ljava/lang/String;

    check-cast p1, Lg/gsh;

    instance-of v0, p1, Lg/ehh;

    if-eqz v0, :cond_1f

    check-cast p1, Lg/ehh;

    invoke-interface {p1, v5}, Lg/ehh;->c(Ljava/lang/String;)V

    :cond_1f
    return-void

    :pswitch_17
    check-cast v5, Lg/hdc;

    check-cast p1, Lg/gsh;

    invoke-virtual {v5, p1}, Lg/eek;->_an(Lg/gsh;)V

    return-void

    :pswitch_18
    check-cast v5, Lg/bcc;

    check-cast p1, Lg/cci;

    invoke-virtual {v5, p1}, Lg/bcc;->k(Lg/cci;)Z

    return-void

    :pswitch_19
    check-cast v5, Lg/cxc;

    check-cast p1, Lg/gks;

    iget-object v0, v5, Lg/cxc;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1a
    check-cast v5, Lg/aea;

    check-cast p1, Lg/fza;

    iget-object v0, v5, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1b
    check-cast v5, Lg/fon;

    check-cast p1, Lg/fza;

    invoke-virtual {v5, p1}, Lg/fon;->c(Lg/fza;)V

    return-void

    :pswitch_1c
    check-cast v5, Ljava/util/Map;

    check-cast p1, Lg/eue;

    invoke-interface {p1}, Lg/eue;->d()Lg/fky;

    move-result-object v0

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1d
    check-cast v5, Ljava/util/List;

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lg/agx;

    invoke-direct {v0, v1, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v5, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1e
    check-cast v5, Lg/eue;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v5}, Lg/eue;->d()Lg/fky;

    move-result-object v0

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1f
    check-cast v5, Lg/fky;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_20
    check-cast v5, Lg/buz;

    check-cast p1, Lg/cci;

    invoke-virtual {v5, p1}, Lg/buz;->k(Lg/cci;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/agx;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
