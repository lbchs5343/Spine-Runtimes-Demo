.class public Lcom/bytedance/sdk/component/o/p/ox;
.super Ljava/lang/Thread;


# instance fields
.field private proxy:Lcom/bytedance/sdk/component/o/dq/mn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$001(Lcom/bytedance/sdk/component/o/p/ox;)V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/ox;->proxy:Lcom/bytedance/sdk/component/o/dq/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/dq/mn;->interrupt()V

    return-void

    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/ox;->proxy:Lcom/bytedance/sdk/component/o/dq/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/dq/mn;->isInterrupted()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method public isProxyEnable()Z
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/o/no;->dq(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized start()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/p/ox;->isProxyEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/ox;->proxy:Lcom/bytedance/sdk/component/o/dq/mn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/o/dq/mn;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/o/dq/mn;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/p/ox;->proxy:Lcom/bytedance/sdk/component/o/dq/mn;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/ox;->proxy:Lcom/bytedance/sdk/component/o/dq/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/dq/mn;->start()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    sget-object v0, Lcom/bytedance/sdk/component/o/p;->dq:Lcom/bytedance/sdk/component/o/p;

    const-string v1, "PThread"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/o/p;->dq(Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->no()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/o/p/ox$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/component/o/p/ox$1;-><init>(Lcom/bytedance/sdk/component/o/p/ox;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->p()J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
