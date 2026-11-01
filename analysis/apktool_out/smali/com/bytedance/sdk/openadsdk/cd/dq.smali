.class public final Lcom/bytedance/sdk/openadsdk/cd/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/cd/dq$dq;
    }
.end annotation


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/cd/dq;


# instance fields
.field private volatile d:Ljava/util/concurrent/ExecutorService;

.field private volatile ox:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile p:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Ljava/util/concurrent/ExecutorService;
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/bytedance/sdk/openadsdk/cd/dq$dq;

    const-string v0, "init"

    invoke-direct {v8, v0}, Lcom/bytedance/sdk/openadsdk/cd/dq$dq;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/cd/dq;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/cd/dq;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p1
.end method

.method private d(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/cd/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/cd/dq;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/cd/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    if-nez v0, :cond_0

    const-class v0, Lcom/bytedance/sdk/openadsdk/cd/dq;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/cd/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    return-object v0
.end method

.method private dq(Z)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->d:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/cd/dq;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/cd/dq;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private dq(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method private ox()Ljava/util/concurrent/ExecutorService;
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/bytedance/sdk/openadsdk/cd/dq$dq;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/cd/dq$dq;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/cd/dq;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/cd/dq;->d(Ljava/util/concurrent/ExecutorService;)V

    :cond_1
    return-void
.end method
