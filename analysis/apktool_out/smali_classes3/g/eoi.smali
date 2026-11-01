.class public final Lg/eoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cpv;


# instance fields
.field public final a:Lg/clq;

.field public final b:Lg/clq;

.field public d:Z

.field public final f:J

.field public g:Z

.field public final synthetic h:Lg/btb;


# direct methods
.method public constructor <init>(Lg/btb;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eoi;->h:Lg/btb;

    iput-wide p2, p0, Lg/eoi;->f:J

    iput-boolean p4, p0, Lg/eoi;->g:Z

    new-instance p1, Lg/clq;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eoi;->a:Lg/clq;

    new-instance p1, Lg/clq;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eoi;->b:Lg/clq;

    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 10

    const-string p2, "sink"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lg/eoi;->h:Lg/btb;

    monitor-enter p2

    :try_start_0
    iget-object p3, p2, Lg/btb;->b:Lg/vz;

    invoke-virtual {p3}, Lg/boo;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Lg/btb;->t()Lg/amc;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lg/eoi;->g:Z

    if-nez p3, :cond_0

    iget-object p3, p2, Lg/btb;->c:Ljava/io/IOException;

    if-nez p3, :cond_1

    new-instance p3, Lg/gts;

    invoke-virtual {p2}, Lg/btb;->t()Lg/amc;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Lg/gts;-><init>(Lg/amc;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lg/eoi;->d:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lg/eoi;->b:Lg/clq;

    iget-wide v1, v0, Lg/clq;->b:J

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v1, v5

    if-lez v8, :cond_2

    const-wide/16 v5, 0x2000

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lg/clq;->c(Lg/clq;J)J

    move-result-wide v0

    iget-wide v5, p2, Lg/btb;->m:J

    add-long/2addr v5, v0

    iput-wide v5, p2, Lg/btb;->m:J

    iget-wide v8, p2, Lg/btb;->d:J

    sub-long/2addr v5, v8

    if-nez p3, :cond_4

    iget-object v2, p2, Lg/btb;->k:Lg/ug;

    iget-object v2, v2, Lg/ug;->c:Lg/che;

    invoke-virtual {v2}, Lg/che;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v8, v2

    cmp-long v2, v5, v8

    if-ltz v2, :cond_4

    iget-object v2, p2, Lg/btb;->k:Lg/ug;

    iget v8, p2, Lg/btb;->g:I

    invoke-virtual {v2, v8, v5, v6}, Lg/ug;->ae(IJ)V

    iget-wide v5, p2, Lg/btb;->m:J

    iput-wide v5, p2, Lg/btb;->d:J

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lg/eoi;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x1

    :cond_3
    move-wide v0, v3

    goto :goto_2

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

    :cond_4
    :goto_2
    :try_start_4
    iget-object v2, p2, Lg/btb;->b:Lg/vz;

    invoke-virtual {v2}, Lg/vz;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p2

    if-eqz v7, :cond_5

    goto/16 :goto_0

    :cond_5
    cmp-long p1, v0, v3

    if-eqz p1, :cond_6

    return-wide v0

    :cond_6
    if-nez p3, :cond_7

    return-wide v3

    :cond_7
    throw p3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_8
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p3, "stream closed"

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    iget-object p3, p2, Lg/btb;->b:Lg/vz;

    invoke-virtual {p3}, Lg/vz;->b()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    monitor-exit p2

    throw p1
.end method

.method public final close()V
    .locals 5

    iget-object v0, p0, Lg/eoi;->h:Lg/btb;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lg/eoi;->d:Z

    iget-object v1, p0, Lg/eoi;->b:Lg/clq;

    iget-wide v2, v1, Lg/clq;->b:J

    invoke-virtual {v1}, Lg/clq;->aa()V

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v0, v1}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    invoke-virtual {p0, v2, v3}, Lg/eoi;->i(J)V

    :cond_0
    iget-object v0, p0, Lg/eoi;->h:Lg/btb;

    invoke-virtual {v0}, Lg/btb;->s()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/eoi;->h:Lg/btb;

    iget-object v0, v0, Lg/btb;->b:Lg/vz;

    return-object v0
.end method

.method public final i(J)V
    .locals 1

    sget-object v0, Lg/erq;->c:[B

    iget-object v0, p0, Lg/eoi;->h:Lg/btb;

    iget-object v0, v0, Lg/btb;->k:Lg/ug;

    invoke-virtual {v0, p1, p2}, Lg/ug;->aa(J)V

    return-void
.end method
