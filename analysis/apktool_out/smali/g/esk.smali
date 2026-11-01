.class public final synthetic Lg/esk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/esk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/dzh;)V
    .locals 0

    const/16 p1, 0x15

    iput p1, p0, Lg/esk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    iget v0, p0, Lg/esk;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/cmy;

    iget v0, p1, Lg/cmy;->c:I

    rsub-int v0, v0, 0xfb

    iget-object v1, p1, Lg/cmy;->b:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v1

    new-instance v2, Lg/dl;

    invoke-static {p1, v1}, Lg/bls;->d(Lg/cmy;I)I

    move-result v1

    sget-object v4, Lg/fwv;->SAME_FRAME:Lg/fwv;

    invoke-direct {v2, v1}, Lg/dl;-><init>(I)V

    iput v3, v2, Lg/dl;->c:I

    iget-object v1, p1, Lg/cmy;->d:Lg/dl;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v1, Lg/dl;->a:I

    :goto_0
    sub-int/2addr v3, v0

    iput v3, v2, Lg/dl;->a:I

    iput-object v2, p1, Lg/cmy;->a:Lg/dl;

    return-void

    :pswitch_0
    check-cast p1, Lg/cmy;

    invoke-static {p1, v2}, Lg/bls;->e(Lg/cmy;Z)V

    return-void

    :pswitch_1
    check-cast p1, Lg/cmy;

    invoke-static {p1, v3}, Lg/bls;->e(Lg/cmy;Z)V

    return-void

    :pswitch_2
    check-cast p1, Lg/cmy;

    invoke-static {p1, v2}, Lg/bls;->b(Lg/cmy;Z)V

    return-void

    :pswitch_3
    check-cast p1, Lg/cmy;

    invoke-static {p1, v3}, Lg/bls;->b(Lg/cmy;Z)V

    return-void

    :pswitch_4
    check-cast p1, Lg/gks;

    invoke-static {p1}, Lg/eak;->al(Lg/gks;)V

    return-void

    :pswitch_5
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {p1}, Lg/acw;->am(Ljava/util/List;)Ljava/lang/Object;

    return-void

    :pswitch_6
    check-cast p1, Lg/eek;

    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/fws;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    iget-object p1, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lg/ekh;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lg/flv;->j()Lg/cwx;

    move-result-object v1

    sget-object v2, Lg/cwx;->an:Lg/cff;

    if-eq v1, v2, :cond_1

    sget-object v1, Lg/csv;->EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->w(Lg/csv;)V

    goto :goto_1

    :cond_2
    :pswitch_7
    return-void

    :pswitch_8
    check-cast p1, Lg/fgh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :pswitch_9
    check-cast p1, Lg/gsh;

    sget-object v0, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    instance-of v0, p1, Lg/gks;

    if-eqz v0, :cond_3

    check-cast p1, Lg/gks;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object p1

    iput-boolean v2, p1, Lg/ejb;->a:Z

    :cond_3
    return-void

    :pswitch_a
    check-cast p1, Lg/fza;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Dominance frontier not set for block: "

    :try_start_0
    iget-object v1, p1, Lg/fza;->d:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lg/fza;->d:Ljava/util/List;

    iget-object v3, p1, Lg/fza;->z:Ljava/util/List;

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lg/evh;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p1, Lg/fza;->z:Ljava/util/List;

    iget-object v1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lg/fza;->e:Ljava/util/List;

    iget-object v1, p1, Lg/fza;->f:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lg/fza;->f:Ljava/util/List;

    iget-object v1, p1, Lg/fza;->i:Ljava/util/BitSet;

    if-eqz v1, :cond_5

    return-void

    :cond_5
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to lock block: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_b
    check-cast p1, Lg/gsh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/gks;

    if-eqz v0, :cond_6

    check-cast p1, Lg/gks;

    iget-object v0, p1, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lg/vm;->v(Lg/gks;)V

    iput-object v1, p1, Lg/gks;->a:Lg/vm;

    :cond_6
    return-void

    :pswitch_c
    check-cast p1, Lg/fza;

    sget-object v0, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    return-void

    :pswitch_d
    check-cast p1, Lg/hed;

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->v(Lg/csv;)V

    return-void

    :pswitch_e
    check-cast p1, Lg/hed;

    sget-object v0, Lg/csv;->DISABLE_BLOCKS_LOCK:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    return-void

    :pswitch_f
    check-cast p1, Lg/fza;

    sget-object v0, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    return-void

    :pswitch_10
    check-cast p1, Lg/eyc;

    sget-object v0, Lg/cqv;->b:Lg/dba;

    const-string v1, "Loading dex: {}"

    invoke-interface {v0, p1, v1}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_11
    check-cast p1, Lg/hcd;

    invoke-virtual {p1}, Lg/lh;->p()V

    return-void

    :pswitch_12
    check-cast p1, Lg/cci;

    invoke-virtual {p1}, Lg/cci;->bh()V

    return-void

    :pswitch_13
    check-cast p1, Lg/hed;

    invoke-virtual {p1}, Lg/hed;->be()V

    return-void

    :pswitch_14
    check-cast p1, Lg/cci;

    invoke-virtual {p1}, Lg/cci;->ax()V

    return-void

    :pswitch_15
    check-cast p1, Lg/hed;

    invoke-virtual {p1}, Lg/hed;->az()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v0, p1, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {p1}, Lg/hed;->bk()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lg/gqc;->an()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p1, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v4}, Lg/ayu;->m()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lg/gqc;->be()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    if-nez v1, :cond_a

    if-eqz v2, :cond_f

    :cond_a
    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0}, Lg/ffb;->ad(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Lg/hed;->bd()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lg/hed;->am:Lg/cci;

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v0, v0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    if-eq v1, p1, :cond_d

    invoke-virtual {v1}, Lg/hed;->bk()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lg/hed;->bd()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_e
    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    :cond_f
    :goto_5
    return-void

    :pswitch_16
    sget-object v0, Lg/acq;->h:Lg/acq;

    check-cast p1, Lg/hed;

    iget-boolean v1, p1, Lg/hed;->ar:Z

    iget-object v4, p1, Lg/hed;->am:Lg/cci;

    if-nez v1, :cond_2c

    sget-object v1, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v5, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_d

    :cond_10
    iget-object v1, p1, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->bb()Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_d

    :cond_11
    iget-object v1, v4, Lg/cci;->ab:Lg/dwg;

    iget-object v5, v1, Lg/dwg;->i:Lg/ur;

    iget-boolean v5, v5, Lg/ur;->as:Z

    if-eqz v5, :cond_20

    iget-object v5, p1, Lg/hed;->ak:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lg/efe;

    invoke-direct {v7, v3, v6}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    invoke-static {v5, v7}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_20

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->RETURN:Lg/hay;

    if-ne v6, v7, :cond_12

    invoke-virtual {v5, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lg/cly;

    if-eqz v7, :cond_12

    check-cast v6, Lg/cly;

    iget-object v5, v6, Lg/cly;->a:Lg/eek;

    :cond_12
    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->INVOKE:Lg/hay;

    if-eq v6, v7, :cond_13

    goto/16 :goto_8

    :cond_13
    move-object v6, v5

    check-cast v6, Lg/hdc;

    iget-object v7, v6, Lg/hdc;->ab:Lg/eqp;

    sget-object v8, Lg/eqp;->SUPER:Lg/eqp;

    if-ne v7, v8, :cond_14

    goto/16 :goto_8

    :cond_14
    iget-object v6, v6, Lg/hdc;->ad:Lg/ayu;

    iget-object v7, p1, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v1, v6}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v8

    if-nez v8, :cond_15

    goto/16 :goto_8

    :cond_15
    iget-object v9, v8, Lg/hed;->al:Lg/ayu;

    iget-object v10, v8, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v10}, Lg/gqc;->be()Z

    move-result v11

    if-eqz v11, :cond_16

    goto/16 :goto_8

    :cond_16
    iget-object v6, v6, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v11, v7, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eq v6, v11, :cond_17

    goto/16 :goto_8

    :cond_17
    iget-object v6, v8, Lg/hed;->am:Lg/cci;

    invoke-virtual {v4, v6}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto/16 :goto_8

    :cond_18
    iget-object v5, v5, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gsh;

    invoke-static {v6}, Lg/eak;->ay(Lg/gsh;)Z

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_8

    :cond_1a
    invoke-virtual {v10}, Lg/gqc;->an()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v1, v1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v2}, Lg/fem;->c(Lg/ebh;I)V

    :cond_1b
    iget-object v1, v7, Lg/ayu;->a:Ljava/lang/String;

    iget-object v2, v9, Lg/ayu;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/fpr;

    if-eqz v2, :cond_1c

    iget-object v2, v2, Lg/fpr;->f:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    iget-object v3, v3, Lg/hed;->al:Lg/ayu;

    iput-object v1, v3, Lg/ayu;->a:Ljava/lang/String;

    goto :goto_6

    :cond_1c
    iput-object v1, v9, Lg/ayu;->a:Ljava/lang/String;

    :cond_1d
    sget-object v1, Lg/acq;->ad:Lg/acq;

    iget-object v2, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/awl;

    if-eqz v1, :cond_1e

    goto :goto_7

    :cond_1e
    new-instance v1, Lg/awl;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lg/awl;->a:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lg/lh;->m(Lg/eue;)V

    :goto_7
    const-string v2, "merged with bridge method [inline-methods]"

    invoke-virtual {v1, v2}, Lg/awl;->b(Ljava/lang/String;)V

    :cond_1f
    new-instance v1, Lg/ghf;

    invoke-direct {v1, p1}, Lg/ghf;-><init>(Lg/hed;)V

    invoke-virtual {v8, v1}, Lg/lh;->m(Lg/eue;)V

    invoke-virtual {v8, p1, v0}, Lg/lh;->q(Lg/ccm;Lg/acq;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method merged with bridge method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lg/ebh;->bw(Ljava/lang/String;)V

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    goto/16 :goto_d

    :cond_20
    :goto_8
    invoke-virtual {p1}, Lg/hed;->bk()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lg/csv;->METHOD_CANDIDATE_FOR_INLINE:Lg/csv;

    iget-object v5, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    iget-object v5, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_21
    invoke-static {p1}, Lg/ffb;->t(Lg/hed;)Lg/eek;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lg/hed;->az()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_22
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gks;

    invoke-virtual {v8}, Lg/gks;->j()Lg/cwx;

    move-result-object v9

    invoke-virtual {v9}, Lg/cwx;->m()Z

    move-result v10

    if-nez v10, :cond_23

    goto :goto_9

    :cond_23
    invoke-virtual {v1, v9}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v10

    if-nez v10, :cond_24

    invoke-static {v1, v9}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v9

    iget-object v10, v9, Lg/ve;->c:Lg/ve;

    if-eqz v10, :cond_22

    iget-object v10, v4, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v10}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Lg/ve;->c:Lg/ve;

    iget-object v9, v9, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    goto :goto_a

    :cond_24
    sget-object v9, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v11, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-nez v9, :cond_25

    invoke-static {v10}, Lg/eak;->p(Lg/cci;)Z

    move-result v9

    if-eqz v9, :cond_22

    :cond_25
    :goto_a
    sget-object v7, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v8, v7}, Lg/lh;->w(Lg/csv;)V

    const/4 v7, 0x1

    goto :goto_9

    :cond_26
    if-eqz v7, :cond_2c

    iget-object v2, v0, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v2, v6, :cond_2c

    check-cast v0, Lg/eew;

    iget-object v2, v0, Lg/eew;->y:Lg/dkz;

    sget-object v6, Lg/dkz;->THIS:Lg/dkz;

    if-ne v2, v6, :cond_2c

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v2}, Lg/gks;->j()Lg/cwx;

    move-result-object v2

    iget-object v4, v4, Lg/cci;->ai:Lg/cci;

    iget-object v4, v4, Lg/cci;->ak:Lg/ve;

    iget-object v4, v4, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v2, v4}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1, v3}, Lg/cse;->b(Lg/hed;I)V

    :cond_27
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_b
    if-ge v3, v2, :cond_29

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gks;

    iget-object v4, v4, Lg/gks;->a:Lg/vm;

    if-eqz v4, :cond_28

    iget-object v4, v4, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_28

    invoke-static {p1, v3}, Lg/cse;->b(Lg/hed;I)V

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_29
    iget-object v0, v0, Lg/eew;->a:Lg/ayu;

    invoke-virtual {v1, v0}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, Lg/ghf;

    invoke-direct {v1, v0}, Lg/ghf;-><init>(Lg/hed;)V

    invoke-virtual {p1, v1}, Lg/lh;->m(Lg/eue;)V

    sget-object v1, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v1}, Lg/lh;->w(Lg/csv;)V

    sget v1, Lg/cje;->a:I

    iget-object v1, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object v1, v2

    goto :goto_c

    :cond_2a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_c

    :cond_2b
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_c
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lg/hed;->bh(Ljava/util/List;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Lg/hed;->bh(Ljava/util/List;)V

    :cond_2c
    :goto_d
    return-void

    :pswitch_17
    check-cast p1, Lg/fza;

    invoke-static {p1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v0

    instance-of v1, v0, Lg/dog;

    if-eqz v1, :cond_2d

    check-cast v0, Lg/dog;

    invoke-virtual {v0, p1}, Lg/dog;->ac(Lg/fza;)V

    :cond_2d
    return-void

    :pswitch_18
    check-cast p1, Lg/fza;

    invoke-static {p1}, Lg/giq;->g(Lg/fza;)V

    return-void

    :pswitch_19
    check-cast p1, Lg/fza;

    iget-object v0, p1, Lg/fza;->d:Ljava/util/List;

    new-instance v1, Lg/dmt;

    invoke-direct {v1, p1, v3}, Lg/dmt;-><init>(Lg/fza;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1a
    check-cast p1, Lg/fza;

    sget-object v0, Lg/acq;->at:Lg/acq;

    invoke-virtual {p1, v0}, Lg/lh;->u(Lg/fky;)V

    sget-object v0, Lg/csv;->LOOP_START:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->v(Lg/csv;)V

    sget-object v0, Lg/csv;->LOOP_END:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->v(Lg/csv;)V

    iput-object v1, p1, Lg/fza;->g:Ljava/util/BitSet;

    iput-object v1, p1, Lg/fza;->ab:Lg/fza;

    iput-object v1, p1, Lg/fza;->i:Ljava/util/BitSet;

    iget-object p1, p1, Lg/fza;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :pswitch_1b
    check-cast p1, Lg/guv;

    iget-object p1, p1, Lg/guv;->b:Ljava/util/List;

    new-instance v0, Lg/bev;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/bev;-><init>(I)V

    invoke-static {p1, v0}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-void

    :pswitch_1c
    check-cast p1, Lg/fza;

    invoke-virtual {p1}, Lg/fza;->ad()V

    return-void

    :pswitch_1d
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lg/bev;

    invoke-direct {v0, v2}, Lg/bev;-><init>(I)V

    invoke-static {p1, v0}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/esk;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
