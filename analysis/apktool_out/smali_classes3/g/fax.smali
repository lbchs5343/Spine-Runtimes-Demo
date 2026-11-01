.class public final Lg/fax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/evq;


# instance fields
.field public final synthetic a:Lg/gnb;

.field public final b:Lg/gpq;

.field public c:Z


# direct methods
.method public constructor <init>(Lg/gnb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fax;->a:Lg/gnb;

    new-instance v0, Lg/gpq;

    iget-object p1, p1, Lg/gnb;->j:Ljava/lang/Object;

    check-cast p1, Lg/cbs;

    invoke-interface {p1}, Lg/evq;->e()Lg/dme;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/gpq;-><init>(Lg/dme;)V

    iput-object v0, p0, Lg/fax;->b:Lg/gpq;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/fax;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lg/fax;->c:Z

    iget-object v0, p0, Lg/fax;->a:Lg/gnb;

    iget-object v0, v0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v0, Lg/cbs;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    iget-object v0, p0, Lg/fax;->b:Lg/gpq;

    iget-object v1, v0, Lg/gpq;->d:Lg/dme;

    sget-object v2, Lg/dme;->n:Lg/dey;

    iput-object v2, v0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v1}, Lg/dme;->s()Lg/dme;

    invoke-virtual {v1}, Lg/dme;->t()Lg/dme;

    iget-object v0, p0, Lg/fax;->a:Lg/gnb;

    const/4 v1, 0x3

    iput v1, v0, Lg/gnb;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/fax;->b:Lg/gpq;

    return-object v0
.end method

.method public final f(Lg/clq;J)V
    .locals 4

    iget-object v0, p0, Lg/fax;->a:Lg/gnb;

    iget-object v0, v0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v0, Lg/cbs;

    iget-boolean v1, p0, Lg/fax;->c:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2, p3}, Lg/cbs;->k(J)Lg/cbs;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    invoke-interface {v0, p1, p2, p3}, Lg/evq;->f(Lg/clq;J)V

    invoke-interface {v0, v1}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/fax;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/fax;->a:Lg/gnb;

    iget-object v0, v0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v0, Lg/cbs;

    invoke-interface {v0}, Lg/cbs;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
