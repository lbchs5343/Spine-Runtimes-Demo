.class public final Lg/fdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/czh;


# instance fields
.field public e:Ljava/lang/Throwable;

.field public f:Lg/ib;

.field public final g:[Ljava/lang/Object;

.field public final h:Lg/eyd;

.field public final i:Lg/eya;

.field public final j:Lg/bku;

.field public k:Z

.field public final l:Ljava/lang/Object;

.field public volatile m:Z


# direct methods
.method public constructor <init>(Lg/bku;Ljava/lang/Object;[Ljava/lang/Object;Lg/eyd;Lg/eya;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdw;->j:Lg/bku;

    iput-object p2, p0, Lg/fdw;->l:Ljava/lang/Object;

    iput-object p3, p0, Lg/fdw;->g:[Ljava/lang/Object;

    iput-object p4, p0, Lg/fdw;->h:Lg/eyd;

    iput-object p5, p0, Lg/fdw;->i:Lg/eya;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-boolean v0, p0, Lg/fdw;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/fdw;->f:Lg/ib;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg/ib;->n:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()Lg/daw;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg/fdw;->n()Lg/dnw;

    move-result-object v0

    check-cast v0, Lg/ib;

    iget-object v0, v0, Lg/ib;->l:Lg/daw;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Lg/anx;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/fdw;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fdw;->k:Z

    invoke-virtual {p0}, Lg/fdw;->n()Lg/dnw;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lg/fdw;->m:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/ib;

    invoke-virtual {v1}, Lg/ib;->cancel()V

    :cond_0
    check-cast v0, Lg/ib;

    invoke-virtual {v0}, Lg/ib;->t()Lg/enb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/fdw;->o(Lg/enb;)Lg/anx;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fdw;->m:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/fdw;->f:Lg/ib;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ib;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final clone()Lg/czh;
    .locals 6

    new-instance v0, Lg/fdw;

    iget-object v4, p0, Lg/fdw;->h:Lg/eyd;

    iget-object v5, p0, Lg/fdw;->i:Lg/eya;

    iget-object v1, p0, Lg/fdw;->j:Lg/bku;

    iget-object v2, p0, Lg/fdw;->l:Ljava/lang/Object;

    iget-object v3, p0, Lg/fdw;->g:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lg/fdw;-><init>(Lg/bku;Ljava/lang/Object;[Ljava/lang/Object;Lg/eyd;Lg/eya;)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lg/fdw;

    iget-object v4, p0, Lg/fdw;->h:Lg/eyd;

    iget-object v5, p0, Lg/fdw;->i:Lg/eya;

    iget-object v1, p0, Lg/fdw;->j:Lg/bku;

    iget-object v2, p0, Lg/fdw;->l:Ljava/lang/Object;

    iget-object v3, p0, Lg/fdw;->g:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lg/fdw;-><init>(Lg/bku;Ljava/lang/Object;[Ljava/lang/Object;Lg/eyd;Lg/eya;)V

    return-object v0
.end method

.method public final d(Lg/bmm;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/fdw;->k:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fdw;->k:Z

    iget-object v0, p0, Lg/fdw;->f:Lg/ib;

    iget-object v1, p0, Lg/fdw;->e:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lg/fdw;->p()Lg/ib;

    move-result-object v2

    iput-object v2, p0, Lg/fdw;->f:Lg/ib;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lg/aky;->t(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lg/fdw;->e:Ljava/lang/Throwable;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v1}, Lg/bmm;->w(Lg/czh;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lg/fdw;->m:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/ib;->cancel()V

    :cond_2
    new-instance v1, Lg/fdy;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lg/fdy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lg/ib;->r(Lg/fdy;)V

    return-void

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final n()Lg/dnw;
    .locals 2

    iget-object v0, p0, Lg/fdw;->f:Lg/ib;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/fdw;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lg/fdw;->p()Lg/ib;

    move-result-object v0

    iput-object v0, p0, Lg/fdw;->f:Lg/ib;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {v0}, Lg/aky;->t(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lg/fdw;->e:Ljava/lang/Throwable;

    throw v0
.end method

.method public final o(Lg/enb;)Lg/anx;
    .locals 5

    iget-object v0, p1, Lg/enb;->b:Lg/ehi;

    invoke-virtual {p1}, Lg/enb;->q()Lg/hdt;

    move-result-object p1

    new-instance v1, Lg/agt;

    invoke-virtual {v0}, Lg/ehi;->e()Lg/dpd;

    move-result-object v2

    invoke-virtual {v0}, Lg/ehi;->d()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lg/agt;-><init>(Lg/dpd;J)V

    iput-object v1, p1, Lg/hdt;->m:Lg/ehi;

    invoke-virtual {p1}, Lg/hdt;->o()Lg/enb;

    move-result-object p1

    iget v1, p1, Lg/enb;->g:I

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-lt v1, v2, :cond_6

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    const-string v4, "rawResponse must be successful response"

    if-eq v1, v2, :cond_4

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/fsb;

    invoke-direct {v1, v0}, Lg/fsb;-><init>(Lg/ehi;)V

    :try_start_0
    iget-object v0, p0, Lg/fdw;->i:Lg/eya;

    invoke-interface {v0, v1}, Lg/eya;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lg/enb;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lg/anx;

    invoke-direct {v2, p1, v0}, Lg/anx;-><init>(Lg/enb;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object v0, v1, Lg/fsb;->a:Ljava/io/IOException;

    if-nez v0, :cond_3

    throw p1

    :cond_3
    throw v0

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lg/ehi;->close()V

    invoke-virtual {p1}, Lg/enb;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lg/anx;

    invoke-direct {v0, p1, v3}, Lg/anx;-><init>(Lg/enb;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    :try_start_1
    new-instance v1, Lg/clq;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lg/ehi;->c()Lg/dsy;

    move-result-object v2

    invoke-interface {v2, v1}, Lg/dsy;->ah(Lg/clq;)J

    invoke-virtual {v0}, Lg/ehi;->e()Lg/dpd;

    invoke-virtual {v0}, Lg/ehi;->d()J

    invoke-virtual {p1}, Lg/enb;->p()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lg/anx;

    invoke-direct {v1, p1, v3}, Lg/anx;-><init>(Lg/enb;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lg/ehi;->close()V

    return-object v1

    :cond_7
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lg/ehi;->close()V

    throw p1
.end method

.method public final p()Lg/ib;
    .locals 14

    iget-object v0, p0, Lg/fdw;->j:Lg/bku;

    iget-object v1, v0, Lg/bku;->b:[Lg/kj;

    iget-object v2, p0, Lg/fdw;->g:[Ljava/lang/Object;

    array-length v3, v2

    array-length v4, v1

    if-ne v3, v4, :cond_b

    new-instance v5, Lg/gea;

    iget-object v6, v0, Lg/bku;->c:Ljava/lang/String;

    iget-object v7, v0, Lg/bku;->k:Lg/eyn;

    iget-object v8, v0, Lg/bku;->e:Ljava/lang/String;

    iget-object v9, v0, Lg/bku;->g:Lg/dvq;

    iget-object v10, v0, Lg/bku;->l:Lg/dpd;

    iget-boolean v11, v0, Lg/bku;->a:Z

    iget-boolean v12, v0, Lg/bku;->h:Z

    iget-boolean v13, v0, Lg/bku;->j:Z

    invoke-direct/range {v5 .. v13}, Lg/gea;-><init>(Ljava/lang/String;Lg/eyn;Ljava/lang/String;Lg/dvq;Lg/dpd;ZZZ)V

    iget-boolean v4, v0, Lg/bku;->d:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_1

    aget-object v8, v2, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v7

    aget-object v9, v2, v7

    invoke-virtual {v8, v5, v9}, Lg/kj;->b(Lg/gea;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v5, Lg/gea;->e:Lg/ke;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lg/ke;->n()Lg/eyn;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, v5, Lg/gea;->l:Ljava/lang/String;

    iget-object v3, v5, Lg/gea;->j:Lg/eyn;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "link"

    invoke-static {v1, v7}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lg/eyn;->p(Ljava/lang/String;)Lg/ke;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lg/ke;->n()Lg/eyn;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_a

    :goto_2
    iget-object v3, v5, Lg/gea;->d:Lg/sz;

    if-nez v3, :cond_7

    iget-object v7, v5, Lg/gea;->k:Lg/fdy;

    if-eqz v7, :cond_4

    new-instance v3, Lg/etr;

    iget-object v2, v7, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v6, v7, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v3, v2, v6}, Lg/etr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_4
    iget-object v7, v5, Lg/gea;->i:Lg/dzh;

    if-eqz v7, :cond_6

    iget-object v2, v7, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lg/cso;

    iget-object v6, v7, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v6, Lg/gei;

    iget-object v7, v7, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v7, Lg/dpd;

    invoke-static {v2}, Lg/erq;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v6, v7, v2}, Lg/cso;-><init>(Lg/gei;Lg/dpd;Ljava/util/List;)V

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v7, v5, Lg/gea;->c:Z

    if-eqz v7, :cond_7

    new-array v3, v6, [B

    int-to-long v7, v6

    move-wide v9, v7

    move-wide v11, v7

    invoke-static/range {v7 .. v12}, Lg/erq;->ac(JJJ)V

    new-instance v7, Lg/bab;

    invoke-direct {v7, v2, v6, v3}, Lg/bab;-><init>(Lg/dpd;I[B)V

    move-object v3, v7

    :cond_7
    :goto_3
    iget-object v2, v5, Lg/gea;->m:Lg/dpd;

    iget-object v6, v5, Lg/gea;->h:Lg/ais;

    if-eqz v2, :cond_9

    if-eqz v3, :cond_8

    new-instance v7, Lg/as;

    invoke-direct {v7, v3, v2}, Lg/as;-><init>(Lg/sz;Lg/dpd;)V

    move-object v3, v7

    goto :goto_4

    :cond_8
    const-string v7, "Content-Type"

    iget-object v2, v2, Lg/dpd;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lg/ais;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    iget-object v2, v5, Lg/gea;->f:Lg/fzn;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lg/fzn;->h:Ljava/lang/Object;

    invoke-virtual {v6}, Lg/ais;->d()Lg/dvq;

    move-result-object v1

    invoke-virtual {v1}, Lg/dvq;->f()Lg/ais;

    move-result-object v1

    iput-object v1, v2, Lg/fzn;->e:Ljava/lang/Object;

    iget-object v1, v5, Lg/gea;->g:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lg/fzn;->w(Ljava/lang/String;Lg/sz;)V

    new-instance v1, Lg/dau;

    iget-object v3, v0, Lg/bku;->f:Ljava/lang/Class;

    iget-object v0, v0, Lg/bku;->i:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lg/fdw;->l:Ljava/lang/Object;

    invoke-direct {v1, v3, v5, v0, v4}, Lg/dau;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V

    const-class v0, Lg/dau;

    invoke-virtual {v2, v0, v1}, Lg/fzn;->p(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lg/fzn;->x()Lg/daw;

    move-result-object v0

    iget-object v1, p0, Lg/fdw;->h:Lg/eyd;

    check-cast v1, Lg/fys;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/ib;

    invoke-direct {v2, v1, v0}, Lg/ib;-><init>(Lg/fys;Lg/daw;)V

    return-object v2

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lg/gea;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument count ("

    const-string v4, ") doesn\'t match expected count ("

    invoke-static {v3, v2, v4}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    const-string v3, ")"

    invoke-static {v2, v1, v3}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
