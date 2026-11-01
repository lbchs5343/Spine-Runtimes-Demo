.class public Lcom/bytedance/sdk/component/o/dq/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/o/d;


# instance fields
.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile ia:J

.field private volatile ig:I

.field private volatile iw:Ljava/util/concurrent/ThreadFactory;

.field private volatile kk:I

.field private volatile mn:Ljava/util/concurrent/RejectedExecutionHandler;

.field private mp:Ljava/util/concurrent/ThreadPoolExecutor;

.field private no:Z

.field private final o:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final ox:Ljava/util/concurrent/locks/ReentrantLock;

.field private final p:Ljava/util/concurrent/locks/Condition;

.field private s:I


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x20000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->p:Ljava/util/concurrent/locks/Condition;

    if-ltz p1, :cond_1

    if-lez p2, :cond_1

    if-lt p2, p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->kk:I

    iput p2, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ig:I

    iput-object p6, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ia:J

    iput-object p7, p0, Lcom/bytedance/sdk/component/o/dq/iw;->iw:Ljava/util/concurrent/ThreadFactory;

    iput-object p8, p0, Lcom/bytedance/sdk/component/o/dq/iw;->mn:Ljava/util/concurrent/RejectedExecutionHandler;

    iput-object p9, p0, Lcom/bytedance/sdk/component/o/dq/iw;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static d(I)I
    .locals 1

    const v0, 0x1fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static d(II)Z
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Ljava/lang/Runnable;Z)Z
    .locals 5

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v3

    const v4, 0x1fffffff

    if-ge v3, v4, :cond_a

    if-eqz p2, :cond_3

    iget v4, p0, Lcom/bytedance/sdk/component/o/dq/iw;->kk:I

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ig:I

    :goto_1
    if-lt v3, v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/o/dq/iw;->p(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(I)I

    move-result v0

    if-ltz v0, :cond_6

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->dq()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->s:I

    if-le p1, v0, :cond_7

    iput p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x1

    :cond_8
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->iw()V

    :cond_9
    return v2

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->iw()V

    throw p1

    :cond_a
    :goto_5
    return v2
.end method

.method private static dq(I)I
    .locals 1

    const/high16 v0, -0x20000000

    and-int/2addr p0, v0

    return p0
.end method

.method private static dq(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method private dq(Lcom/bytedance/sdk/component/o/dq/ox;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/component/o/dq/iw;->kk:I

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->mn()Lcom/bytedance/sdk/component/o/dq/s;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/o/dq/iw;->d(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->mn()Lcom/bytedance/sdk/component/o/dq/s;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :cond_3
    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/dq/iw;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/dq/ox;->dq()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->mn()Lcom/bytedance/sdk/component/o/dq/s;

    return-void

    :cond_4
    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->mn()Lcom/bytedance/sdk/component/o/dq/s;

    return-void

    :cond_5
    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ig:I

    if-ge v0, v1, :cond_6

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/o/dq/iw;->d(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->mn()Lcom/bytedance/sdk/component/o/dq/s;

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/dq/ox;->dq()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->mn()Lcom/bytedance/sdk/component/o/dq/s;

    return-void
.end method

.method private iw()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->p()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private iw(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private static ox(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ox(II)Z
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private p()V
    .locals 1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/o/dq/iw;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private p(I)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    return p1
.end method

.method private s()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Runnable;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Runnable;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-interface {v0, v5}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    instance-of v6, v5, Lcom/bytedance/sdk/component/o/dq/ox;

    if-eqz v6, :cond_0

    check-cast v5, Lcom/bytedance/sdk/component/o/dq/ox;

    iget-object v5, v5, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private s(I)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public allowCoreThreadTimeOut(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->no:Z

    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->no:Z

    return v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->p:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final d()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(II)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, 0x60000000

    invoke-static {v1, v4}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->p:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->p()V

    return-void
.end method

.method public dq()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->mp:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->mp:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->mp:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public final dq(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->mn:Ljava/util/concurrent/RejectedExecutionHandler;

    iget-object v1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public dq(Ljava/lang/Runnable;Z)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/high16 p2, 0x20000000

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/o/dq/iw;->d(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->ox()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->dq()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/dq/iw;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->d()V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/bytedance/sdk/component/o/dq/ox;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/component/o/dq/ox;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/o/dq/ox;->dq(Lcom/bytedance/sdk/component/o/dq/iw;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/o/dq/ox;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/component/o/dq/ox;-><init>(Ljava/lang/Runnable;Lcom/bytedance/sdk/component/o/dq/iw;)V

    move-object p1, v0

    :goto_0
    check-cast p1, Lcom/bytedance/sdk/component/o/dq/ox;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(Lcom/bytedance/sdk/component/o/dq/ox;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->shutdown()V

    return-void
.end method

.method public getActiveCount()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v0

    return v0
.end method

.method public getCompletedTaskCount()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCorePoolSize()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->kk:I

    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ia:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ig:I

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

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

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->mn:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->iw:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(II)Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public prestartAllCoreThreads()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prestartCoreThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public purge()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    instance-of v3, v2, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    instance-of v5, v4, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/concurrent/Future;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->d()V

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->d()V

    return p1
.end method

.method public setCorePoolSize(I)V
    .locals 0

    return-void
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->allowsCoreThreadTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Core threads must have nonzero keep alive times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ia:J

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMaximumPoolSize(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->kk:I

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ig:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->mn:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->iw:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->iw(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->d()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/high16 v1, 0x20000000

    :try_start_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->iw(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->s()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/iw;->d()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->execute(Ljava/lang/Runnable;)V

    return-object v1
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/o/dq/iw;->execute(Ljava/lang/Runnable;)V

    return-object v0
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/o/dq/iw;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->d(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Running"

    goto :goto_0

    :cond_0
    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/dq/iw;->ox(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Terminated"

    goto :goto_0

    :cond_1
    const-string v1, "Shutting down"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", runnable name = , core size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->kk:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/o/dq/iw;->ig:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", worker count = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/dq/iw;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", queued tasks = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/iw;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
