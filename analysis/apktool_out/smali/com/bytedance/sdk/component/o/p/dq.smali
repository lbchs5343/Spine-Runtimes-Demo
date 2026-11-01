.class public Lcom/bytedance/sdk/component/o/p/dq;
.super Ljava/util/concurrent/ThreadPoolExecutor;

# interfaces
.implements Lcom/bytedance/sdk/component/o/d;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final dq:Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field private d:Lcom/bytedance/sdk/component/o/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/o/p/dq$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/o/p/dq$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/o/p/dq;->dq:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    sget-object v8, Lcom/bytedance/sdk/component/o/p/dq;->dq:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/o/p/dq;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Lcom/bytedance/sdk/component/o/dq/iw;

    move-object v9, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/component/o/dq/iw;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->mn()Lcom/bytedance/sdk/component/o/dq/s;

    return-void
.end method


# virtual methods
.method public allowCoreThreadTimeOut(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->allowsCoreThreadTimeOut()Z

    move-result v0

    return v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/o/d;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final synthetic close()V
    .locals 0

    invoke-static {p0}, Lg/ayr;->o(Lcom/bytedance/sdk/component/o/p/dq;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getActiveCount()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getActiveCount()I

    move-result v0

    return v0
.end method

.method public getCompletedTaskCount()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCorePoolSize()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getLargestPoolSize()I

    move-result v0

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getMaximumPoolSize()I

    move-result v0

    return v0
.end method

.method public getPoolSize()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getPoolSize()I

    move-result v0

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->isTerminating()Z

    move-result v0

    return v0
.end method

.method public prestartAllCoreThreads()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->prestartAllCoreThreads()I

    move-result v0

    return v0
.end method

.method public prestartCoreThread()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->prestartCoreThread()Z

    move-result v0

    return v0
.end method

.method public purge()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->purge()V

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->remove(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public setCorePoolSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->setCorePoolSize(I)V

    return-void
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/o/d;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->setMaximumPoolSize(I)V

    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/o/d;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/o/d;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/dq;->d:Lcom/bytedance/sdk/component/o/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/o/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
