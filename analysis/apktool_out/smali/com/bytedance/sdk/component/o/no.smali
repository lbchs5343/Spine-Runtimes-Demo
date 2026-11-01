.class public Lcom/bytedance/sdk/component/o/no;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lcom/bytedance/sdk/component/o/no;

.field public static final dq:I


# instance fields
.field private cd:I

.field private volatile f:Ljava/util/concurrent/ScheduledExecutorService;

.field private fw:Z

.field private gh:Z

.field private i:Z

.field private volatile ia:Z

.field private volatile ig:Z

.field private iw:J

.field private volatile jy:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile kk:Z

.field private volatile le:Z

.field private mn:J

.field private mp:Lcom/bytedance/sdk/component/o/dq/s;

.field private no:J

.field private o:Z

.field public volatile ox:Z

.field private p:I

.field private volatile q:Ljava/util/concurrent/ThreadPoolExecutor;

.field private r:Lcom/bytedance/sdk/component/o/dq/d;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/bytedance/sdk/component/o/mn;->dq:I

    sput v0, Lcom/bytedance/sdk/component/o/no;->dq:I

    new-instance v0, Lcom/bytedance/sdk/component/o/no;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/o/no;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->ox:Z

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/bytedance/sdk/component/o/no;->iw:J

    const-wide/16 v1, 0x4e20

    iput-wide v1, p0, Lcom/bytedance/sdk/component/o/no;->mn:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->o:Z

    const-wide/16 v1, 0x64

    iput-wide v1, p0, Lcom/bytedance/sdk/component/o/no;->no:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->ig:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->fw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->gh:Z

    sget v0, Lcom/bytedance/sdk/component/o/no;->dq:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/o/no;->p:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/bytedance/sdk/component/o/no;->s:I

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/o/no;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/o/no;->i:Z

    return p0
.end method


# virtual methods
.method public d(I)V
    .locals 1

    iput p1, p0, Lcom/bytedance/sdk/component/o/no;->p:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/no;->kk()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method public d(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/no;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/component/o/ox/p;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/o/ox/p;->d()V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/o/s;->dq(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/no;->ox:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->fw:Z

    return v0
.end method

.method public dq(J)V
    .locals 2

    iput-wide p1, p0, Lcom/bytedance/sdk/component/o/no;->iw:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public dq(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/no;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/o/no;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/o/no$4;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/component/o/no$4;-><init>(Lcom/bytedance/sdk/component/o/no;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v2, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->jy:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/no;->jy:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/o/s;->dq(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/no;->fw:Z

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->o:Z

    return v0
.end method

.method public dq(I)Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/o/no;->cd:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/o/no;->p:I

    return v0
.end method

.method public ig()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->kk:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/no;->kk()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->i:Z

    return v0
.end method

.method public kk()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/o/ox/p;

    iget v2, p0, Lcom/bytedance/sdk/component/o/no;->p:I

    iget v3, p0, Lcom/bytedance/sdk/component/o/no;->s:I

    iget-wide v4, p0, Lcom/bytedance/sdk/component/o/no;->mn:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bytedance/sdk/component/o/no$1;

    const-string v0, "l"

    const/16 v9, 0xa

    invoke-direct {v8, p0, v9, v0}, Lcom/bytedance/sdk/component/o/no$1;-><init>(Lcom/bytedance/sdk/component/o/no;ILjava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/component/o/ox/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/o/no;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/o/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->mp:Lcom/bytedance/sdk/component/o/dq/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/o/dq/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/o/dq/s;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/no;->mp:Lcom/bytedance/sdk/component/o/dq/s;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->mp:Lcom/bytedance/sdk/component/o/dq/s;

    return-object v0
.end method

.method public mp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->le:Z

    return v0
.end method

.method public no()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/bytedance/sdk/component/o/no$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/o/no$3;-><init>(Lcom/bytedance/sdk/component/o/no;)V

    sget-object v2, Lcom/bytedance/sdk/component/o/p/dq;->dq:Ljava/util/concurrent/RejectedExecutionHandler;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/no;->f:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public o()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->jy:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->jy:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/o/ox/d;

    iget v2, p0, Lcom/bytedance/sdk/component/o/no;->p:I

    iget v3, p0, Lcom/bytedance/sdk/component/o/no;->s:I

    iget-wide v4, p0, Lcom/bytedance/sdk/component/o/no;->iw:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/bytedance/sdk/component/o/no$2;

    const-string v0, "b"

    const/16 v8, 0xa

    invoke-direct {v7, p0, v8, v0}, Lcom/bytedance/sdk/component/o/no$2;-><init>(Lcom/bytedance/sdk/component/o/no;ILjava/lang/String;)V

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/o/ox/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/o/no;->jy:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->jy:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/o/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/no;->r:Lcom/bytedance/sdk/component/o/dq/d;

    return-object v0
.end method

.method public ox(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/no;->kk()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/no;->kk:Z

    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/o/no;->no:J

    return-wide v0
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/no;->ia:Z

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/no;->le:Z

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/o/no;->ox:Z

    return v0
.end method
