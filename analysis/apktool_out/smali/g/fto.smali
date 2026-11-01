.class public final Lg/fto;
.super Lg/grb;
.source "SourceFile"


# direct methods
.method public static a(Lg/gsh;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lg/cly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lg/cly;

    iget-object p0, p0, Lg/cly;->a:Lg/eek;

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->ARITH:Lg/hay;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Lg/rv;->b:[I

    check-cast p0, Lg/ame;

    iget-object p0, p0, Lg/ame;->d:Lg/bvj;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v3, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    sget-object p0, Lg/rv;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    return v3

    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Lg/eos;Lg/dfa;Lg/eii;)V
    .locals 3

    invoke-virtual {p3}, Lg/eii;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lg/csv;->DONT_WRAP:Lg/csv;

    iget-object v2, p3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lg/eii;->a:Lg/ath;

    sget-object v2, Lg/ath;->NOT:Lg/ath;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const/16 v0, 0x28

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    if-eqz v1, :cond_3

    const/16 p2, 0x29

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    :cond_3
    return-void
.end method

.method public final c(Lg/eos;Lg/dfa;Lg/eii;)V
    .locals 10

    iget-object v0, p2, Lg/dfa;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    sget-object v1, Lg/rv;->a:[I

    iget-object v2, p3, Lg/eii;->a:Lg/ath;

    iget-object v3, p3, Lg/eii;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x0

    const/16 v5, 0x21

    const/4 v6, 0x1

    if-eq v1, v6, :cond_6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_5

    const/4 p3, 0x3

    if-eq v1, p3, :cond_4

    const/4 p3, 0x4

    if-eq v1, p3, :cond_1

    const/4 p3, 0x5

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown condition mode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p3, Lg/ath;->AND:Lg/ath;

    if-ne v2, p3, :cond_2

    const-string p3, " && "

    goto :goto_1

    :cond_2
    const-string p3, " || "

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eii;

    invoke-virtual {p0, p1, p2, v2}, Lg/fto;->b(Lg/eos;Lg/dfa;Lg/eii;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_2

    :cond_4
    invoke-interface {p1, v5}, Lg/eos;->a(C)Lg/eos;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/eii;

    invoke-virtual {p0, p1, p2, p3}, Lg/fto;->b(Lg/eos;Lg/dfa;Lg/eii;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p3}, Lg/eii;->y()Lg/eii;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    const-string p3, " ? "

    invoke-interface {p1, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/eii;

    invoke-virtual {p0, p1, p2, p3}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    const-string p3, " : "

    invoke-interface {p1, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/eii;

    invoke-virtual {p0, p1, p2, p3}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    goto/16 :goto_3

    :cond_6
    iget-object p2, p3, Lg/eii;->c:Lg/evf;

    iget-object p3, p2, Lg/evf;->f:Ljava/lang/Object;

    check-cast p3, Lg/bgw;

    iget-object v1, p3, Lg/bgw;->y:Lg/ges;

    invoke-virtual {p3, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p3

    invoke-virtual {p2}, Lg/evf;->m()Lg/gsh;

    move-result-object p2

    invoke-virtual {p3}, Lg/flv;->j()Lg/cwx;

    move-result-object v2

    sget-object v3, Lg/cwx;->at:Lg/cff;

    invoke-virtual {v2, v3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p2, Lg/ekh;

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Lg/flv;->j()Lg/cwx;

    move-result-object v2

    invoke-virtual {v2, v3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, p2

    check-cast v2, Lg/ekh;

    iget-wide v2, v2, Lg/ekh;->a:J

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-nez v9, :cond_7

    invoke-virtual {v1}, Lg/ges;->c()Lg/ges;

    move-result-object v1

    :cond_7
    sget-object v2, Lg/ges;->EQ:Lg/ges;

    const/16 v3, 0x29

    const/16 v7, 0x28

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    if-ne p2, v6, :cond_8

    invoke-virtual {p0, p1, p3, v4}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    goto :goto_3

    :cond_8
    invoke-static {p3}, Lg/fto;->a(Lg/gsh;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1, v7}, Lg/eos;->a(C)Lg/eos;

    :cond_9
    invoke-virtual {p0, p1, p3, v4}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    if-eqz p2, :cond_e

    invoke-interface {p1, v3}, Lg/eos;->a(C)Lg/eos;

    goto :goto_3

    :cond_a
    sget-object v2, Lg/ges;->NE:Lg/ges;

    if-ne v1, v2, :cond_c

    invoke-interface {p1, v5}, Lg/eos;->a(C)Lg/eos;

    invoke-static {p3}, Lg/fto;->a(Lg/gsh;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1, v7}, Lg/eos;->a(C)Lg/eos;

    :cond_b
    invoke-virtual {p0, p1, p3, v4}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    if-eqz p2, :cond_e

    invoke-interface {p1, v3}, Lg/eos;->a(C)Lg/eos;

    goto :goto_3

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported boolean condition "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/ges;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lg/grb;->m:Lg/hed;

    invoke-virtual {v3, v2}, Lg/ebh;->bs(Ljava/lang/String;)V

    :cond_d
    invoke-static {p3}, Lg/fto;->a(Lg/gsh;)Z

    move-result v2

    invoke-virtual {p0, p1, p3, v2}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 p3, 0x20

    invoke-interface {p1, p3}, Lg/eos;->a(C)Lg/eos;

    move-result-object v2

    invoke-virtual {v1}, Lg/ges;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    invoke-interface {v1, p3}, Lg/eos;->a(C)Lg/eos;

    invoke-static {p2}, Lg/fto;->a(Lg/gsh;)Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    :cond_e
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/eii;

    return-void
.end method
