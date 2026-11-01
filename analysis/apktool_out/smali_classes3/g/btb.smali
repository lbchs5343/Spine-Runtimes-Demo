.class public final Lg/btb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lg/vz;

.field public c:Ljava/io/IOException;

.field public d:J

.field public final e:Lg/vz;

.field public f:J

.field public final g:I

.field public h:J

.field public i:Lg/amc;

.field public final j:Lg/eoi;

.field public final k:Lg/ug;

.field public final l:Lg/kx;

.field public m:J

.field public final n:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(ILg/ug;ZZLg/dvq;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/btb;->g:I

    iput-object p2, p0, Lg/btb;->k:Lg/ug;

    iget-object p1, p2, Lg/ug;->x:Lg/che;

    invoke-virtual {p1}, Lg/che;->c()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lg/btb;->h:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lg/btb;->n:Ljava/util/ArrayDeque;

    new-instance v0, Lg/eoi;

    iget-object p2, p2, Lg/ug;->c:Lg/che;

    invoke-virtual {p2}, Lg/che;->c()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, Lg/eoi;-><init>(Lg/btb;JZ)V

    iput-object v0, p0, Lg/btb;->j:Lg/eoi;

    new-instance p2, Lg/kx;

    invoke-direct {p2, p0, p3}, Lg/kx;-><init>(Lg/btb;Z)V

    iput-object p2, p0, Lg/btb;->l:Lg/kx;

    new-instance p2, Lg/vz;

    invoke-direct {p2, p0}, Lg/vz;-><init>(Lg/btb;)V

    iput-object p2, p0, Lg/btb;->b:Lg/vz;

    new-instance p2, Lg/vz;

    invoke-direct {p2, p0}, Lg/vz;-><init>(Lg/btb;)V

    iput-object p2, p0, Lg/btb;->e:Lg/vz;

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lg/btb;->o()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lg/btb;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final o()Z
    .locals 4

    iget v0, p0, Lg/btb;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lg/btb;->k:Lg/ug;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final declared-synchronized p(Lg/amc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/btb;->i:Lg/amc;

    if-nez v0, :cond_0

    iput-object p1, p0, Lg/btb;->i:Lg/amc;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final q(Lg/amc;Ljava/io/IOException;)Z
    .locals 2

    sget-object v0, Lg/erq;->c:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/btb;->i:Lg/amc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lg/btb;->i:Lg/amc;

    iput-object p2, p0, Lg/btb;->c:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lg/btb;->j:Lg/eoi;

    iget-boolean p1, p1, Lg/eoi;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/btb;->l:Lg/kx;

    iget-boolean p1, p1, Lg/kx;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    iget-object p1, p0, Lg/btb;->k:Lg/ug;

    iget p2, p0, Lg/btb;->g:I

    invoke-virtual {p1, p2}, Lg/ug;->ad(I)Lg/btb;

    const/4 p1, 0x1

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final r(Lg/amc;)V
    .locals 2

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/btb;->q(Lg/amc;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/btb;->k:Lg/ug;

    iget v1, p0, Lg/btb;->g:I

    invoke-virtual {v0, v1, p1}, Lg/ug;->ai(ILg/amc;)V

    return-void
.end method

.method public final s()V
    .locals 2

    sget-object v0, Lg/erq;->c:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/btb;->j:Lg/eoi;

    iget-boolean v1, v0, Lg/eoi;->g:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lg/eoi;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/btb;->l:Lg/kx;

    iget-boolean v1, v0, Lg/kx;->c:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lg/kx;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lg/btb;->u()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    sget-object v0, Lg/amc;->CANCEL:Lg/amc;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lg/btb;->x(Lg/amc;Ljava/io/IOException;)V

    return-void

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lg/btb;->k:Lg/ug;

    iget v1, p0, Lg/btb;->g:I

    invoke-virtual {v0, v1}, Lg/ug;->ad(I)Lg/btb;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()Lg/amc;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/btb;->i:Lg/amc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized u()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/btb;->i:Lg/amc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/btb;->j:Lg/eoi;

    iget-boolean v2, v0, Lg/eoi;->g:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lg/eoi;->d:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/btb;->l:Lg/kx;

    iget-boolean v2, v0, Lg/kx;->c:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lg/kx;->a:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lg/btb;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lg/btb;->l:Lg/kx;

    iget-boolean v1, v0, Lg/kx;->a:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lg/kx;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/btb;->i:Lg/amc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/btb;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/gts;

    iget-object v1, p0, Lg/btb;->i:Lg/amc;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lg/gts;-><init>(Lg/amc;)V

    :goto_0
    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w(Lg/dvq;Z)V
    .locals 2

    const-string v0, "headers"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/erq;->c:[B

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/btb;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/btb;->j:Lg/eoi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lg/btb;->a:Z

    iget-object v0, p0, Lg/btb;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lg/btb;->j:Lg/eoi;

    iput-boolean v1, p1, Lg/eoi;->g:Z

    :cond_2
    invoke-virtual {p0}, Lg/btb;->u()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_3

    iget-object p1, p0, Lg/btb;->k:Lg/ug;

    iget p2, p0, Lg/btb;->g:I

    invoke-virtual {p1, p2}, Lg/ug;->ad(I)Lg/btb;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final x(Lg/amc;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "rstStatusCode"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lg/btb;->q(Lg/amc;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lg/btb;->k:Lg/ug;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lg/ug;->w:Lg/djf;

    iget v0, p0, Lg/btb;->g:I

    invoke-virtual {p2, v0, p1}, Lg/djf;->g(ILg/amc;)V

    return-void
.end method

.method public final y()Lg/kx;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/btb;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/btb;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reply before requesting the sink"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    iget-object v0, p0, Lg/btb;->l:Lg/kx;

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
