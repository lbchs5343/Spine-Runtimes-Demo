.class public final Lcom/bytedance/sdk/component/o/dq/mn;
.super Ljava/lang/Thread;


# instance fields
.field private volatile d:Z

.field private volatile dq:Ljava/lang/Thread;

.field private final ox:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/mn;->ox:Ljava/lang/Thread;

    return-void
.end method

.method private dq()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/o/no;->ox()Lcom/bytedance/sdk/component/o/dq/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/o/dq/mn;->ox:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/o/dq/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/dq/mn;->dq:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/bytedance/sdk/component/o/dq/mn;->ox:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/o/dq/mn;->ox:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/o/dq/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/dq/mn;->dq()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/mn;->dq:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/mn;->dq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/mn;->dq:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/mn;->dq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/dq/mn;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/dq/mn;->d:Z

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/o/ox/ox;

    new-instance v2, Lcom/bytedance/sdk/component/o/dq/mn$1;

    iget-object v3, p0, Lcom/bytedance/sdk/component/o/dq/mn;->ox:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/bytedance/sdk/component/o/dq/mn$1;-><init>(Lcom/bytedance/sdk/component/o/dq/mn;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/component/o/ox/ox;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
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
