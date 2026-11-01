.class public final Lg/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/evq;


# instance fields
.field public a:Z

.field public final synthetic b:Lg/btb;

.field public final c:Z

.field public final d:Lg/clq;


# direct methods
.method public constructor <init>(Lg/btb;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/kx;->b:Lg/btb;

    iput-boolean p2, p0, Lg/kx;->c:Z

    new-instance p1, Lg/clq;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/kx;->d:Lg/clq;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 13

    iget-object v1, p0, Lg/kx;->b:Lg/btb;

    sget-object v0, Lg/erq;->c:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lg/kx;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lg/btb;->t()Lg/amc;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    iget-object v1, p0, Lg/kx;->b:Lg/btb;

    iget-object v3, v1, Lg/btb;->l:Lg/kx;

    iget-boolean v3, v3, Lg/kx;->c:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lg/kx;->d:Lg/clq;

    iget-wide v3, v3, Lg/clq;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    :goto_1
    iget-object v0, p0, Lg/kx;->d:Lg/clq;

    iget-wide v0, v0, Lg/clq;->b:J

    cmp-long v3, v0, v5

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Lg/kx;->g(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v7, v1, Lg/btb;->k:Lg/ug;

    iget v8, v1, Lg/btb;->g:I

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v7 .. v12}, Lg/ug;->ag(IZLg/clq;J)V

    :cond_3
    iget-object v1, p0, Lg/kx;->b:Lg/btb;

    monitor-enter v1

    :try_start_2
    iput-boolean v2, p0, Lg/kx;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lg/kx;->b:Lg/btb;

    iget-object v0, v0, Lg/btb;->k:Lg/ug;

    invoke-virtual {v0}, Lg/ug;->flush()V

    iget-object v0, p0, Lg/kx;->b:Lg/btb;

    invoke-virtual {v0}, Lg/btb;->s()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/kx;->b:Lg/btb;

    iget-object v0, v0, Lg/btb;->e:Lg/vz;

    return-object v0
.end method

.method public final f(Lg/clq;J)V
    .locals 3

    sget-object v0, Lg/erq;->c:[B

    iget-object v0, p0, Lg/kx;->d:Lg/clq;

    invoke-virtual {v0, p1, p2, p3}, Lg/clq;->f(Lg/clq;J)V

    :goto_0
    iget-wide p1, v0, Lg/clq;->b:J

    const-wide/16 v1, 0x4000

    cmp-long p3, p1, v1

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/kx;->g(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 5

    iget-object v0, p0, Lg/kx;->b:Lg/btb;

    sget-object v1, Lg/erq;->c:[B

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lg/btb;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Lg/kx;->d:Lg/clq;

    iget-wide v0, v0, Lg/clq;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/kx;->g(Z)V

    iget-object v0, p0, Lg/kx;->b:Lg/btb;

    iget-object v0, v0, Lg/btb;->k:Lg/ug;

    invoke-virtual {v0}, Lg/ug;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g(Z)V
    .locals 12

    iget-object v1, p0, Lg/kx;->b:Lg/btb;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lg/btb;->e:Lg/vz;

    invoke-virtual {v0}, Lg/boo;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-wide v2, v1, Lg/btb;->f:J

    iget-wide v4, v1, Lg/btb;->h:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lg/kx;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/kx;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lg/btb;->t()Lg/amc;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :try_start_4
    iget-object v0, v1, Lg/btb;->e:Lg/vz;

    invoke-virtual {v0}, Lg/vz;->b()V

    invoke-virtual {v1}, Lg/btb;->v()V

    iget-wide v2, v1, Lg/btb;->h:J

    iget-wide v4, v1, Lg/btb;->f:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lg/kx;->d:Lg/clq;

    iget-wide v4, v0, Lg/clq;->b:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-wide v2, v1, Lg/btb;->f:J

    add-long/2addr v2, v10

    iput-wide v2, v1, Lg/btb;->f:J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/kx;->d:Lg/clq;

    iget-wide v2, p1, Lg/clq;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    cmp-long p1, v10, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_1
    monitor-exit v1

    iget-object p1, p0, Lg/kx;->b:Lg/btb;

    iget-object p1, p1, Lg/btb;->e:Lg/vz;

    invoke-virtual {p1}, Lg/boo;->l()V

    :try_start_5
    iget-object p1, p0, Lg/kx;->b:Lg/btb;

    iget-object v6, p1, Lg/btb;->k:Lg/ug;

    iget v7, p1, Lg/btb;->g:I

    iget-object v9, p0, Lg/kx;->d:Lg/clq;

    invoke-virtual/range {v6 .. v11}, Lg/ug;->ag(IZLg/clq;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object p1, p0, Lg/kx;->b:Lg/btb;

    iget-object p1, p1, Lg/btb;->e:Lg/vz;

    invoke-virtual {p1}, Lg/vz;->b()V

    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lg/kx;->b:Lg/btb;

    iget-object v0, v0, Lg/btb;->e:Lg/vz;

    invoke-virtual {v0}, Lg/vz;->b()V

    throw p1

    :goto_2
    :try_start_6
    iget-object v0, v1, Lg/btb;->e:Lg/vz;

    invoke-virtual {v0}, Lg/vz;->b()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    monitor-exit v1

    throw p1
.end method
