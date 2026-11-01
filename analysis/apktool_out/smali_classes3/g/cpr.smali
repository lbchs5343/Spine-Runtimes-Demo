.class public final Lg/cpr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lg/gqc;

.field public c:Lg/efg;

.field public final d:Lg/dhh;

.field public e:I

.field public f:Lg/ego;

.field public final g:Lg/cbm;

.field public final h:Lg/ib;

.field public i:I


# direct methods
.method public constructor <init>(Lg/dhh;Lg/cbm;Lg/ib;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cpr;->d:Lg/dhh;

    iput-object p2, p0, Lg/cpr;->g:Lg/cbm;

    iput-object p3, p0, Lg/cpr;->h:Lg/ib;

    return-void
.end method


# virtual methods
.method public final j(IIIZZ)Lg/gba;
    .locals 11

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/cpr;->h:Lg/ib;

    iget-boolean v0, v0, Lg/ib;->n:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lg/cpr;->h:Lg/ib;

    iget-object v1, v0, Lg/ib;->a:Lg/gba;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    monitor-enter v1

    :try_start_0
    iget-boolean v3, v1, Lg/gba;->p:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lg/gba;->o:Lg/ego;

    iget-object v3, v3, Lg/ego;->a:Lg/cbm;

    iget-object v3, v3, Lg/cbm;->a:Lg/eyn;

    invoke-virtual {p0, v3}, Lg/cpr;->k(Lg/eyn;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_2
    :goto_1
    iget-object v3, p0, Lg/cpr;->h:Lg/ib;

    invoke-virtual {v3}, Lg/ib;->u()Ljava/net/Socket;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v1

    iget-object v4, p0, Lg/cpr;->h:Lg/ib;

    iget-object v4, v4, Lg/ib;->a:Lg/gba;

    if-eqz v4, :cond_4

    if-nez v3, :cond_3

    :goto_3
    move/from16 v2, p5

    goto/16 :goto_8

    :cond_3
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v3}, Lg/erq;->o(Ljava/net/Socket;)V

    goto :goto_5

    :goto_4
    monitor-exit v1

    throw p1

    :cond_5
    :goto_5
    const/4 v1, 0x0

    iput v1, p0, Lg/cpr;->e:I

    iput v1, p0, Lg/cpr;->i:I

    iput v1, p0, Lg/cpr;->a:I

    iget-object v3, p0, Lg/cpr;->d:Lg/dhh;

    iget-object v4, p0, Lg/cpr;->g:Lg/cbm;

    iget-object v5, p0, Lg/cpr;->h:Lg/ib;

    invoke-virtual {v3, v4, v5, v2, v1}, Lg/dhh;->h(Lg/cbm;Lg/ib;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lg/cpr;->h:Lg/ib;

    iget-object v1, v1, Lg/ib;->a:Lg/gba;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lg/cpr;->f:Lg/ego;

    if-eqz v3, :cond_7

    iput-object v2, p0, Lg/cpr;->f:Lg/ego;

    :goto_6
    move-object v4, v2

    goto/16 :goto_7

    :cond_7
    iget-object v3, p0, Lg/cpr;->b:Lg/gqc;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lg/gqc;->au()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, p0, Lg/cpr;->b:Lg/gqc;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/gqc;->au()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget v4, v1, Lg/gqc;->ab:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lg/gqc;->ab:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/ego;

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_9
    iget-object v3, p0, Lg/cpr;->c:Lg/efg;

    if-nez v3, :cond_a

    new-instance v3, Lg/efg;

    iget-object v4, p0, Lg/cpr;->g:Lg/cbm;

    iget-object v5, p0, Lg/cpr;->h:Lg/ib;

    iget-object v6, v5, Lg/ib;->j:Lg/fys;

    iget-object v6, v6, Lg/fys;->t:Lg/aoy;

    invoke-direct {v3, v4, v6, v5}, Lg/efg;-><init>(Lg/cbm;Lg/aoy;Lg/dnw;)V

    iput-object v3, p0, Lg/cpr;->c:Lg/efg;

    :cond_a
    invoke-virtual {v3}, Lg/efg;->h()Lg/gqc;

    move-result-object v3

    iput-object v3, p0, Lg/cpr;->b:Lg/gqc;

    iget-object v4, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lg/cpr;->h:Lg/ib;

    iget-boolean v5, v5, Lg/ib;->n:Z

    if-nez v5, :cond_12

    iget-object v5, p0, Lg/cpr;->d:Lg/dhh;

    iget-object v6, p0, Lg/cpr;->g:Lg/cbm;

    iget-object v7, p0, Lg/cpr;->h:Lg/ib;

    invoke-virtual {v5, v6, v7, v4, v1}, Lg/dhh;->h(Lg/cbm;Lg/ib;Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lg/cpr;->h:Lg/ib;

    iget-object v1, v1, Lg/ib;->a:Lg/gba;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v3}, Lg/gqc;->au()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget v5, v3, Lg/gqc;->ab:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v3, Lg/gqc;->ab:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/ego;

    :goto_7
    new-instance v5, Lg/gba;

    iget-object v1, p0, Lg/cpr;->d:Lg/dhh;

    invoke-direct {v5, v1, v3}, Lg/gba;-><init>(Lg/dhh;Lg/ego;)V

    iget-object v1, p0, Lg/cpr;->h:Lg/ib;

    iput-object v5, v1, Lg/ib;->c:Lg/gba;

    :try_start_1
    iget-object v10, p0, Lg/cpr;->h:Lg/ib;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v5 .. v10}, Lg/gba;->ac(IIIZLg/dnw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v1, p0, Lg/cpr;->h:Lg/ib;

    iput-object v2, v1, Lg/ib;->c:Lg/gba;

    iget-object v1, p0, Lg/cpr;->h:Lg/ib;

    iget-object v1, v1, Lg/ib;->j:Lg/fys;

    iget-object v1, v1, Lg/fys;->t:Lg/aoy;

    invoke-virtual {v1, v3}, Lg/aoy;->y(Lg/ego;)V

    iget-object v1, p0, Lg/cpr;->d:Lg/dhh;

    iget-object v2, p0, Lg/cpr;->g:Lg/cbm;

    iget-object v6, p0, Lg/cpr;->h:Lg/ib;

    invoke-virtual {v1, v2, v6, v4, v0}, Lg/dhh;->h(Lg/cbm;Lg/ib;Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lg/cpr;->h:Lg/ib;

    iget-object v1, v1, Lg/ib;->a:Lg/gba;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iput-object v3, p0, Lg/cpr;->f:Lg/ego;

    iget-object v2, v5, Lg/gba;->h:Ljava/net/Socket;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-static {v2}, Lg/erq;->o(Ljava/net/Socket;)V

    goto/16 :goto_3

    :cond_c
    monitor-enter v5

    :try_start_2
    iget-object v1, p0, Lg/cpr;->d:Lg/dhh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/erq;->c:[B

    iget-object v2, v1, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v2, Lg/gfw;

    iget-object v1, v1, Lg/dhh;->a:Ljava/lang/Object;

    check-cast v1, Lg/lm;

    invoke-static {v2, v1}, Lg/gfw;->g(Lg/gfw;Lg/fyg;)V

    iget-object v1, p0, Lg/cpr;->h:Lg/ib;

    invoke-virtual {v1, v5}, Lg/ib;->s(Lg/gba;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    move/from16 v2, p5

    move-object v1, v5

    :goto_8
    invoke-virtual {v1, v2}, Lg/gba;->ab(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {v1}, Lg/gba;->w()V

    iget-object v1, p0, Lg/cpr;->f:Lg/ego;

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/cpr;->b:Lg/gqc;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lg/gqc;->au()Z

    move-result v1

    goto :goto_9

    :cond_e
    const/4 v1, 0x1

    :goto_9
    if-nez v1, :cond_0

    iget-object v1, p0, Lg/cpr;->c:Lg/efg;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lg/efg;->g()Z

    move-result v0

    :cond_f
    if-eqz v0, :cond_10

    goto/16 :goto_0

    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    monitor-exit v5

    throw p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Lg/cpr;->h:Lg/ib;

    iput-object v2, p2, Lg/ib;->c:Lg/gba;

    throw p1

    :cond_11
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lg/eyn;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/cpr;->g:Lg/cbm;

    iget-object v0, v0, Lg/cbm;->a:Lg/eyn;

    iget v1, p1, Lg/eyn;->d:I

    iget v2, v0, Lg/eyn;->d:I

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lg/eyn;->c:Ljava/lang/String;

    iget-object v0, v0, Lg/eyn;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cpr;->f:Lg/ego;

    instance-of v0, p1, Lg/gts;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/gts;

    iget-object v0, v0, Lg/gts;->errorCode:Lg/amc;

    sget-object v1, Lg/amc;->REFUSED_STREAM:Lg/amc;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lg/cpr;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/cpr;->e:I

    return-void

    :cond_0
    instance-of p1, p1, Lg/fhb;

    if-eqz p1, :cond_1

    iget p1, p0, Lg/cpr;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/cpr;->i:I

    return-void

    :cond_1
    iget p1, p0, Lg/cpr;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/cpr;->a:I

    return-void
.end method
