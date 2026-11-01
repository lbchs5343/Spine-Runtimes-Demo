.class public final Lg/fra;
.super Lg/pj;
.source "SourceFile"

# interfaces
.implements Lg/byr;


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/fra;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/fra;->a:Lg/dba;

    return-void
.end method

.method public static b(Lg/hed;Lg/gsh;Lg/gks;)Z
    .locals 5

    invoke-virtual {p1}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    invoke-virtual {p2}, Lg/gks;->j()Lg/cwx;

    move-result-object v1

    invoke-virtual {v0}, Lg/cwx;->bm()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lg/cwx;->c()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwx;

    invoke-virtual {p1, v1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    instance-of v2, p1, Lg/btl;

    if-eqz v2, :cond_2

    invoke-virtual {p2, p1}, Lg/gks;->f(Lg/cwx;)V

    return v3

    :cond_2
    iget-object p2, p0, Lg/hed;->am:Lg/cci;

    iget-object p2, p2, Lg/cci;->ab:Lg/dwg;

    invoke-static {p2, p1, v1}, Lg/cwx;->be(Lg/dwg;Lg/cwx;Lg/cwx;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Lg/cwx;->bo()Lg/cwx;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lg/cwx;->bl()Lg/be;

    move-result-object v2

    sget-object v4, Lg/be;->EXTENDS:Lg/be;

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lg/hed;->am:Lg/cci;

    iget-object v2, v2, Lg/cci;->ab:Lg/dwg;

    invoke-static {v2, p2, v1}, Lg/cwx;->be(Lg/dwg;Lg/cwx;Lg/cwx;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    aput-object v1, p2, v3

    const/4 p1, 0x2

    aput-object p0, p2, p1

    sget-object p0, Lg/fra;->a:Lg/dba;

    const-string p1, "Generic type differs: \'{}\' and \'{}\' in {}"

    invoke-interface {p0, p1, p2}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return v0

    :cond_6
    instance-of p0, p1, Lg/gks;

    if-eqz p0, :cond_b

    invoke-virtual {v0}, Lg/cwx;->m()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lg/aaw;

    invoke-static {p2}, Lg/evh;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, v0}, Lg/aaw;-><init>(Ljava/lang/String;Ljava/util/List;)V

    if-eqz p0, :cond_a

    move-object p0, p1

    check-cast p0, Lg/gks;

    iget-object p2, p0, Lg/gks;->a:Lg/vm;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lg/vm;->m()Lg/cwx;

    move-result-object p0

    goto :goto_1

    :cond_8
    sget-object p2, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, p2}, Lg/sm;->g(Lg/csv;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lg/flv;->h:Lg/cwx;

    goto :goto_1

    :cond_9
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_a

    invoke-virtual {p0, v2}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v1, p0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    invoke-virtual {p1, v2}, Lg/flv;->f(Lg/cwx;)V

    :cond_b
    :goto_2
    return v3
.end method

.method public static c(Lg/hed;Lg/cab;Lg/gks;)Z
    .locals 4

    iget-object p2, p2, Lg/gks;->a:Lg/vm;

    iget-object p2, p2, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gks;

    iget-object v0, v0, Lg/gsh;->ae:Lg/eek;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {p0, v0, v2}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lg/fra;->a:Lg/dba;

    const-string v3, " LoopRegionVisitor: instruction not found: {}, mth: {}"

    invoke-interface {v2, v0, v3, p0}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v2, p1}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lg/hed;Lg/cab;Lg/gks;)Z
    .locals 4

    invoke-virtual {p2}, Lg/gks;->aa()Lg/eek;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p2, Lg/eek;->ai:Lg/gks;

    iget-object v0, v0, Lg/gsh;->ae:Lg/eek;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {p0, v0, v2}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lg/fra;->a:Lg/dba;

    const-string v3, " LoopRegionVisitor: instruction not found: {}, mth: {}"

    invoke-interface {v2, v0, v3, p0}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v2, p1}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p2, Lg/abi;

    if-eqz v0, :cond_5

    check-cast p2, Lg/abi;

    iget-object p2, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    check-cast v0, Lg/gks;

    invoke-static {p0, p1, v0}, Lg/fra;->d(Lg/hed;Lg/cab;Lg/gks;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    return v1

    :cond_5
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Lg/eek;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->INVOKE:Lg/hay;

    if-ne v0, v1, :cond_3

    check-cast p0, Lg/hdc;

    iget-object v0, p0, Lg/hdc;->ad:Lg/ayu;

    iget-object p0, p0, Lg/hdc;->ab:Lg/eqp;

    sget-object v1, Lg/eqp;->INTERFACE:Lg/eqp;

    if-eq p0, v1, :cond_1

    sget-object v1, Lg/eqp;->VIRTUAL:Lg/eqp;

    if-ne p0, v1, :cond_3

    :cond_1
    iget-object p0, v0, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, v0, Lg/ayu;->d:Lg/ve;

    iget-object p0, p0, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final _ar(Lg/hed;Lg/cfm;)V
    .locals 0

    return-void
.end method

.method public final _cs(Lg/hed;Lg/cfm;)Z
    .locals 13

    instance-of v0, p2, Lg/cab;

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    check-cast p2, Lg/cab;

    iget-boolean v0, p2, Lg/cab;->g:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v0, p2, Lg/eiy;->aa:Lg/eii;

    if-nez v0, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object v2, p2, Lg/cab;->h:Lg/gcv;

    iget-object v2, v2, Lg/gcv;->d:Lg/fza;

    invoke-static {v2}, Lg/ffb;->bx(Lg/fza;)Lg/fza;

    move-result-object v2

    invoke-static {v2}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v2, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v6, v2, Lg/eek;->ai:Lg/gks;

    if-eqz v6, :cond_29

    iget-object v7, v6, Lg/gks;->a:Lg/vm;

    if-eqz v7, :cond_29

    invoke-virtual {v7}, Lg/vm;->t()Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object v7, v6, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/abi;

    iget-object v8, v7, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_29

    iget-object v8, v7, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    invoke-static {v8, v6}, Lg/ack;->k(Ljava/util/List;Lg/gks;)Z

    move-result v8

    :goto_0
    if-eqz v8, :cond_29

    iget-object v6, v6, Lg/gks;->a:Lg/vm;

    iget-object v6, v6, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v1, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-object v6, v7, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0}, Lg/eii;->i()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, v6, Lg/gks;->a:Lg/vm;

    invoke-virtual {v8}, Lg/vm;->t()Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v7, v3}, Lg/abi;->_ay(I)Lg/gks;

    move-result-object v7

    invoke-virtual {v7}, Lg/gks;->aa()Lg/eek;

    move-result-object v8

    if-eqz v8, :cond_29

    sget-object v9, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v10, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-nez v9, :cond_29

    iget-object v7, v7, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v1, :cond_9

    goto/16 :goto_8

    :cond_9
    invoke-static {p1, p2, v6}, Lg/fra;->c(Lg/hed;Lg/cab;Lg/gks;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_8

    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6}, Lg/eek;->h(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gks;

    :try_start_0
    invoke-static {p1, p2, v7}, Lg/fra;->d(Lg/hed;Lg/cab;Lg/gks;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_b

    goto/16 :goto_8

    :catch_0
    new-instance p1, Lg/blf;

    const-string p2, "LoopRegionVisitor.assignOnlyInLoop endless recursion"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    sget-object v5, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v8, v5}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v2, v5}, Lg/lh;->w(Lg/csv;)V

    instance-of v5, v2, Lg/ame;

    if-nez v5, :cond_d

    goto/16 :goto_6

    :cond_d
    move-object v5, v2

    check-cast v5, Lg/ame;

    iget-object v5, v5, Lg/ame;->d:Lg/bvj;

    sget-object v6, Lg/bvj;->ADD:Lg/bvj;

    if-eq v5, v6, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-virtual {v2, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v5, Lg/ekh;

    if-eqz v6, :cond_27

    check-cast v5, Lg/ekh;

    iget-wide v5, v5, Lg/ekh;->a:J

    const-wide/16 v9, 0x1

    cmp-long v7, v5, v9

    if-eqz v7, :cond_f

    goto/16 :goto_6

    :cond_f
    iget-object v5, v8, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->CONST:Lg/hay;

    if-ne v5, v6, :cond_27

    invoke-virtual {v8, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v5, Lg/ekh;

    if-eqz v5, :cond_27

    invoke-virtual {v8, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    check-cast v5, Lg/ekh;

    iget-wide v5, v5, Lg/ekh;->a:J

    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-eqz v7, :cond_10

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v2, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v5, Lg/gks;

    if-nez v6, :cond_11

    goto/16 :goto_6

    :cond_11
    check-cast v5, Lg/gks;

    iget-object v5, v5, Lg/gks;->a:Lg/vm;

    iget-object v5, v5, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_12

    goto/16 :goto_6

    :cond_12
    sget-object v6, Lg/hay;->IF:Lg/hay;

    sget-object v7, Lg/ack;->a:Lg/dba;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gks;

    iget-object v10, v9, Lg/gsh;->ae:Lg/eek;

    if-eqz v10, :cond_13

    iget-object v10, v10, Lg/eek;->ah:Lg/hay;

    if-ne v10, v6, :cond_13

    goto :goto_1

    :cond_14
    move-object v9, v4

    :goto_1
    if-nez v9, :cond_15

    goto/16 :goto_6

    :cond_15
    sget-object v6, Lg/hay;->AGET:Lg/hay;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gks;

    iget-object v10, v7, Lg/gsh;->ae:Lg/eek;

    if-eqz v10, :cond_16

    iget-object v10, v10, Lg/eek;->ah:Lg/hay;

    if-ne v10, v6, :cond_16

    goto :goto_2

    :cond_17
    move-object v7, v4

    :goto_2
    if-nez v7, :cond_18

    goto/16 :goto_6

    :cond_18
    iget-object v5, v7, Lg/gsh;->ae:Lg/eek;

    if-eqz v5, :cond_27

    iget-object v6, v5, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gsh;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v7, Lg/cly;

    if-eqz v7, :cond_19

    goto/16 :goto_6

    :cond_1a
    invoke-virtual {v0}, Lg/eii;->h()Z

    move-result v6

    if-nez v6, :cond_1b

    goto/16 :goto_6

    :cond_1b
    iget-object v0, v0, Lg/eii;->c:Lg/evf;

    iget-object v6, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v6, Lg/bgw;

    iget-object v7, v6, Lg/bgw;->y:Lg/ges;

    sget-object v10, Lg/ges;->LT:Lg/ges;

    if-ne v7, v10, :cond_27

    invoke-virtual {v6, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    if-eq v6, v9, :cond_1c

    goto/16 :goto_6

    :cond_1c
    invoke-virtual {v0}, Lg/evf;->m()Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lg/cly;

    if-eqz v7, :cond_1d

    move-object v7, v6

    check-cast v7, Lg/cly;

    iget-object v7, v7, Lg/cly;->a:Lg/eek;

    goto :goto_3

    :cond_1d
    instance-of v7, v6, Lg/gks;

    if-eqz v7, :cond_27

    move-object v7, v6

    check-cast v7, Lg/gks;

    invoke-virtual {v7}, Lg/gks;->aa()Lg/eek;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_27

    iget-object v10, v7, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->ARRAY_LENGTH:Lg/hay;

    if-eq v10, v11, :cond_1e

    goto/16 :goto_6

    :cond_1e
    invoke-virtual {v7, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    invoke-virtual {v5, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto/16 :goto_6

    :cond_1f
    iget-object v10, v5, Lg/eek;->ai:Lg/gks;

    if-eqz v10, :cond_20

    invoke-static {p1, p2, v10}, Lg/fra;->c(Lg/hed;Lg/cab;Lg/gks;)Z

    move-result v11

    if-nez v11, :cond_23

    goto/16 :goto_6

    :cond_20
    sget-object v10, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v11, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v10}, Lg/sm;->g(Lg/csv;)Z

    move-result v10

    if-nez v10, :cond_21

    goto/16 :goto_6

    :cond_21
    invoke-static {p1, v5}, Lg/ffb;->ai(Lg/hed;Lg/eek;)Lg/gsh;

    move-result-object v10

    if-eqz v10, :cond_26

    iget-object v11, v10, Lg/gsh;->ae:Lg/eek;

    if-nez v11, :cond_22

    goto :goto_5

    :cond_22
    invoke-virtual {v10}, Lg/flv;->j()Lg/cwx;

    move-result-object v4

    invoke-virtual {p1, v4}, Lg/hed;->bm(Lg/cwx;)Lg/gks;

    move-result-object v4

    iget-object v11, v10, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v4}, Lg/gks;->z()Lg/gks;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    invoke-virtual {v11}, Lg/eek;->_bs()V

    move-object v10, v4

    :cond_23
    iget-object v4, v2, Lg/eek;->ai:Lg/gks;

    sget-object v11, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v4, v11}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v9, v11}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v6, v11}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v5, v11}, Lg/lh;->w(Lg/csv;)V

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/bgw;

    invoke-virtual {v0, v11}, Lg/lh;->w(Lg/csv;)V

    new-instance v4, Lg/cdd;

    invoke-virtual {v7, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-direct {v4, v0, v10}, Lg/cdd;-><init>(Lg/gsh;Lg/gks;)V

    invoke-virtual {v4, p2}, Lg/cdd;->bh(Lg/cab;)V

    iget-object v0, v7, Lg/eek;->ai:Lg/gks;

    if-eqz v0, :cond_25

    iget-object v0, v0, Lg/gks;->a:Lg/vm;

    iget-object v0, v0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    iget-object v3, v3, Lg/gsh;->ae:Lg/eek;

    if-eqz v3, :cond_24

    sget-object v5, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v3, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_4

    :cond_25
    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v7, v0}, Lg/lh;->w(Lg/csv;)V

    invoke-static {p1, v7}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    :goto_4
    invoke-static {p1}, Lg/eak;->av(Lg/hed;)V

    goto :goto_6

    :cond_26
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "checkArrayForEach: Wrapped insn not found: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_27
    :goto_6
    if-eqz v4, :cond_28

    goto :goto_7

    :cond_28
    new-instance v4, Lg/k;

    invoke-direct {v4, v8, v2}, Lg/k;-><init>(Lg/eek;Lg/eek;)V

    :goto_7
    iput-object v4, p2, Lg/cab;->j:Lg/buj;

    goto/16 :goto_c

    :cond_29
    :goto_8
    invoke-virtual {v0}, Lg/eii;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v1, :cond_2a

    goto/16 :goto_d

    :cond_2a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gks;

    iget-object v2, v0, Lg/gks;->a:Lg/vm;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lg/vm;->t()Z

    move-result v6

    if-eqz v6, :cond_2b

    goto/16 :goto_d

    :cond_2b
    iget-object v2, v2, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lg/gks;->aa()Lg/eek;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v5, :cond_2c

    goto/16 :goto_d

    :cond_2c
    const-string v5, "iterator()Ljava/util/Iterator;"

    invoke-static {v0, v4, v5}, Lg/fra;->e(Lg/eek;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto/16 :goto_d

    :cond_2d
    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    iget-object v3, v3, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gks;

    iget-object v6, v6, Lg/gsh;->ae:Lg/eek;

    const-string v7, "hasNext()Z"

    const-string v8, "java.util.Iterator"

    invoke-static {v3, v8, v7}, Lg/fra;->e(Lg/eek;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "next()Ljava/lang/Object;"

    invoke-static {v6, v8, v3}, Lg/fra;->e(Lg/eek;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_d

    :cond_2e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-static {p1, v6}, Lg/ffb;->ai(Lg/hed;Lg/eek;)Lg/gsh;

    move-result-object v7

    if-eqz v7, :cond_36

    iget-object v8, v7, Lg/gsh;->ae:Lg/eek;

    if-eqz v8, :cond_36

    iget-object v9, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-static {p1, v8, v9}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v9

    if-nez v9, :cond_2f

    goto/16 :goto_d

    :cond_2f
    invoke-static {v9, p2}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v9

    if-nez v9, :cond_30

    goto/16 :goto_d

    :cond_30
    iget-object v9, v8, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->CHECK_CAST:Lg/hay;

    if-ne v9, v10, :cond_33

    iget-object v6, v8, Lg/eek;->ai:Lg/gks;

    if-eqz v6, :cond_3d

    invoke-static {p1, v5, v6}, Lg/fra;->b(Lg/hed;Lg/gsh;Lg/gks;)Z

    move-result v7

    if-nez v7, :cond_31

    goto/16 :goto_d

    :cond_31
    invoke-static {p1, v8}, Lg/ffb;->ai(Lg/hed;Lg/eek;)Lg/gsh;

    move-result-object v7

    if-eqz v7, :cond_32

    iget-object v9, v7, Lg/gsh;->ae:Lg/eek;

    if-eqz v9, :cond_32

    invoke-virtual {v9, v7, v6}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    goto :goto_9

    :cond_32
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_33
    iget-object v9, v6, Lg/eek;->ai:Lg/gks;

    if-nez v9, :cond_34

    goto/16 :goto_d

    :cond_34
    sget-object v10, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v9, v10}, Lg/lh;->v(Lg/csv;)V

    sget-object v10, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v6, v10}, Lg/lh;->w(Lg/csv;)V

    invoke-static {p1, v5, v9}, Lg/fra;->b(Lg/hed;Lg/gsh;Lg/gks;)Z

    move-result v6

    if-nez v6, :cond_35

    goto/16 :goto_d

    :cond_35
    invoke-virtual {v8, v7, v9}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-object v6, v9

    goto :goto_9

    :cond_36
    sget-object p2, Lg/fra;->a:Lg/dba;

    const-string v0, " checkIterableForEach: Wrapped insn not found: {}, mth: {}"

    invoke-interface {p2, v6, v0, p1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_37
    iget-object v7, v6, Lg/eek;->ai:Lg/gks;

    if-nez v7, :cond_38

    goto :goto_d

    :cond_38
    invoke-static {p1, p2, v7}, Lg/fra;->c(Lg/hed;Lg/cab;Lg/gks;)Z

    move-result v8

    if-nez v8, :cond_39

    goto :goto_d

    :cond_39
    invoke-static {p1, p2, v7}, Lg/fra;->d(Lg/hed;Lg/cab;Lg/gks;)Z

    move-result v8

    if-nez v8, :cond_3a

    goto :goto_d

    :cond_3a
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v7

    :goto_9
    sget-object v7, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v0, v7}, Lg/lh;->w(Lg/csv;)V

    iget-object v0, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0, v7}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    iput-object v4, v3, Lg/eek;->ai:Lg/gks;

    sget-object v7, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v3, v7}, Lg/lh;->w(Lg/csv;)V

    goto :goto_a

    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_b

    :cond_3c
    new-instance v0, Lg/cdd;

    invoke-direct {v0, v5, v6}, Lg/cdd;-><init>(Lg/gsh;Lg/gks;)V

    invoke-virtual {v0, p2}, Lg/cdd;->bh(Lg/cab;)V

    iput-object v0, p2, Lg/cab;->j:Lg/buj;

    :goto_c
    sget-object p2, Lg/csv;->REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

    invoke-virtual {p1, p2}, Lg/lh;->w(Lg/csv;)V

    :cond_3d
    :goto_d
    return v1
.end method

.method public final bq(Lg/hed;Lg/cih;)V
    .locals 0

    return-void
.end method

.method public final j(Lg/hed;)V
    .locals 2

    iget-object v0, p1, Lg/hed;->ao:Lg/eys;

    invoke-static {p1, p0, v0}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    sget-object v0, Lg/csv;->REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lg/eak;->af(Lg/hed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lg/lh;->v(Lg/csv;)V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lg/csv;->REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

    invoke-virtual {p1, v1}, Lg/lh;->v(Lg/csv;)V

    throw v0

    :cond_0
    return-void
.end method
