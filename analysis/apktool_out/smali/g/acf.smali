.class public final Lg/acf;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public b:Lg/ayu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/acf;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/acf;->a:Lg/dba;

    return-void
.end method

.method public static c(Ljava/util/ArrayList;Ljava/util/List;I)Lg/gsh;
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/gsh;

    return-object p0

    :cond_0
    invoke-static {p0}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Lg/agx;

    const/16 v0, 0x1a

    invoke-direct {p2, v0, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Lg/epw;

    invoke-direct {p1, p0}, Lg/epw;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lg/hed;Lg/bgw;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_2

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    iget-object v2, v1, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->CMP_L:Lg/hay;

    if-eq v2, v3, :cond_0

    sget-object v3, Lg/hay;->CMP_G:Lg/hay;

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Lg/gsh;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lg/bgw;->y:Lg/ges;

    invoke-virtual {v1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v4}, Lg/gsh;->b()Lg/gsh;

    move-result-object v4

    invoke-virtual {v1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v5}, Lg/gsh;->b()Lg/gsh;

    move-result-object v5

    iput-object v3, p1, Lg/bgw;->y:Lg/ges;

    invoke-virtual {p1, v0, v4}, Lg/eek;->e(ILg/gsh;)V

    invoke-virtual {p1, v2, v5}, Lg/eek;->e(ILg/gsh;)V

    invoke-static {p0, v1}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    return-void

    :cond_1
    sget-object p0, Lg/acf;->a:Lg/dba;

    const-string v0, "TODO: cmp {}"

    invoke-interface {p0, p1, v0}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static e(Lg/hed;Lg/hdc;Ljava/util/List;)V
    .locals 2

    invoke-static {p0, p1}, Lg/fpd;->q(Lg/hed;Lg/eek;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    invoke-static {p0, v1}, Lg/fpd;->q(Lg/hed;Lg/eek;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/eek;

    invoke-static {p0, p2}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_3
    return-void
.end method

.method public static g(Ljava/util/List;)Ljava/util/List;
    .locals 12

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gsh;

    invoke-virtual {v3}, Lg/gsh;->am()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gsh;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lg/ekh;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lg/ekh;

    sget-object v7, Lg/pp;->a:Lg/dba;

    iget-object v7, v5, Lg/flv;->h:Lg/cwx;

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v8, v5, Lg/ekh;->a:J

    sget-object v5, Lg/dsv;->a:[I

    invoke-virtual {v7}, Lg/cwx;->f()Lg/bjt;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v5, v5, v10

    const-wide/16 v10, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    sget-object v5, Lg/pp;->a:Lg/dba;

    const-string v6, "Wrong object literal: {} for type: {}"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10, v6, v7}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    const-string v6, "null"

    goto :goto_2

    :pswitch_1
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_2
    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_3
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_4
    long-to-int v5, v8

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_5
    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    const-string v6, "false"

    goto :goto_2

    :cond_2
    const-string v6, "true"

    goto :goto_2

    :cond_3
    instance-of v5, v4, Lg/cly;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lg/cly;

    iget-object v5, v5, Lg/cly;->a:Lg/eek;

    instance-of v7, v5, Lg/epw;

    if-eqz v7, :cond_4

    check-cast v5, Lg/epw;

    iget-object v6, v5, Lg/epw;->a:Ljava/lang/String;

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v3, p0, v1}, Lg/acf;->c(Ljava/util/ArrayList;Ljava/util/List;I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3, p0, v0}, Lg/acf;->c(Ljava/util/ArrayList;Ljava/util/List;I)Lg/gsh;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v2

    :cond_9
    move v2, v3

    goto/16 :goto_0

    :cond_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Lg/hed;Lg/hdc;Ljava/util/List;)Lg/eek;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    check-cast v5, Lg/eew;

    iget-object v6, v5, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    iget-object v6, v5, Lg/eew;->a:Lg/ayu;

    iget-object v6, v6, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    invoke-virtual {v6}, Lg/cwx;->m()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ge v4, v1, :cond_6

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->INVOKE:Lg/hay;

    if-ne v6, v8, :cond_4

    iget-object v6, v5, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_4

    move-object v6, v5

    check-cast v6, Lg/hdc;

    iget-object v6, v6, Lg/hdc;->ad:Lg/ayu;

    iget-object v8, v6, Lg/ayu;->d:Lg/ve;

    iget-object v8, v8, Lg/ve;->b:Ljava/lang/String;

    const-string v9, "java.lang.StringBuilder"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v6, v6, Lg/ayu;->f:Ljava/lang/String;

    const-string v8, "append"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v0

    :goto_2
    if-nez v5, :cond_5

    :goto_3
    return-object v0

    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gsh;

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v2

    sget-object v4, Lg/cwx;->al:Lg/aog;

    invoke-virtual {v2, v4}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lg/coq;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lg/coq;-><init>(I)V

    invoke-static {v3, v1}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lg/acf;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lg/eek;

    sget-object v3, Lg/hay;->STR_CONCAT:Lg/hay;

    invoke-direct {v2, v3, v1}, Lg/eek;-><init>(Lg/hay;Ljava/util/List;)V

    sget-object v1, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v2, v1}, Lg/lh;->w(Lg/csv;)V

    iget-object v1, p1, Lg/eek;->ai:Lg/gks;

    if-nez v1, :cond_8

    sget-object v1, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v3, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v4}, Lg/hed;->bm(Lg/cwx;)Lg/gks;

    move-result-object v1

    invoke-virtual {v2, v1}, Lg/eek;->ax(Lg/gks;)V

    goto :goto_4

    :cond_8
    iget-object v1, p1, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v2, v1}, Lg/eek;->ax(Lg/gks;)V

    :goto_4
    invoke-virtual {v2, p1}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v2, p1}, Lg/ccm;->br(Lg/eek;)V

    invoke-static {p0, p1, p2}, Lg/acf;->e(Lg/hed;Lg/hdc;Ljava/util/List;)V

    return-object v2

    :cond_9
    new-instance p1, Lg/coq;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lg/coq;-><init>(I)V

    const-string p2, ", "

    invoke-static {v3, p2, p1}, Lg/evh;->d(Ljava/lang/Iterable;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO: convert one arg to string using `String.valueOf()`, args: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_5
    const-string p2, "String concatenation convert failed"

    invoke-virtual {p0, p2, p1}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final h(Lg/dwg;)V
    .locals 4

    sget-object v0, Lg/cwx;->al:Lg/aog;

    invoke-static {p1, v0}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v2, Lg/cwx;->z:Lg/cff;

    new-instance v3, Lg/aoe;

    invoke-direct {v3, v2}, Lg/aoe;-><init>(Lg/cwx;)V

    const-string v2, "getBytes"

    invoke-static {p1, v0, v2, v1, v3}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object p1

    iput-object p1, p0, Lg/acf;->b:Lg/ayu;

    return-void
.end method

.method public final j(Lg/hed;)V
    .locals 3

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-virtual {p0, p1, v2}, Lg/acf;->m(Lg/hed;Lg/fza;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    sget-object v0, Lg/csv;->REQUEST_CODE_SHRINK:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-static {p1}, Lg/eak;->av(Lg/hed;)V

    return-void
.end method

.method public final l(Lg/hed;Lg/eek;Lg/eek;)Lg/eek;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    sget-object v4, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v5, v3, Lg/lh;->l:Lg/sm;

    iget-object v6, v3, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v4, v3, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gsh;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v9, Lg/cly;

    if-eqz v11, :cond_1

    move-object v11, v9

    check-cast v11, Lg/cly;

    iget-object v11, v11, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1, v2, v11, v3}, Lg/acf;->l(Lg/hed;Lg/eek;Lg/eek;)Lg/eek;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v9, v2, v12, v7}, Lg/gsh;->an(Lg/hed;Lg/eek;Z)Lg/gsh;

    invoke-static {v2, v11}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v3}, Lg/eek;->_bs()V

    sget-object v4, Lg/csv;->REQUEST_CODE_SHRINK:Lg/csv;

    invoke-virtual {v2, v4}, Lg/lh;->w(Lg/csv;)V

    :cond_3
    sget-object v4, Lg/bse;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    move-object v0, v3

    check-cast v0, Lg/eew;

    iget-object v3, v0, Lg/eew;->a:Lg/ayu;

    iget-object v4, v0, Lg/eek;->aj:Ljava/util/List;

    iget-object v3, v3, Lg/ayu;->d:Lg/ve;

    iget-object v3, v3, Lg/ve;->d:Lg/cwx;

    sget-object v6, Lg/cwx;->al:Lg/aog;

    invoke-virtual {v3, v6}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lg/cly;

    if-eqz v3, :cond_34

    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    check-cast v3, Lg/cly;

    iget-object v3, v3, Lg/cly;->a:Lg/eek;

    iget-object v6, v3, Lg/eek;->ah:Lg/hay;

    iget-object v8, v3, Lg/eek;->aj:Ljava/util/List;

    sget-object v9, Lg/hay;->FILLED_NEW_ARRAY:Lg/hay;

    if-ne v6, v9, :cond_34

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_34

    move-object v6, v3

    check-cast v6, Lg/fs;

    iget-object v6, v6, Lg/fs;->a:Lg/cwx;

    sget-object v9, Lg/cwx;->z:Lg/cff;

    if-eq v6, v9, :cond_4

    sget-object v9, Lg/cwx;->ai:Lg/cff;

    if-ne v6, v9, :cond_34

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    new-array v8, v6, [B

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v9, v6, :cond_7

    invoke-virtual {v3, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v13, v12, Lg/ekh;

    if-nez v13, :cond_5

    goto/16 :goto_11

    :cond_5
    check-cast v12, Lg/ekh;

    iget-wide v12, v12, Lg/ekh;->a:J

    long-to-int v13, v12

    int-to-byte v12, v13

    aput-byte v12, v8, v9

    int-to-char v12, v12

    sget-object v13, Lg/cbd;->a:Ljava/util/regex/Pattern;

    const/16 v13, 0x20

    if-gt v13, v12, :cond_6

    const/16 v13, 0x7e

    if-gt v12, v13, :cond_6

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    sub-int/2addr v6, v11

    if-lt v11, v6, :cond_34

    new-instance v3, Lg/epw;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v6}, Lg/epw;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v10, :cond_8

    iget-object v4, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v3, v4}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v3, v0}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v3, v0}, Lg/ccm;->br(Lg/eek;)V

    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-static {v2, v0}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    return-object v3

    :cond_8
    new-instance v2, Lg/hdc;

    iget-object v4, v1, Lg/acf;->b:Lg/ayu;

    sget-object v6, Lg/eqp;->VIRTUAL:Lg/eqp;

    invoke-direct {v2, v4, v6, v10}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    invoke-static {v3}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/eek;->_an(Lg/gsh;)V

    invoke-static {v2}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v2

    iget-object v3, v1, Lg/acf;->b:Lg/ayu;

    iget-object v3, v3, Lg/ayu;->g:Lg/cwx;

    iput-object v3, v2, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v0, v7, v2}, Lg/eek;->e(ILg/gsh;)V

    return-object v5

    :pswitch_1
    invoke-virtual {v3, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v0, Lg/ekh;

    if-eqz v2, :cond_34

    new-instance v2, Lg/eek;

    sget-object v4, Lg/hay;->CONST:Lg/hay;

    invoke-direct {v2, v4, v10}, Lg/eek;-><init>(Lg/hay;I)V

    iget-object v4, v3, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v2, v4}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v2, v0}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {v2, v3}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v2, v3}, Lg/ccm;->br(Lg/eek;)V

    return-object v2

    :pswitch_2
    check-cast v3, Lg/adz;

    sget-object v4, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    iget-object v6, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_11

    :cond_9
    invoke-virtual {v3, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v4}, Lg/flv;->j()Lg/cwx;

    move-result-object v6

    instance-of v8, v4, Lg/cly;

    if-eqz v8, :cond_a

    move-object v8, v4

    check-cast v8, Lg/cly;

    iget-object v8, v8, Lg/cly;->a:Lg/eek;

    iget-object v9, v8, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->INVOKE:Lg/hay;

    if-ne v9, v11, :cond_a

    check-cast v8, Lg/hdc;

    iget-object v6, v8, Lg/hdc;->ad:Lg/ayu;

    iget-object v6, v6, Lg/ayu;->g:Lg/cwx;

    :cond_a
    iget-object v8, v3, Lg/adz;->a:Ljava/lang/Object;

    check-cast v8, Lg/cwx;

    if-eqz v0, :cond_b

    iget-object v9, v0, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->ARITH:Lg/hay;

    if-ne v9, v11, :cond_b

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v6, Lg/cff;

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Lg/cff;

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Lg/cwx;->bi()I

    move-result v9

    invoke-virtual {v6}, Lg/cwx;->bi()I

    move-result v11

    if-le v9, v11, :cond_b

    goto/16 :goto_11

    :cond_b
    iget-object v9, v2, Lg/hed;->am:Lg/cci;

    iget-object v9, v9, Lg/cci;->ab:Lg/dwg;

    sget-object v11, Lg/cwx;->an:Lg/cff;

    invoke-virtual {v6, v8}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    iget-object v9, v9, Lg/dwg;->u:Lg/cag;

    iget-object v9, v9, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v9, v6, v8}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v6

    invoke-virtual {v6}, Lg/dho;->e()Z

    move-result v6

    xor-int/2addr v6, v10

    :goto_2
    if-eqz v6, :cond_f

    invoke-virtual {v3, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v6, Lg/gks;

    if-eqz v9, :cond_d

    check-cast v6, Lg/gks;

    iget-object v6, v6, Lg/gks;->a:Lg/vm;

    if-eqz v6, :cond_d

    iget-object v9, v6, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_d

    invoke-virtual {v6}, Lg/vm;->t()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v6, v6, Lg/vm;->c:Lg/gks;

    iget-object v6, v6, Lg/gsh;->ae:Lg/eek;

    if-eqz v6, :cond_d

    iget-object v9, v6, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->CHECK_CAST:Lg/hay;

    if-ne v9, v11, :cond_d

    check-cast v6, Lg/adz;

    iget-object v6, v6, Lg/adz;->a:Ljava/lang/Object;

    check-cast v6, Lg/cwx;

    iget-object v9, v3, Lg/adz;->a:Ljava/lang/Object;

    invoke-virtual {v6, v9}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_d
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_f

    iget-object v2, v2, Lg/hed;->am:Lg/cci;

    iget-object v2, v2, Lg/cci;->ab:Lg/dwg;

    if-eqz v0, :cond_e

    iget-object v6, v0, Lg/eek;->ah:Lg/hay;

    sget-object v9, Lg/hay;->CAST:Lg/hay;

    if-ne v6, v9, :cond_e

    check-cast v0, Lg/adz;

    iget-object v0, v0, Lg/adz;->a:Ljava/lang/Object;

    check-cast v0, Lg/cwx;

    iget-object v2, v2, Lg/dwg;->u:Lg/cag;

    iget-object v2, v2, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v2, v0, v8}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v0

    invoke-virtual {v0}, Lg/dho;->e()Z

    move-result v7

    :cond_e
    if-eqz v7, :cond_34

    :cond_f
    new-instance v0, Lg/eek;

    sget-object v2, Lg/hay;->MOVE:Lg/hay;

    invoke-direct {v0, v2, v10}, Lg/eek;-><init>(Lg/hay;I)V

    iget v2, v3, Lg/eek;->ag:I

    iput v2, v0, Lg/eek;->ag:I

    iget-object v2, v3, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0, v2}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v0, v4}, Lg/eek;->_an(Lg/gsh;)V

    return-object v0

    :pswitch_3
    invoke-virtual {v3, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v0, Lg/cly;

    if-nez v4, :cond_10

    goto/16 :goto_11

    :cond_10
    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    iget-object v4, v0, Lg/eek;->ah:Lg/hay;

    sget-object v9, Lg/hay;->ARITH:Lg/hay;

    if-eq v4, v9, :cond_11

    sget-object v11, Lg/hay;->STR_CONCAT:Lg/hay;

    if-ne v4, v11, :cond_34

    :cond_11
    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v11, Lg/cly;

    if-nez v11, :cond_12

    goto/16 :goto_11

    :cond_12
    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lg/cly;

    iget-object v12, v12, Lg/cly;->a:Lg/eek;

    iget-object v13, v12, Lg/eek;->ah:Lg/hay;

    sget-object v14, Lg/hay;->IGET:Lg/hay;

    if-eq v13, v14, :cond_13

    sget-object v15, Lg/hay;->SGET:Lg/hay;

    if-eq v13, v15, :cond_13

    goto/16 :goto_11

    :cond_13
    move-object v15, v3

    check-cast v15, Lg/adz;

    iget-object v15, v15, Lg/adz;->a:Ljava/lang/Object;

    check-cast v15, Lg/dsj;

    const/16 v16, 0x2

    move-object v8, v12

    check-cast v8, Lg/adz;

    iget-object v8, v8, Lg/adz;->a:Ljava/lang/Object;

    check-cast v8, Lg/dsj;

    invoke-virtual {v15, v8}, Lg/dsj;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto/16 :goto_11

    :cond_14
    if-ne v13, v14, :cond_15

    :try_start_0
    sget-object v8, Lg/hay;->IPUT:Lg/hay;

    if-ne v6, v8, :cond_15

    invoke-virtual {v12, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-virtual {v3, v10}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_15
    invoke-virtual {v11}, Lg/gsh;->b()Lg/gsh;

    move-result-object v8

    invoke-static {v2, v12}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    sget-object v11, Lg/hay;->IPUT:Lg/hay;

    if-ne v6, v11, :cond_16

    invoke-virtual {v3, v10}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-static {v2, v6}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    :cond_16
    if-ne v4, v9, :cond_17

    check-cast v0, Lg/ame;

    iget-object v4, v0, Lg/ame;->d:Lg/bvj;

    invoke-virtual {v0, v10}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    new-instance v6, Lg/ame;

    invoke-direct {v6, v4, v5, v8, v0}, Lg/ame;-><init>(Lg/bvj;Lg/gks;Lg/gsh;Lg/gsh;)V

    sget-object v0, Lg/csv;->ARITH_ONEARG:Lg/csv;

    invoke-virtual {v6, v0}, Lg/lh;->w(Lg/csv;)V

    return-object v6

    :cond_17
    iget-object v4, v0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Lg/eek;

    sget-object v9, Lg/hay;->STR_CONCAT:Lg/hay;

    add-int/lit8 v11, v4, -0x1

    invoke-direct {v6, v9, v11}, Lg/eek;-><init>(Lg/hay;I)V

    const/4 v9, 0x1

    :goto_4
    if-ge v9, v4, :cond_18

    invoke-virtual {v0, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v11

    invoke-virtual {v6, v11}, Lg/eek;->_an(Lg/gsh;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_18
    invoke-static {v6}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v0

    sget-object v4, Lg/cwx;->al:Lg/aog;

    iput-object v4, v0, Lg/flv;->h:Lg/cwx;

    sget-object v4, Lg/bvj;->ADD:Lg/bvj;

    new-instance v6, Lg/ame;

    invoke-direct {v6, v4, v5, v8, v0}, Lg/ame;-><init>(Lg/bvj;Lg/gks;Lg/gsh;Lg/gsh;)V

    sget-object v0, Lg/csv;->ARITH_ONEARG:Lg/csv;

    invoke-virtual {v6, v0}, Lg/lh;->w(Lg/csv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :goto_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v7

    aput-object v2, v4, v10

    aput-object v0, v4, v16

    sget-object v0, Lg/acf;->a:Lg/dba;

    const-string v2, "Can\'t convert field arith insn: {}, mth: {}"

    invoke-interface {v0, v2, v4}, Lg/dba;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :pswitch_4
    move-object v0, v3

    check-cast v0, Lg/hdc;

    iget-object v3, v0, Lg/hdc;->ad:Lg/ayu;

    iget-object v4, v3, Lg/ayu;->d:Lg/ve;

    iget-object v4, v4, Lg/ve;->b:Ljava/lang/String;

    const-string v6, "java.lang.StringBuilder"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v3, v3, Lg/ayu;->e:Ljava/lang/String;

    const-string v4, "toString()Ljava/lang/String;"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lg/cly;

    if-eqz v4, :cond_1b

    sget-object v3, Lg/hay;->CONSTRUCTOR:Lg/hay;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    :goto_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v5, Lg/cly;

    if-eqz v6, :cond_1a

    check-cast v5, Lg/cly;

    iget-object v5, v5, Lg/cly;->a:Lg/eek;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    if-eq v6, v3, :cond_1a

    iget-object v6, v5, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_19

    goto :goto_7

    :cond_19
    invoke-virtual {v5, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    goto :goto_6

    :cond_1a
    :goto_7
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {v2, v0, v4}, Lg/acf;->i(Lg/hed;Lg/hdc;Ljava/util/List;)Lg/eek;

    move-result-object v0

    return-object v0

    :cond_1b
    instance-of v4, v3, Lg/gks;

    if-eqz v4, :cond_34

    check-cast v3, Lg/gks;

    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    invoke-virtual {v3}, Lg/vm;->t()Z

    move-result v4

    iget-object v5, v3, Lg/vm;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_24

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_a

    :cond_1c
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v3, Lg/vm;->c:Lg/gks;

    iget-object v3, v3, Lg/gsh;->ae:Lg/eek;

    if-nez v3, :cond_1d

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_b

    :cond_1d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gks;

    iget-object v6, v6, Lg/gsh;->ae:Lg/eek;

    if-nez v6, :cond_1e

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_b

    :cond_1e
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1f
    invoke-static {v4, v0}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v10

    if-eq v6, v5, :cond_20

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_b

    :cond_20
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v2, v3, v5}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v5

    if-nez v5, :cond_21

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_b

    :cond_21
    iget-object v5, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-ge v7, v6, :cond_22

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_b

    :cond_22
    :goto_9
    if-ge v10, v6, :cond_25

    add-int v7, v3, v10

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_23

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_b

    :cond_23
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_24
    :goto_a
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_25
    :goto_b
    invoke-static {v2, v0, v4}, Lg/acf;->i(Lg/hed;Lg/hdc;Ljava/util/List;)Lg/eek;

    move-result-object v0

    return-object v0

    :pswitch_5
    move-object v0, v3

    check-cast v0, Lg/dwk;

    iget-object v3, v0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {v3}, Lg/eii;->h()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v0, v3, Lg/eii;->c:Lg/evf;

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/bgw;

    invoke-static {v2, v0}, Lg/acf;->d(Lg/hed;Lg/bgw;)V

    return-object v5

    :cond_26
    invoke-virtual {v0}, Lg/dwk;->y()V

    return-object v5

    :pswitch_6
    move-object v0, v3

    check-cast v0, Lg/bgw;

    invoke-static {v2, v0}, Lg/acf;->d(Lg/hed;Lg/bgw;)V

    return-object v5

    :pswitch_7
    const/16 v16, 0x2

    move-object v0, v3

    check-cast v0, Lg/ame;

    iget-object v2, v0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    goto/16 :goto_11

    :cond_27
    invoke-virtual {v0, v10}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lg/cly;

    if-eqz v3, :cond_28

    check-cast v2, Lg/cly;

    iget-object v2, v2, Lg/cly;->a:Lg/eek;

    iget-object v3, v2, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->CONST:Lg/hay;

    if-ne v3, v4, :cond_29

    invoke-virtual {v2, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lg/ekh;

    if-eqz v3, :cond_29

    check-cast v2, Lg/ekh;

    goto :goto_c

    :cond_28
    instance-of v3, v2, Lg/ekh;

    if-eqz v3, :cond_29

    check-cast v2, Lg/ekh;

    goto :goto_c

    :cond_29
    move-object v2, v5

    :goto_c
    if-nez v2, :cond_2a

    goto/16 :goto_11

    :cond_2a
    iget-wide v3, v2, Lg/ekh;->a:J

    sget-object v6, Lg/bse;->b:[I

    iget-object v8, v0, Lg/ame;->d:Lg/bvj;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const-wide/16 v8, 0x0

    if-eq v6, v10, :cond_2e

    const/4 v11, 0x2

    if-eq v6, v11, :cond_2b

    goto/16 :goto_11

    :cond_2b
    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v6

    sget-object v7, Lg/cwx;->at:Lg/cff;

    if-ne v6, v7, :cond_34

    cmp-long v6, v3, v8

    if-eqz v6, :cond_2c

    const-wide/16 v7, 0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_34

    :cond_2c
    new-instance v3, Lg/eek;

    if-nez v6, :cond_2d

    sget-object v4, Lg/hay;->MOVE:Lg/hay;

    goto :goto_d

    :cond_2d
    sget-object v4, Lg/hay;->NOT:Lg/hay;

    :goto_d
    invoke-direct {v3, v4, v10}, Lg/eek;-><init>(Lg/hay;I)V

    iget-object v0, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v3, v0}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v3, v2}, Lg/eek;->_an(Lg/gsh;)V

    return-object v3

    :cond_2e
    invoke-virtual {v2}, Lg/ekh;->e()Z

    move-result v6

    if-eqz v6, :cond_2f

    cmp-long v6, v3, v8

    if-gez v6, :cond_34

    goto :goto_e

    :cond_2f
    iget-object v6, v2, Lg/flv;->h:Lg/cwx;

    sget-object v8, Lg/cwx;->ax:Lg/cff;

    if-ne v6, v8, :cond_30

    long-to-int v6, v3

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_34

    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v8

    if-nez v8, :cond_34

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_34

    goto :goto_e

    :cond_30
    sget-object v8, Lg/cwx;->s:Lg/cff;

    if-ne v6, v8, :cond_34

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v6, v8, v10

    if-gez v6, :cond_34

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_34

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_34

    :goto_e
    invoke-virtual {v2}, Lg/ekh;->e()Z

    move-result v6

    if-eqz v6, :cond_31

    neg-long v3, v3

    goto :goto_f

    :cond_31
    iget-object v6, v2, Lg/flv;->h:Lg/cwx;

    sget-object v8, Lg/cwx;->ax:Lg/cff;

    if-ne v6, v8, :cond_32

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    neg-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    int-to-long v3, v3

    goto :goto_f

    :cond_32
    sget-object v8, Lg/cwx;->s:Lg/cff;

    if-ne v6, v8, :cond_33

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    :goto_f
    new-instance v6, Lg/ekh;

    iget-object v2, v2, Lg/flv;->h:Lg/cwx;

    invoke-direct {v6, v3, v4, v2}, Lg/ekh;-><init>(JLg/cwx;)V

    goto :goto_10

    :cond_33
    move-object v6, v5

    :goto_10
    if-eqz v6, :cond_34

    new-instance v2, Lg/ame;

    sget-object v3, Lg/bvj;->SUB:Lg/bvj;

    iget-object v4, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, v6}, Lg/ame;-><init>(Lg/bvj;Lg/gks;Lg/gsh;Lg/gsh;)V

    return-object v2

    :cond_34
    :goto_11
    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Lg/hed;Lg/fza;)Z
    .locals 6

    iget-object v0, p2, Lg/fza;->ac:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v3, v5}, Lg/acf;->l(Lg/hed;Lg/eek;Lg/eek;)Lg/eek;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lg/eek;->_bs()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v0, v3}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lg/acf;->m(Lg/hed;Lg/fza;)Z

    return v3

    :cond_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Lg/gck;

    const-string p2, "Failed to replace insn"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method
