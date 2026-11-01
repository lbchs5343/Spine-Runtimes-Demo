.class public final Lg/eii;
.super Lg/lh;
.source "SourceFile"


# instance fields
.field public final a:Lg/ath;

.field public final b:Ljava/util/List;

.field public final c:Lg/evf;


# direct methods
.method public constructor <init>(Lg/ath;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    iput-object p1, p0, Lg/eii;->a:Lg/ath;

    iput-object p2, p0, Lg/eii;->b:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/eii;->c:Lg/evf;

    return-void
.end method

.method public constructor <init>(Lg/eii;)V
    .locals 2

    invoke-direct {p0}, Lg/lh;-><init>()V

    iget-object v0, p1, Lg/eii;->a:Lg/ath;

    iput-object v0, p0, Lg/eii;->a:Lg/ath;

    iget-object v0, p1, Lg/eii;->c:Lg/evf;

    iput-object v0, p0, Lg/eii;->c:Lg/evf;

    iget-object v0, p1, Lg/eii;->a:Lg/ath;

    sget-object v1, Lg/ath;->COMPARE:Lg/ath;

    if-ne v0, v1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lg/eii;->b:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lg/eii;->b:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lg/eii;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lg/evf;)V
    .locals 1

    invoke-direct {p0}, Lg/lh;-><init>()V

    sget-object v0, Lg/ath;->COMPARE:Lg/ath;

    iput-object v0, p0, Lg/eii;->a:Lg/ath;

    iput-object p1, p0, Lg/eii;->c:Lg/evf;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lg/eii;->b:Ljava/util/List;

    return-void
.end method

.method public static d(Lg/eii;)Lg/eii;
    .locals 8

    iget-object v0, p0, Lg/eii;->a:Lg/ath;

    iget-object v1, p0, Lg/eii;->b:Ljava/util/List;

    sget-object v2, Lg/gwp;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    const/4 p0, 0x4

    if-eq v2, p0, :cond_1

    const/4 p0, 0x5

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown mode for invert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eii;

    invoke-static {v2}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Lg/eii;

    sget-object v2, Lg/ath;->AND:Lg/ath;

    if-ne v0, v2, :cond_3

    sget-object v2, Lg/ath;->OR:Lg/ath;

    :cond_3
    invoke-direct {v1, v2, p0}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    return-object v1

    :cond_4
    invoke-virtual {p0}, Lg/eii;->y()Lg/eii;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lg/eii;->y()Lg/eii;

    move-result-object p0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eii;

    invoke-static {v0}, Lg/eii;->e(Lg/eii;)Lg/eii;

    move-result-object v0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eii;

    invoke-static {v1}, Lg/eii;->e(Lg/eii;)Lg/eii;

    move-result-object v1

    new-instance v2, Lg/eii;

    sget-object v6, Lg/ath;->TERNARY:Lg/ath;

    new-array v4, v4, [Lg/eii;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, v6, p0}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    return-object v2

    :cond_6
    new-instance v0, Lg/eii;

    iget-object p0, p0, Lg/eii;->c:Lg/evf;

    iget-object v1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Lg/bgw;

    invoke-virtual {v1}, Lg/bgw;->z()V

    invoke-direct {v0, p0}, Lg/eii;-><init>(Lg/evf;)V

    return-object v0
.end method

.method public static e(Lg/eii;)Lg/eii;
    .locals 2

    iget-object v0, p0, Lg/eii;->a:Lg/ath;

    sget-object v1, Lg/ath;->NOT:Lg/ath;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lg/eii;->y()Lg/eii;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lg/eii;->c:Lg/evf;

    if-eqz v0, :cond_1

    new-instance p0, Lg/eii;

    iget-object v1, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Lg/bgw;

    invoke-virtual {v1}, Lg/bgw;->z()V

    invoke-direct {p0, v0}, Lg/eii;-><init>(Lg/evf;)V

    return-object p0

    :cond_1
    new-instance v0, Lg/eii;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    return-object v0
.end method

.method public static f(Lg/eii;)Lg/eii;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lg/eii;->h()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lg/eii;->c:Lg/evf;

    iget-object v6, v5, Lg/evf;->f:Ljava/lang/Object;

    check-cast v6, Lg/bgw;

    iget-object v7, v5, Lg/evf;->f:Ljava/lang/Object;

    check-cast v7, Lg/bgw;

    invoke-virtual {v6, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v6, Lg/cly;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v5}, Lg/evf;->m()Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v6, Lg/ekh;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lg/evf;->m()Lg/gsh;

    move-result-object v6

    check-cast v6, Lg/ekh;

    iget-wide v8, v6, Lg/ekh;->a:J

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    cmp-long v14, v8, v12

    if-eqz v14, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v14

    check-cast v14, Lg/cly;

    iget-object v14, v14, Lg/cly;->a:Lg/eek;

    sget-object v15, Lg/gwp;->b:[I

    iget-object v2, v14, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v15, v2

    if-eq v2, v4, :cond_d

    if-eq v2, v1, :cond_d

    const/4 v15, 0x3

    if-eq v2, v15, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lg/evf;->m()Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v2

    sget-object v15, Lg/cwx;->at:Lg/cff;

    if-ne v2, v15, :cond_0

    move-object v2, v14

    check-cast v2, Lg/ame;

    iget-object v2, v2, Lg/ame;->d:Lg/bvj;

    move-wide/from16 v16, v12

    sget-object v12, Lg/bvj;->OR:Lg/bvj;

    if-eq v2, v12, :cond_5

    sget-object v13, Lg/bvj;->AND:Lg/bvj;

    if-ne v2, v13, :cond_0

    :cond_5
    iget-object v13, v7, Lg/bgw;->y:Lg/ges;

    sget-object v1, Lg/ges;->NE:Lg/ges;

    if-ne v13, v1, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    sget-object v6, Lg/ges;->EQ:Lg/ges;

    if-ne v13, v6, :cond_8

    cmp-long v6, v8, v16

    if-nez v6, :cond_8

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    sget-object v1, Lg/ges;->EQ:Lg/ges;

    :goto_2
    if-eqz v6, :cond_a

    if-eq v2, v12, :cond_b

    :cond_a
    if-nez v6, :cond_c

    sget-object v6, Lg/bvj;->AND:Lg/bvj;

    if-ne v2, v6, :cond_c

    :cond_b
    sget-object v2, Lg/ath;->OR:Lg/ath;

    goto :goto_3

    :cond_c
    sget-object v2, Lg/ath;->AND:Lg/ath;

    :goto_3
    new-instance v6, Lg/bgw;

    invoke-virtual {v14, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    new-instance v9, Lg/ekh;

    invoke-direct {v9, v10, v11, v15}, Lg/ekh;-><init>(JLg/cwx;)V

    invoke-direct {v6, v1, v8, v9}, Lg/bgw;-><init>(Lg/ges;Lg/gsh;Lg/ekh;)V

    new-instance v8, Lg/bgw;

    invoke-virtual {v14, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    new-instance v12, Lg/ekh;

    invoke-direct {v12, v10, v11, v15}, Lg/ekh;-><init>(JLg/cwx;)V

    invoke-direct {v8, v1, v9, v12}, Lg/bgw;-><init>(Lg/ges;Lg/gsh;Lg/ekh;)V

    new-instance v1, Lg/eii;

    new-instance v9, Lg/eii;

    new-instance v10, Lg/evf;

    invoke-direct {v10, v6}, Lg/evf;-><init>(Lg/bgw;)V

    invoke-direct {v9, v10}, Lg/eii;-><init>(Lg/evf;)V

    new-instance v6, Lg/eii;

    new-instance v10, Lg/evf;

    invoke-direct {v10, v8}, Lg/evf;-><init>(Lg/bgw;)V

    invoke-direct {v6, v10}, Lg/eii;-><init>(Lg/evf;)V

    const/4 v8, 0x2

    new-array v10, v8, [Lg/eii;

    aput-object v9, v10, v3

    aput-object v6, v10, v4

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    goto :goto_4

    :cond_d
    if-nez v6, :cond_0

    iget-object v1, v7, Lg/bgw;->y:Lg/ges;

    invoke-virtual {v14, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v14, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    iput-object v1, v7, Lg/bgw;->y:Lg/ges;

    invoke-virtual {v7, v3, v2}, Lg/eek;->e(ILg/gsh;)V

    invoke-virtual {v7, v4, v6}, Lg/eek;->e(ILg/gsh;)V

    goto/16 :goto_0

    :goto_4
    if-eqz v1, :cond_e

    return-object v1

    :cond_e
    iget-object v1, v7, Lg/bgw;->y:Lg/ges;

    sget-object v2, Lg/ges;->EQ:Lg/ges;

    if-ne v1, v2, :cond_f

    invoke-virtual {v5}, Lg/evf;->m()Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Lg/gsh;->ar()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Lg/eii;

    sget-object v1, Lg/ath;->NOT:Lg/ath;

    new-instance v2, Lg/eii;

    invoke-virtual {v7}, Lg/bgw;->z()V

    invoke-direct {v2, v5}, Lg/eii;-><init>(Lg/evf;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v7}, Lg/bgw;->ab()V

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    :goto_5
    iget-object v1, v0, Lg/eii;->b:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eii;

    invoke-static {v6}, Lg/eii;->f(Lg/eii;)Lg/eii;

    move-result-object v7

    if-eq v7, v6, :cond_12

    if-nez v2, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_11
    invoke-interface {v2, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_13
    if-eqz v2, :cond_14

    new-instance v1, Lg/eii;

    iget-object v0, v0, Lg/eii;->a:Lg/ath;

    invoke-direct {v1, v0, v2}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    move-object v0, v1

    :cond_14
    iget-object v1, v0, Lg/eii;->a:Lg/ath;

    sget-object v2, Lg/ath;->NOT:Lg/ath;

    if-ne v1, v2, :cond_15

    invoke-virtual {v0}, Lg/eii;->y()Lg/eii;

    move-result-object v1

    iget-object v1, v1, Lg/eii;->a:Lg/ath;

    if-ne v1, v2, :cond_15

    invoke-virtual {v0}, Lg/eii;->y()Lg/eii;

    move-result-object v0

    invoke-static {v0}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object v0

    :cond_15
    iget-object v1, v0, Lg/eii;->a:Lg/ath;

    sget-object v5, Lg/ath;->TERNARY:Lg/ath;

    if-ne v1, v5, :cond_16

    invoke-virtual {v0}, Lg/eii;->y()Lg/eii;

    move-result-object v1

    iget-object v1, v1, Lg/eii;->a:Lg/ath;

    if-ne v1, v2, :cond_16

    invoke-static {v0}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object v0

    :cond_16
    iget-object v1, v0, Lg/eii;->a:Lg/ath;

    iget-object v2, v0, Lg/eii;->b:Ljava/util/List;

    sget-object v5, Lg/ath;->OR:Lg/ath;

    if-eq v1, v5, :cond_17

    sget-object v5, Lg/ath;->AND:Lg/ath;

    if-ne v1, v5, :cond_1b

    :cond_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eii;

    iget-object v5, v4, Lg/eii;->a:Lg/ath;

    sget-object v6, Lg/ath;->NOT:Lg/ath;

    if-eq v5, v6, :cond_19

    invoke-virtual {v4}, Lg/eii;->h()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v4, v4, Lg/eii;->c:Lg/evf;

    iget-object v4, v4, Lg/evf;->f:Ljava/lang/Object;

    check-cast v4, Lg/bgw;

    iget-object v4, v4, Lg/bgw;->y:Lg/ges;

    sget-object v5, Lg/ges;->NE:Lg/ges;

    if-ne v4, v5, :cond_18

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1a
    const/16 v18, 0x2

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_1b

    invoke-static {v0}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object v0

    invoke-static {v0}, Lg/eii;->e(Lg/eii;)Lg/eii;

    move-result-object v0

    :cond_1b
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/eii;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/eii;

    iget-object v1, p0, Lg/eii;->a:Lg/ath;

    iget-object v3, p1, Lg/eii;->a:Lg/ath;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lg/eii;->b:Ljava/util/List;

    iget-object v3, p1, Lg/eii;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg/eii;->c:Lg/evf;

    iget-object p1, p1, Lg/eii;->c:Lg/evf;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final g(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lg/eii;->a:Lg/ath;

    sget-object v1, Lg/ath;->COMPARE:Lg/ath;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/eii;->c:Lg/evf;

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/bgw;

    invoke-virtual {v0, p1}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    new-instance v0, Lg/agx;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lg/eii;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, Lg/eii;->a:Lg/ath;

    sget-object v1, Lg/ath;->COMPARE:Lg/ath;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/eii;->a:Lg/ath;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lg/eii;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/eii;->c:Lg/evf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/eii;->a:Lg/ath;

    sget-object v2, Lg/ath;->COMPARE:Lg/ath;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lg/eii;->c:Lg/evf;

    iget-object v1, v1, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Lg/bgw;

    invoke-virtual {v1, v0}, Lg/eek;->h(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lg/eii;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eii;

    invoke-virtual {v2}, Lg/eii;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final j()Lg/eek;
    .locals 2

    iget-object v0, p0, Lg/eii;->a:Lg/ath;

    sget-object v1, Lg/ath;->COMPARE:Lg/ath;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/eii;->c:Lg/evf;

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/bgw;

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/eii;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eii;

    invoke-virtual {v0}, Lg/eii;->j()Lg/eek;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lg/gwp;->a:[I

    iget-object v1, p0, Lg/eii;->a:Lg/ath;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    iget-object v4, p0, Lg/eii;->b:Ljava/util/List;

    if-eq v0, v3, :cond_5

    const/4 v2, 0x3

    const/16 v3, 0x29

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const-string v0, "??"

    return-object v0

    :cond_0
    sget-object v0, Lg/ath;->OR:Lg/ath;

    if-ne v1, v0, :cond_1

    const-string v0, " || "

    goto :goto_0

    :cond_1
    const-string v0, " && "

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eii;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/eii;->y()Lg/eii;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/eii;->y()Lg/eii;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eii;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eii;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lg/eii;->c:Lg/evf;

    invoke-virtual {v0}, Lg/evf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Lg/gsh;Lg/gsh;)Z
    .locals 2

    iget-object v0, p0, Lg/eii;->a:Lg/ath;

    sget-object v1, Lg/ath;->COMPARE:Lg/ath;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/eii;->c:Lg/evf;

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/bgw;

    invoke-virtual {v0, p1, p2}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lg/eii;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eii;

    invoke-virtual {v1, p1, p2}, Lg/eii;->x(Lg/gsh;Lg/gsh;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final y()Lg/eii;
    .locals 2

    iget-object v0, p0, Lg/eii;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eii;

    return-object v0
.end method
