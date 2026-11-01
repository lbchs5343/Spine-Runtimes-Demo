.class public final Lg/vz;
.super Lg/boo;
.source "SourceFile"


# instance fields
.field public final synthetic _at:Lg/btb;


# direct methods
.method public constructor <init>(Lg/btb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vz;->_at:Lg/btb;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lg/boo;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lg/vz;->_at:Lg/btb;

    sget-object v1, Lg/amc;->CANCEL:Lg/amc;

    invoke-virtual {v0, v1}, Lg/btb;->r(Lg/amc;)V

    iget-object v0, p0, Lg/vz;->_at:Lg/btb;

    iget-object v0, v0, Lg/btb;->k:Lg/ug;

    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, Lg/ug;->v:J

    iget-wide v3, v0, Lg/ug;->y:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    :try_start_1
    iput-wide v3, v0, Lg/ug;->y:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const v3, 0x3b9aca00

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lg/ug;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v1, v0, Lg/ug;->b:Lg/gfw;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lg/ug;->j:Ljava/lang/String;

    const-string v4, " ping"

    invoke-static {v2, v3, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lg/lm;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4}, Lg/lm;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lg/gfw;->l(Lg/fyg;J)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
