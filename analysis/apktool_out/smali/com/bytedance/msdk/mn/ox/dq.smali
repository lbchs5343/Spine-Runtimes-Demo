.class public Lcom/bytedance/msdk/mn/ox/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/mn/ox/dq;


# instance fields
.field private d:Lcom/bytedance/msdk/ia/bl;

.field private ox:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->ox:I

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->iw()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/mn/ox/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/mn/ox/dq;->dq:Lcom/bytedance/msdk/mn/ox/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/mn/ox/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/mn/ox/dq;->dq:Lcom/bytedance/msdk/mn/ox/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/mn/ox/dq;

    invoke-direct {v1}, Lcom/bytedance/msdk/mn/ox/dq;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/mn/ox/dq;->dq:Lcom/bytedance/msdk/mn/ox/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/msdk/mn/ox/dq;->dq:Lcom/bytedance/msdk/mn/ox/dq;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 3

    iget v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->ox:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v1, "load_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->ox:I

    return v0
.end method

.method public dq(I)V
    .locals 2

    iput p1, p0, Lcom/bytedance/msdk/mn/ox/dq;->ox:I

    iget-object v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v1, "load_mode"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public dq(J)V
    .locals 6

    const-string v0, "first_install_time"

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v4

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    invoke-virtual {v1, v0, p1, p2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public declared-synchronized iw()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v1, "discard_num"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized mn()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v1, "discard_num"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ox()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/msdk/mn/ox/dq;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()J
    .locals 6

    const-string v0, "first_install_time"

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    invoke-virtual {v1, v0, v4, v5}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-wide v4

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public declared-synchronized s()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v1, "discard_num"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bytedance/msdk/mn/ox/dq;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v2, "discard_num"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
