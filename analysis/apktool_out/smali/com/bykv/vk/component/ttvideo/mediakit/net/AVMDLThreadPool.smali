.class public Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AVMDLThreadPool"

.field private static final THREADPOOL_MAX_RUNNING_TASK_SIZE:I = 0x40

.field private static volatile mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mReadyRunnables:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mRunningRunnables:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mReadyRunnables:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mRunningRunnables:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized _finished(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;)V
    .locals 2

    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mRunningRunnables:Ljava/util/Deque;

    invoke-interface {v1, p0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->_promoteRunnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static _promoteRunnable()V
    .locals 2

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mReadyRunnables:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mReadyRunnables:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mRunningRunnables:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;)V
    .locals 0

    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->_finished(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;)V

    return-void
.end method

.method public static declared-synchronized addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4

    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->getExecutorInstance()Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->getPoolSize()I

    new-instance v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;

    invoke-direct {v2, p0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool$AsyncRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mRunningRunnables:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    const/16 v3, 0x40

    if-lt p0, v3, :cond_2

    sget-object p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mReadyRunnables:Ljava/util/Deque;

    invoke-interface {p0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_2
    :try_start_1
    sget-object p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mRunningRunnables:Ljava/util/Deque;

    invoke-interface {p0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getExecutorInstance()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v2, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/component/o/o;

    const-string v0, "AVMDLThreadPool"

    invoke-direct {v9, v0}, Lcom/bytedance/sdk/component/o/o;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getPoolSize()I
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->getExecutorInstance()Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    return v0
.end method

.method public static setExecutorInstance(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static shutdown()V
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_0
    return-void
.end method
