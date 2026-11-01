.class public final synthetic Lg/ry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/hed;Lg/fza;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/ry;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ry;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/ry;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/vr;Ljava/util/concurrent/atomic/AtomicBoolean;Lg/gxv;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lg/ry;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ry;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/ry;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/ry;->a:I

    iput-object p1, p0, Lg/ry;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/ry;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/ry;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/ry;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/ry;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lg/ry;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Lg/ry;->c:Ljava/lang/Object;

    iget-object v6, v0, Lg/ry;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast v5, Lg/gxv;

    iget-object v1, v5, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v7, p1

    check-cast v7, Lg/cfm;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v8, v7, Lg/goe;

    if-eqz v8, :cond_a

    check-cast v7, Lg/goe;

    iget-object v8, v7, Lg/eiy;->aa:Lg/eii;

    invoke-static {v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v8, Lg/eii;->a:Lg/ath;

    sget-object v10, Lg/ath;->NOT:Lg/ath;

    if-ne v9, v10, :cond_1

    iget-object v8, v8, Lg/eii;->b:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eii;

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    iget-object v8, v8, Lg/eii;->c:Lg/evf;

    if-nez v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v8, v8, Lg/evf;->f:Ljava/lang/Object;

    check-cast v8, Lg/bgw;

    invoke-virtual {v8, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v10, Lg/cly;

    if-eqz v11, :cond_3

    iget-object v11, v5, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v11, Ljava/util/IdentityHashMap;

    check-cast v10, Lg/cly;

    iget-object v10, v10, Lg/cly;->a:Lg/eek;

    invoke-virtual {v11, v10}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v10, v2

    :goto_1
    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v8, Lg/bgw;->y:Lg/ges;

    sget-object v11, Lg/ges;->NE:Lg/ges;

    if-ne v2, v11, :cond_5

    invoke-virtual {v8, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Lg/gsh;->ap()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    :cond_5
    iget-object v2, v8, Lg/bgw;->y:Lg/ges;

    sget-object v11, Lg/ges;->EQ:Lg/ges;

    if-ne v2, v11, :cond_6

    invoke-virtual {v8, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Lg/gsh;->ar()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v9, 0x1

    :cond_6
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v7, Lg/eiy;->ab:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lg/arn;

    invoke-direct {v2}, Lg/arn;-><init>()V

    iget-object v1, v2, Lg/arn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_7

    iget-object v1, v7, Lg/goe;->g:Lg/amj;

    goto :goto_2

    :cond_7
    iget-object v1, v7, Lg/goe;->h:Lg/amj;

    :goto_2
    if-nez v1, :cond_8

    iget-object v1, v7, Lg/eiy;->ab:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iput-object v1, v2, Lg/arn;->d:Lg/fza;

    goto :goto_3

    :cond_8
    iput-object v1, v2, Lg/arn;->c:Lg/amj;

    :goto_3
    if-nez v2, :cond_9

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_9
    iget-object v1, v5, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v3, 0x1

    :goto_4
    return v3

    :pswitch_0
    check-cast v5, Lg/hed;

    check-cast v6, Lg/fza;

    move-object/from16 v1, p1

    check-cast v1, Lg/fza;

    iget-object v7, v1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_14

    invoke-static {v7}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lg/brj;

    const/16 v10, 0x10

    invoke-direct {v9, v10}, Lg/brj;-><init>(I)V

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_14

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5, v1, v3}, Lg/ffb;->bg(Lg/hed;Lg/fza;Z)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v9, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v9}, Lg/acw;->am(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    if-eqz v9, :cond_b

    iget-object v10, v9, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->JAVA_RET:Lg/hay;

    if-ne v10, v11, :cond_b

    invoke-virtual {v9, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v9, Lg/gks;

    if-eqz v10, :cond_b

    check-cast v9, Lg/gks;

    iget v9, v9, Lg/gks;->e:I

    invoke-static {v1}, Lg/ffb;->bq(Lg/cih;)Lg/eek;

    move-result-object v10

    if-eqz v10, :cond_b

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->MOVE:Lg/hay;

    if-ne v11, v12, :cond_b

    iget-object v10, v10, Lg/eek;->ai:Lg/gks;

    iget v10, v10, Lg/gks;->e:I

    if-ne v10, v9, :cond_b

    iget-object v9, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_b
    new-instance v3, Lg/esk;

    const/16 v9, 0x17

    invoke-direct {v3, v9}, Lg/esk;-><init>(I)V

    invoke-static {v8, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    if-nez v2, :cond_c

    move-object v2, v8

    goto/16 :goto_9

    :cond_c
    iget-object v9, v8, Lg/fza;->d:Ljava/util/List;

    invoke-static {v9, v1}, Lg/ffb;->r(Ljava/util/List;Lg/fza;)Lg/fza;

    move-result-object v9

    invoke-static {v8, v1}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-static {v8, v9}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    iget v14, v13, Lg/fza;->y:I

    invoke-static {v5, v14}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v14

    invoke-static {v13, v14}, Lg/giq;->c(Lg/fza;Lg/fza;)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fza;

    const-string v15, "Copy blocks tree failed. Missing block for connection: "

    if-eqz v14, :cond_10

    iget-object v13, v13, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lg/fza;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lg/fza;

    if-eqz v0, :cond_e

    invoke-static {v14, v0}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    move-object/from16 v0, p0

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v0, p0

    goto :goto_7

    :cond_10
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-static {v8, v0}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-static {v4, v9}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    :goto_9
    move-object/from16 v0, p0

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_12
    if-eqz v2, :cond_13

    iget-object v0, v2, Lg/fza;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lg/ffb;->r(Ljava/util/List;Lg/fza;)Lg/fza;

    move-result-object v0

    invoke-static {v2, v0}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-static {v6, v0}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    :cond_13
    const/4 v3, 0x1

    :cond_14
    return v3

    :pswitch_1
    check-cast v6, Lb/b/b;

    check-cast v5, Ljava/util/LinkedHashMap;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    sget v1, Lb/b/b;->d:I

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v0, v6, Lb/b/b;->j:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_16
    const/4 v3, 0x1

    :goto_a
    return v3

    :pswitch_2
    check-cast v6, Lg/aea;

    check-cast v5, Lg/hed;

    move-object/from16 v0, p1

    check-cast v0, Lg/aea;

    if-ne v0, v6, :cond_17

    goto :goto_c

    :cond_17
    iget-object v1, v0, Lg/aea;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ve;

    invoke-virtual {v6, v5, v2}, Lg/aea;->k(Lg/hed;Lg/ve;)Z

    goto :goto_b

    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, v0, Lg/aea;->g:Z

    iget-object v0, v0, Lg/aea;->c:Ljava/util/ArrayList;

    new-instance v1, Lg/esk;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    const/4 v3, 0x1

    :goto_c
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
