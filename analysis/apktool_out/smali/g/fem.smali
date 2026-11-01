.class public final Lg/fem;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/fem;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lg/ebh;I)V
    .locals 5

    invoke-interface {p0}, Lg/gut;->ay()Lg/gqc;

    move-result-object v0

    iget v1, v0, Lg/gqc;->ab:I

    iget v2, v0, Lg/gqc;->ab:I

    iget-object v3, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Lg/frh;

    and-int/lit8 v4, v1, 0x7

    if-ne v4, p1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v1, -0x8

    new-instance v4, Lg/gqc;

    or-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-direct {v4, p1, v3, v1}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    :goto_0
    if-eq v4, v0, :cond_5

    invoke-interface {p0, v4}, Lg/gut;->bc(Lg/gqc;)V

    and-int/lit8 p1, v2, 0x7

    if-nez p1, :cond_1

    const-string p1, "package-private"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lg/gqc;->an()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "public"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lg/gqc;->al()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "private"

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lg/gqc;->ao()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "protected"

    :goto_1
    const-string v0, "Access modifiers changed from: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bv(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p0, Lg/gck;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown visibility flags: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lg/gqc;

    and-int/lit8 v1, v2, 0x7

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method public static d(Lg/dwg;Lg/cwx;Ljava/lang/String;)Lg/ayu;
    .locals 2

    invoke-static {p2}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p2

    invoke-static {p0, p2}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, v0, v1, p1, p2}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final h(Lg/dwg;)V
    .locals 3

    iget v0, p0, Lg/fem;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fem;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    new-instance v0, Lg/aoy;

    invoke-direct {v0, p1}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/fem;->b:Ljava/lang/Object;

    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/fem;->b:Ljava/lang/Object;

    sget-object v1, Lg/cwx;->an:Lg/cff;

    const-string v2, "java.lang.Integer"

    invoke-static {p1, v1, v2}, Lg/fem;->d(Lg/dwg;Lg/cwx;Ljava/lang/String;)Lg/ayu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    sget-object v1, Lg/cwx;->at:Lg/cff;

    const-string v2, "java.lang.Boolean"

    invoke-static {p1, v1, v2}, Lg/fem;->d(Lg/dwg;Lg/cwx;Ljava/lang/String;)Lg/ayu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    sget-object v1, Lg/cwx;->z:Lg/cff;

    const-string v2, "java.lang.Byte"

    invoke-static {p1, v1, v2}, Lg/fem;->d(Lg/dwg;Lg/cwx;Ljava/lang/String;)Lg/ayu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    sget-object v1, Lg/cwx;->ac:Lg/cff;

    const-string v2, "java.lang.Short"

    invoke-static {p1, v1, v2}, Lg/fem;->d(Lg/dwg;Lg/cwx;Ljava/lang/String;)Lg/ayu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    sget-object v1, Lg/cwx;->ai:Lg/cff;

    const-string v2, "java.lang.Character"

    invoke-static {p1, v1, v2}, Lg/fem;->d(Lg/dwg;Lg/cwx;Ljava/lang/String;)Lg/ayu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    sget-object v1, Lg/cwx;->am:Lg/cff;

    const-string v2, "java.lang.Long"

    invoke-static {p1, v1, v2}, Lg/fem;->d(Lg/dwg;Lg/cwx;Ljava/lang/String;)Lg/ayu;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object p1, p1, Lg/dwg;->b:Lg/fnq;

    iput-object p1, p0, Lg/fem;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lg/hed;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/fem;->a:I

    packed-switch v2, :pswitch_data_0

    iget-boolean v2, v1, Lg/hed;->ar:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v1, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v3, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eek;

    sget-object v5, Lg/ejg;->a:[I

    iget-object v6, v4, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move-object v5, v4

    check-cast v5, Lg/adz;

    iget-object v5, v5, Lg/adz;->a:Ljava/lang/Object;

    check-cast v5, Lg/dsj;

    :goto_1
    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, v4, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v4}, Lg/flv;->j()Lg/cwx;

    move-result-object v4

    invoke-virtual {v4}, Lg/cwx;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lg/cwx;->m()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_7
    :goto_2
    return-void

    :pswitch_0
    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v2, v1, Lg/hed;->ax:Lg/gqc;

    sget-object v3, Lg/acq;->h:Lg/acq;

    iget-object v4, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/fpr;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lg/fpr;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ebp;

    invoke-interface {v3}, Lg/ebp;->_cv()I

    move-result v3

    iget v2, v2, Lg/gqc;->ab:I

    and-int/lit8 v2, v2, 0x7

    and-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v2}, Lg/gqc;->ac(I)I

    move-result v2

    invoke-static {v3}, Lg/gqc;->ac(I)I

    move-result v4

    if-ge v2, v4, :cond_a

    invoke-static {v1, v3}, Lg/fem;->c(Lg/ebh;I)V

    :cond_a
    :goto_3
    iget-object v2, v1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    iget-object v4, v0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v4, Lg/aoy;

    new-instance v5, Lg/bfb;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lg/bfb;-><init>(I)V

    invoke-virtual {v4, v1, v3, v5}, Lg/aoy;->ag(Lg/ebh;Lg/ebh;Lg/bfb;)V

    goto :goto_4

    :cond_b
    :goto_5
    return-void

    :pswitch_1
    iget-boolean v2, v1, Lg/hed;->ar:Z

    if-eqz v2, :cond_c

    goto/16 :goto_14

    :cond_c
    iget-object v2, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v6, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_d

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    iget-object v10, v9, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->INVOKE:Lg/hay;

    if-ne v10, v11, :cond_20

    check-cast v9, Lg/hdc;

    iget-object v10, v9, Lg/hdc;->ab:Lg/eqp;

    sget-object v11, Lg/eqp;->STATIC:Lg/eqp;

    const/4 v13, 0x0

    if-ne v10, v11, :cond_1e

    iget-object v10, v9, Lg/eek;->ai:Lg/gks;

    if-nez v10, :cond_e

    goto/16 :goto_11

    :cond_e
    iget-object v10, v9, Lg/hdc;->ad:Lg/ayu;

    iget-object v11, v0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-object v11, v9, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v9, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v14, v9, Lg/ekh;

    if-eqz v14, :cond_1e

    iget-object v13, v10, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/cwx;

    iget-object v10, v10, Lg/ayu;->g:Lg/cwx;

    sget-object v14, Lg/cwx;->am:Lg/cff;

    if-ne v13, v14, :cond_f

    const/4 v3, 0x1

    const/16 v17, 0x1

    goto :goto_8

    :cond_f
    sget-object v14, Lg/cwx;->an:Lg/cff;

    if-eq v13, v14, :cond_11

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    iget-object v15, v11, Lg/gks;->a:Lg/vm;

    iget-object v15, v15, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v12, v16

    check-cast v12, Lg/gks;

    invoke-virtual {v12}, Lg/gks;->j()Lg/cwx;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v12, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_7

    :cond_10
    const/16 v17, 0x1

    invoke-virtual {v11}, Lg/gks;->j()Lg/cwx;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    const/16 v17, 0x1

    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_12

    sget-object v3, Lg/csv;->EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

    invoke-virtual {v9, v3}, Lg/lh;->w(Lg/csv;)V

    :cond_12
    invoke-virtual {v9, v13}, Lg/flv;->f(Lg/cwx;)V

    iget-object v3, v11, Lg/gks;->a:Lg/vm;

    invoke-virtual {v3}, Lg/vm;->u()Lg/ejb;

    move-result-object v3

    iget-object v3, v3, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/vm;

    invoke-virtual {v12}, Lg/vm;->i()Z

    move-result v14

    if-eqz v14, :cond_13

    :goto_a
    move-object/from16 v18, v2

    :goto_b
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_13
    iget-object v14, v12, Lg/vm;->c:Lg/gks;

    iget-object v14, v14, Lg/gsh;->ae:Lg/eek;

    if-nez v14, :cond_14

    goto :goto_a

    :cond_14
    iget-object v15, v14, Lg/eek;->ah:Lg/hay;

    move-object/from16 v18, v2

    sget-object v2, Lg/hay;->CONST:Lg/hay;

    if-eq v15, v2, :cond_15

    sget-object v2, Lg/hay;->MOVE:Lg/hay;

    if-ne v15, v2, :cond_16

    :cond_15
    const/4 v2, 0x0

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    goto :goto_d

    :goto_c
    invoke-virtual {v14, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v15

    invoke-virtual {v15}, Lg/flv;->j()Lg/cwx;

    move-result-object v15

    invoke-virtual {v15}, Lg/cwx;->m()Z

    move-result v15

    if-eqz v15, :cond_17

    goto :goto_f

    :cond_17
    :goto_d
    iget-object v14, v14, Lg/eek;->ai:Lg/gks;

    iget-object v14, v14, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v14}, Lg/cwx;->m()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-virtual {v14, v10}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    goto :goto_f

    :cond_18
    iget-object v12, v12, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/gks;

    iget-object v15, v14, Lg/gsh;->ae:Lg/eek;

    if-nez v15, :cond_19

    goto :goto_f

    :cond_19
    iget-object v2, v15, Lg/eek;->ah:Lg/hay;

    move-object/from16 v19, v3

    sget-object v3, Lg/hay;->INVOKE:Lg/hay;

    if-ne v2, v3, :cond_1a

    check-cast v15, Lg/hdc;

    invoke-virtual {v15}, Lg/hdc;->aa()Lg/gsh;

    move-result-object v2

    invoke-virtual {v14, v2}, Lg/gks;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_b

    :cond_1a
    move-object/from16 v3, v19

    const/4 v2, 0x0

    goto :goto_e

    :cond_1b
    move-object/from16 v2, v18

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v18, v2

    const/4 v2, 0x1

    :goto_f
    if-eqz v2, :cond_1d

    invoke-virtual {v11, v13}, Lg/gks;->f(Lg/cwx;)V

    const/4 v2, 0x0

    goto :goto_10

    :cond_1d
    const/4 v2, 0x1

    :goto_10
    new-instance v13, Lg/eek;

    sget-object v3, Lg/hay;->CONST:Lg/hay;

    const/4 v10, 0x1

    invoke-direct {v13, v3, v10}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {v13, v9}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {v13, v11}, Lg/eek;->ax(Lg/gks;)V

    if-eqz v2, :cond_1f

    sget-object v2, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {v13, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_12

    :cond_1e
    :goto_11
    move-object/from16 v18, v2

    const/4 v10, 0x1

    :cond_1f
    :goto_12
    if-eqz v13, :cond_21

    invoke-static {v1, v5, v8, v13}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    const/4 v4, 0x1

    goto :goto_13

    :cond_20
    move-object/from16 v18, v2

    :cond_21
    :goto_13
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v18

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_22
    if-eqz v4, :cond_23

    invoke-static {v1}, Lg/eak;->ac(Lg/hed;)V

    :cond_23
    :goto_14
    return-void

    :pswitch_2
    iget-boolean v2, v1, Lg/hed;->ar:Z

    if-eqz v2, :cond_24

    goto :goto_16

    :cond_24
    iget-object v1, v1, Lg/hed;->an:[Lg/eek;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    instance-of v5, v4, Lg/gif;

    if-eqz v5, :cond_25

    check-cast v4, Lg/gif;

    iget-object v5, v0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v5, Lg/fnq;

    invoke-virtual {v4}, Lg/gif;->ac()Lg/ayu;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/fnq;->m(Lg/ayu;)Lg/ebp;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-virtual {v4, v5}, Lg/lh;->m(Lg/eue;)V

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_26
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lg/cci;)Z
    .locals 7

    iget v0, p0, Lg/fem;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lg/pj;->k(Lg/cci;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p1, Lg/cci;->d:Lg/gqc;

    iget-object v1, p1, Lg/cci;->ai:Lg/cci;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lg/gqc;->an()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p1, Lg/cci;->ai:Lg/cci;

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Lg/gqc;->al()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lg/gqc;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1, v2}, Lg/fem;->c(Lg/ebh;I)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p1, Lg/cci;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cci;

    iget-object v3, p0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v3, Lg/aoy;

    new-instance v4, Lg/bfb;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lg/bfb;-><init>(I)V

    invoke-virtual {v3, p1, v1, v4}, Lg/aoy;->ag(Lg/ebh;Lg/ebh;Lg/bfb;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lg/cci;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    sget-object v3, Lg/acq;->g:Lg/acq;

    iget-object v4, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/fmz;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lg/fmz;->b:Lg/eek;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lg/csv;->METHOD_CANDIDATE_FOR_INLINE:Lg/csv;

    iget-object v5, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-nez v3, :cond_7

    if-eqz v4, :cond_4

    :cond_7
    iget-object v1, v1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lg/fov;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Lg/fov;-><init>(I)V

    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cci;

    iget-object v4, p0, Lg/fem;->b:Ljava/lang/Object;

    check-cast v4, Lg/aoy;

    new-instance v5, Lg/bfb;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lg/bfb;-><init>(I)V

    invoke-virtual {v4, p1, v3, v5}, Lg/aoy;->ag(Lg/ebh;Lg/ebh;Lg/bfb;)V

    goto :goto_3

    :cond_8
    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
