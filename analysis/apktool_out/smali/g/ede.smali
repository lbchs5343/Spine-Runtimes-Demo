.class public final Lg/ede;
.super Lg/pj;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ede;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method


# virtual methods
.method public final a(Lg/hed;Lg/hed;Lg/fmz;Lg/fza;Lg/hdc;)V
    .locals 8

    iget-object v0, p3, Lg/fmz;->b:Lg/eek;

    invoke-virtual {v0}, Lg/eek;->_o()Lg/eek;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p2, Lg/hed;->al:Lg/ayu;

    iget-object v3, v3, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p2, Lg/hed;->af:I

    new-array v4, v3, [Lg/gsh;

    iget-object p3, p3, Lg/fmz;->f:[I

    const/4 v5, 0x0

    :goto_0
    array-length v6, p3

    if-ge v5, v6, :cond_0

    invoke-virtual {p5, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    aget v7, p3, v5

    aput-object v6, v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    goto/16 :goto_4

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p3}, Lg/eek;->h(Ljava/util/Collection;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gks;

    iget v6, v5, Lg/gks;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "\' in method call: "

    if-lt v6, v3, :cond_2

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown register number \'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    aget-object v6, v4, v6

    if-nez v6, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not passed register \'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    invoke-virtual {v6}, Lg/gsh;->b()Lg/gsh;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to replace arg "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for method inline: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    iget-object p3, p5, Lg/eek;->ai:Lg/gks;

    const/4 v3, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lg/gks;->z()Lg/gks;

    move-result-object p3

    invoke-virtual {v1, p3}, Lg/eek;->ax(Lg/gks;)V

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    :goto_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_6
    sget-object p3, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v4, p5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, p3}, Lg/sm;->g(Lg/csv;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    iget-object p3, v0, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->IPUT:Lg/hay;

    if-ne p3, v4, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lg/hed;->bg()Z

    move-result p3

    xor-int/2addr p3, v3

    :goto_2
    if-eqz p3, :cond_9

    iget-object p3, p2, Lg/hed;->aw:Lg/cwx;

    const-string v4, "unused"

    invoke-virtual {p1, p3}, Lg/hed;->bm(Lg/cwx;)Lg/gks;

    move-result-object p3

    invoke-virtual {p3, v4}, Lg/gks;->c(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lg/eek;->ax(Lg/gks;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    :goto_3
    const/4 v2, 0x1

    goto :goto_5

    :goto_4
    const-string v3, "Method inline failed with exception"

    invoke-virtual {p1, v3, p3}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    if-eqz v2, :cond_b

    sget-object p3, Lg/acq;->j:Lg/acq;

    iget-object v2, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, p3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p3

    check-cast p3, Lg/ebp;

    invoke-static {p1, p4, p5, v1}, Lg/ffb;->bw(Lg/hed;Lg/fza;Lg/eek;Lg/eek;)Z

    move-result p4

    if-eqz p4, :cond_b

    if-eqz p3, :cond_a

    invoke-virtual {v1, p3}, Lg/lh;->m(Lg/eue;)V

    :cond_a
    new-instance p3, Ljava/util/ArrayList;

    iget-object p4, p2, Lg/hed;->au:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p3}, Lg/hed;->bh(Ljava/util/List;)V

    new-instance p3, Lg/esv;

    invoke-direct {p3, p0, p1, p2}, Lg/esv;-><init>(Lg/ede;Lg/hed;Lg/hed;)V

    invoke-virtual {v0, p3}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    return-void

    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to inline method: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ebh;->bu(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-virtual {p5}, Lg/eek;->_bs()V

    return-void
.end method

.method public final j(Lg/hed;)V
    .locals 8

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lg/fza;

    iget-object v1, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eek;

    iget-object v3, v2, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->INVOKE:Lg/hay;

    if-ne v3, v4, :cond_6

    move-object v7, v2

    check-cast v7, Lg/hdc;

    const-string v2, "Failed to check method for inline after forced process"

    const-string v3, "Class process forced to load method for inline: "

    sget-object v4, Lg/acq;->j:Lg/acq;

    iget-object v5, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v4

    check-cast v4, Lg/ebp;

    instance-of v5, v4, Lg/hed;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    check-cast v4, Lg/hed;

    :try_start_0
    invoke-static {v4}, Lg/eak;->w(Lg/hed;)Lg/fmz;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lg/ebh;->bw(Ljava/lang/String;)V

    iget-object v3, p1, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v3, v3, Lg/dwg;->v:Lg/at;

    iget-object v5, v4, Lg/hed;->am:Lg/cci;

    invoke-virtual {v3, v5}, Lg/at;->d(Lg/cci;)V

    invoke-static {v4}, Lg/eak;->w(Lg/hed;)Lg/fmz;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_3
    iget-object v2, v5, Lg/fmz;->b:Lg/eek;

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    goto :goto_4

    :cond_5
    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lg/ede;->a(Lg/hed;Lg/hed;Lg/fmz;Lg/fza;Lg/hdc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_3
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to process method for inline: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_4
    move-object v3, p1

    :goto_5
    move-object p1, v3

    goto/16 :goto_0

    :cond_7
    :goto_6
    return-void
.end method
