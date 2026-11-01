.class public final synthetic Lg/bra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/hed;


# direct methods
.method public synthetic constructor <init>(Lg/hed;I)V
    .locals 0

    iput p2, p0, Lg/bra;->a:I

    iput-object p1, p0, Lg/bra;->b:Lg/hed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lg/bra;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/eek;

    iget-object v0, p0, Lg/bra;->b:Lg/hed;

    invoke-static {v0, p1}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bra;->b:Lg/hed;

    check-cast p1, Lg/eek;

    invoke-static {v0, p1}, Lg/fpd;->q(Lg/hed;Lg/eek;)V

    return-void

    :pswitch_1
    check-cast p1, Lg/vm;

    iget-object v0, p1, Lg/vm;->h:Lg/ffr;

    iget-object v0, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v0, Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->h()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type inference failed for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bra;->b:Lg/hed;

    invoke-virtual {p1, v1}, Lg/vm;->w(Lg/hed;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object v0

    iget-object v0, v0, Lg/ejb;->e:Lg/cwx;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object p1

    sget-object v0, Lg/cwx;->ad:Lg/gnh;

    iput-object v0, p1, Lg/ejb;->e:Lg/cwx;

    :cond_1
    return-void

    :pswitch_2
    check-cast p1, Lg/vm;

    iget-object p1, p1, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/abi;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lg/eek;->aj:Ljava/util/List;

    iget-object v3, v0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, v0, Lg/eek;->ai:Lg/gks;

    invoke-static {v2}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Lg/ehh;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v2, Lg/bbm;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5}, Lg/bbm;-><init>(Ljava/util/HashSet;I)V

    invoke-static {v3, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0, v1}, Lg/gks;->c(Ljava/lang/String;)V

    new-instance v0, Lg/agx;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Different variable names in phi insn: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", use first"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lg/bra;->b:Lg/hed;

    invoke-virtual {v4, v2}, Lg/ebh;->bw(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0, v1}, Lg/gks;->c(Ljava/lang/String;)V

    new-instance v0, Lg/agx;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :cond_6
    return-void

    :pswitch_3
    check-cast p1, Lg/vm;

    iget-object v0, p1, Lg/vm;->c:Lg/gks;

    iget-object v1, p1, Lg/vm;->d:Ljava/util/ArrayList;

    sget-object v2, Lg/acq;->s:Lg/acq;

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/fih;

    const/4 v3, 0x0

    iget-object v4, p0, Lg/bra;->b:Lg/hed;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-object v5, v0, Lg/fih;->a:Lg/cwx;

    iget-object v0, v0, Lg/fih;->b:Ljava/lang/String;

    invoke-static {v4, p1, v5, v0}, Lg/dbs;->c(Lg/hed;Lg/vm;Lg/cwx;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gks;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v5

    check-cast v5, Lg/fih;

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    iget-object v6, v5, Lg/fih;->a:Lg/cwx;

    iget-object v5, v5, Lg/fih;->b:Ljava/lang/String;

    invoke-static {v4, p1, v6, v5}, Lg/dbs;->c(Lg/hed;Lg/vm;Lg/cwx;Ljava/lang/String;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_9

    goto/16 :goto_6

    :cond_b
    sget-object v0, Lg/acq;->o:Lg/acq;

    iget-object v2, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/bot;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/dbm;

    const/4 v5, 0x7

    invoke-direct {v2, v5}, Lg/dbm;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/IntStream;->max()Lj$/util/OptionalInt;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/OptionalInt;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    iget-object v2, p1, Lg/vm;->c:Lg/gks;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lg/gsh;->ae:Lg/eek;

    if-eqz v2, :cond_e

    iget v2, v2, Lg/eek;->ag:I

    goto :goto_3

    :cond_e
    const/4 v2, -0x1

    :goto_3
    invoke-virtual {v1}, Lj$/util/OptionalInt;->getAsInt()I

    move-result v1

    iget v5, p1, Lg/vm;->f:I

    iget-object v0, v0, Lg/bot;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ers;

    invoke-interface {v6}, Lg/ers;->h()I

    move-result v7

    if-ne v7, v5, :cond_f

    invoke-interface {v6}, Lg/ers;->j()I

    move-result v7

    invoke-interface {v6}, Lg/ers;->i()I

    move-result v8

    const/4 v9, 0x1

    if-gt v7, v2, :cond_10

    if-gt v2, v8, :cond_10

    const/4 v10, 0x1

    goto :goto_4

    :cond_10
    const/4 v10, 0x0

    :goto_4
    if-nez v10, :cond_12

    if-gt v7, v1, :cond_11

    if-gt v1, v8, :cond_11

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_f

    :cond_12
    invoke-static {v4, v6}, Lg/eak;->q(Lg/hed;Lg/ers;)Lg/cwx;

    move-result-object v0

    invoke-interface {v6}, Lg/ers;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, p1, v0, v1}, Lg/dbs;->c(Lg/hed;Lg/vm;Lg/cwx;Ljava/lang/String;)Z

    :cond_13
    :goto_6
    return-void

    :pswitch_4
    check-cast p1, Lg/fza;

    sget-object v0, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lg/acq;->at:Lg/acq;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lg/bra;->b:Lg/hed;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/bra;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {p1, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_14
    return-void

    :pswitch_5
    check-cast p1, Lg/gcv;

    iget-object v0, p0, Lg/bra;->b:Lg/hed;

    iget-object v1, v0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lg/hed;->ac:Ljava/util/List;

    :cond_15
    iget-object v1, v0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p1, Lg/gcv;->a:I

    iget-object v0, v0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    check-cast p1, Lg/aea;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/aea;->g:Z

    iget-object v0, p1, Lg/aea;->c:Ljava/util/ArrayList;

    new-instance v1, Lg/esk;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lg/bra;->b:Lg/hed;

    iget-object v0, v0, Lg/hed;->aj:Lg/fza;

    iget-object p1, p1, Lg/aea;->i:Lg/fza;

    invoke-static {v0, p1}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/bra;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
