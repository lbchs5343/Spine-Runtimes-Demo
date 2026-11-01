.class public final Lg/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dnw;


# instance fields
.field public a:Lg/gba;

.field public b:Lg/cpr;

.field public volatile c:Lg/gba;

.field public d:Z

.field public final e:Lg/dhh;

.field public f:Z

.field public g:Z

.field public final h:Lg/bep;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lg/fys;

.field public k:Lg/aju;

.field public final l:Lg/daw;

.field public volatile m:Lg/aju;

.field public volatile n:Z

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/fys;Lg/daw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ib;->j:Lg/fys;

    iput-object p2, p0, Lg/ib;->l:Lg/daw;

    iget-object p2, p1, Lg/fys;->w:Lg/fc;

    iget-object p2, p2, Lg/fc;->e:Ljava/lang/Object;

    check-cast p2, Lg/dhh;

    iput-object p2, p0, Lg/ib;->e:Lg/dhh;

    iget-object p1, p1, Lg/fys;->q:Lg/bco;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg/bep;

    invoke-direct {p1, p0}, Lg/bep;-><init>(Lg/ib;)V

    const/4 p2, 0x0

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Lg/dme;->_av(J)Lg/dme;

    iput-object p1, p0, Lg/ib;->h:Lg/bep;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lg/ib;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/ib;->f:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lg/ib;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ib;->n:Z

    iget-object v0, p0, Lg/ib;->m:Lg/aju;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/aju;->a:Ljava/lang/Object;

    check-cast v0, Lg/axn;

    invoke-interface {v0}, Lg/axn;->cancel()V

    :cond_1
    iget-object v0, p0, Lg/ib;->c:Lg/gba;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg/gba;->r:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lg/erq;->o(Ljava/net/Socket;)V

    :cond_2
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lg/ib;

    iget-object v1, p0, Lg/ib;->j:Lg/fys;

    iget-object v2, p0, Lg/ib;->l:Lg/daw;

    invoke-direct {v0, v1, v2}, Lg/ib;-><init>(Lg/fys;Lg/daw;)V

    return-object v0
.end method

.method public final p(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    sget-object v0, Lg/erq;->c:[B

    iget-object v0, p0, Lg/ib;->a:Lg/gba;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lg/ib;->u()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lg/ib;->a:Lg/gba;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lg/erq;->o(Ljava/net/Socket;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/ib;->h:Lg/bep;

    invoke-virtual {v0}, Lg/boo;->m()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    :cond_5
    return-object v0
.end method

.method public final q(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/ib;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lg/ib;->f:Z

    iget-boolean v0, p0, Lg/ib;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/ib;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lg/ib;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final r(Lg/fdy;)V
    .locals 5

    iget-object v0, p0, Lg/ib;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lg/bop;->h:Lg/bop;

    sget-object v0, Lg/bop;->h:Lg/bop;

    invoke-virtual {v0}, Lg/bop;->q()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lg/ib;->o:Ljava/lang/Object;

    iget-object v0, p0, Lg/ib;->j:Lg/fys;

    iget-object v0, v0, Lg/fys;->s:Lg/cop;

    new-instance v1, Lg/byc;

    invoke-direct {v1, p0, p1}, Lg/byc;-><init>(Lg/ib;Lg/fdy;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lg/cop;->a:Ljava/util/AbstractCollection;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/ib;->l:Lg/daw;

    iget-object p1, p1, Lg/daw;->e:Ljava/lang/Object;

    check-cast p1, Lg/eyn;

    iget-object p1, p1, Lg/eyn;->c:Ljava/lang/String;

    iget-object v2, v0, Lg/cop;->b:Ljava/util/AbstractCollection;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/byc;

    iget-object v4, v3, Lg/byc;->a:Lg/ib;

    iget-object v4, v4, Lg/ib;->l:Lg/daw;

    iget-object v4, v4, Lg/daw;->e:Ljava/lang/Object;

    check-cast v4, Lg/eyn;

    iget-object v4, v4, Lg/eyn;->c:Ljava/lang/String;

    invoke-static {v4, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lg/cop;->a:Ljava/util/AbstractCollection;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/byc;

    iget-object v4, v3, Lg/byc;->a:Lg/ib;

    iget-object v4, v4, Lg/ib;->l:Lg/daw;

    iget-object v4, v4, Lg/daw;->e:Ljava/lang/Object;

    check-cast v4, Lg/eyn;

    iget-object v4, v4, Lg/eyn;->c:Ljava/lang/String;

    invoke-static {v4, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    iget-object p1, v3, Lg/byc;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v1, Lg/byc;->c:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    invoke-virtual {v0}, Lg/cop;->j()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    const-string p1, "Already Executed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(Lg/gba;)V
    .locals 2

    sget-object v0, Lg/erq;->c:[B

    iget-object v0, p0, Lg/ib;->a:Lg/gba;

    if-nez v0, :cond_0

    iput-object p1, p0, Lg/ib;->a:Lg/gba;

    iget-object p1, p1, Lg/gba;->l:Ljava/util/ArrayList;

    new-instance v0, Lg/dqb;

    iget-object v1, p0, Lg/ib;->o:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lg/dqb;-><init>(Lg/ib;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()Lg/enb;
    .locals 3

    iget-object v0, p0, Lg/ib;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ib;->h:Lg/bep;

    invoke-virtual {v0}, Lg/boo;->l()V

    sget-object v0, Lg/bop;->h:Lg/bop;

    sget-object v0, Lg/bop;->h:Lg/bop;

    invoke-virtual {v0}, Lg/bop;->q()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lg/ib;->o:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lg/ib;->j:Lg/fys;

    iget-object v0, v0, Lg/fys;->s:Lg/cop;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lg/cop;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    invoke-virtual {p0}, Lg/ib;->v()Lg/enb;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lg/ib;->j:Lg/fys;

    iget-object v1, v1, Lg/fys;->s:Lg/cop;

    iget-object v2, v1, Lg/cop;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lg/cop;->g(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    iget-object v1, p0, Lg/ib;->j:Lg/fys;

    iget-object v1, v1, Lg/fys;->s:Lg/cop;

    iget-object v2, v1, Lg/cop;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lg/cop;->g(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-string v0, "Already Executed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final u()Ljava/net/Socket;
    .locals 6

    iget-object v0, p0, Lg/ib;->a:Lg/gba;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    sget-object v1, Lg/erq;->c:[B

    iget-object v1, v0, Lg/gba;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eq v3, v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lg/ib;->a:Lg/gba;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, Lg/gba;->q:J

    iget-object v1, p0, Lg/ib;->e:Lg/dhh;

    iget-object v3, v1, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v1, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v4, Lg/gfw;

    sget-object v5, Lg/erq;->c:[B

    iget-boolean v5, v0, Lg/gba;->p:Z

    if-nez v5, :cond_2

    iget-object v0, v1, Lg/dhh;->a:Ljava/lang/Object;

    check-cast v0, Lg/lm;

    invoke-static {v4, v0}, Lg/gfw;->g(Lg/gfw;Lg/fyg;)V

    return-object v2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/gba;->p:Z

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lg/gfw;->i()V

    :cond_3
    iget-object v0, v0, Lg/gba;->h:Ljava/net/Socket;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()Lg/enb;
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lg/ib;->j:Lg/fys;

    iget-object v0, v0, Lg/fys;->k:Ljava/util/List;

    invoke-static {v2, v0}, Lg/eko;->c(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, Lg/cgj;

    iget-object v1, p0, Lg/ib;->j:Lg/fys;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1}, Lg/cgj;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/cgj;

    iget-object v1, p0, Lg/ib;->j:Lg/fys;

    iget-object v1, v1, Lg/fys;->j:Lg/ao;

    invoke-direct {v0, v1}, Lg/cgj;-><init>(Lg/ao;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/cgj;

    iget-object v1, p0, Lg/ib;->j:Lg/fys;

    iget-object v1, v1, Lg/fys;->m:Lg/fvd;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lg/cgj;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lg/czk;->b:Lg/czk;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/ib;->j:Lg/fys;

    iget-object v0, v0, Lg/fys;->p:Ljava/util/List;

    invoke-static {v2, v0}, Lg/eko;->c(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, Lg/czk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/czk;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/dpe;

    iget-object v5, p0, Lg/ib;->l:Lg/daw;

    iget-object v1, p0, Lg/ib;->j:Lg/fys;

    iget v6, v1, Lg/fys;->y:I

    iget v7, v1, Lg/fys;->u:I

    iget v8, v1, Lg/fys;->g:I

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lg/dpe;-><init>(Lg/ib;Ljava/util/ArrayList;ILg/aju;Lg/daw;III)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Lg/dpe;->k(Lg/daw;)Lg/enb;

    move-result-object v0

    iget-boolean v4, v1, Lg/ib;->n:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-virtual {p0, v2}, Lg/ib;->q(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lg/erq;->m(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lg/ib;->q(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v0, v4}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lg/ib;->q(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public final w(Lg/aju;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/ib;->m:Lg/aju;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lg/ib;->d:Z

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v0, p0, Lg/ib;->g:Z

    if-eqz v0, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean p1, p0, Lg/ib;->d:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean p1, p0, Lg/ib;->g:Z

    :cond_4
    iget-boolean p2, p0, Lg/ib;->d:Z

    const/4 p3, 0x1

    if-nez p2, :cond_5

    iget-boolean v0, p0, Lg/ib;->g:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, Lg/ib;->g:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lg/ib;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    const/4 p1, 0x1

    :cond_6
    move p2, p1

    move p1, v0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    const/4 p2, 0x0

    :goto_3
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lg/ib;->m:Lg/aju;

    iget-object p1, p0, Lg/ib;->a:Lg/gba;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lg/gba;->u()V

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, Lg/ib;->p(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_4
    return-object p4
.end method

.method public final x(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/ib;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/ib;->m:Lg/aju;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lg/aju;->a:Ljava/lang/Object;

    check-cast v1, Lg/axn;

    invoke-interface {v1}, Lg/axn;->cancel()V

    iget-object v1, p1, Lg/aju;->d:Ljava/lang/Object;

    check-cast v1, Lg/ib;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, Lg/ib;->w(Lg/aju;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, Lg/ib;->k:Lg/aju;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
