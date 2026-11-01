.class public Lcom/bytedance/sdk/component/ia/d/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/kk;


# static fields
.field public static final dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

.field public static final p:J

.field public static s:J


# instance fields
.field public volatile d:Z

.field private ia:Lcom/bytedance/sdk/component/ia/dq/s;

.field private volatile iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

.field private final kk:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mn:Landroid/os/Handler;

.field private final o:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field public volatile ox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/component/ia/d/d/d;->p:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/component/ia/d/d/d;->s:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/d/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ia/d/d/d$1;-><init>(Lcom/bytedance/sdk/component/ia/d/d/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->kk:Ljava/util/Comparator;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->o:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d/d;Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/d;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/d;)I

    move-result p0

    return p0
.end method

.method private dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/d;)I
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result v1

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result v2

    if-ne v1, v2, :cond_9

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/d/p/dq/d;->dq()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/d;->d()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/d;->dq()J

    move-result-wide v8

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/d;->d()J

    move-result-wide p1

    goto :goto_1

    :cond_4
    move-wide p1, v2

    move-wide v8, p1

    :goto_1
    cmp-long v1, v4, v2

    if-eqz v1, :cond_8

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v8, v10

    if-lez v1, :cond_5

    return v0

    :cond_5
    cmp-long v1, v4, v2

    if-nez v1, :cond_7

    cmp-long v1, v6, v2

    if-eqz v1, :cond_6

    cmp-long v1, p1, v2

    if-eqz v1, :cond_6

    sub-long/2addr v6, p1

    long-to-int p1, v6

    return p1

    :cond_6
    return v0

    :cond_7
    long-to-int p1, v4

    return p1

    :cond_8
    return v0

    :cond_9
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result p1

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d/d;Lcom/bytedance/sdk/component/ia/dq/p;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/p;J)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ia/dq/p;J)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-virtual {v1, p2, p3, v2}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->dq(JLcom/bytedance/sdk/component/ia/dq/s;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/ia/dq/p;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/ia/dq/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Z)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->o()V

    :cond_1
    :goto_0
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ia/dq/p;Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 8

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/p;->ox()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    :try_start_1
    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/d;->dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/d/p/dq/d;->d()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_3

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x1

    cmp-long p2, v6, v0

    if-nez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/component/ia/d/d/d;->s:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :try_start_2
    sget-object p2, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    const/4 v1, 0x1

    invoke-static {p2, v1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p2, :cond_2

    :try_start_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/p;->kk()Ljava/util/concurrent/Executor;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    if-eqz p2, :cond_3

    :try_start_4
    new-instance v2, Lcom/bytedance/sdk/component/ia/d/d/d$2;

    const-string v4, "report"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, p0

    move-object v5, p1

    :try_start_5
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/component/ia/d/d/d$2;-><init>(Lcom/bytedance/sdk/component/ia/d/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/p;J)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, p0

    goto :goto_2

    :cond_3
    move-object v3, p0

    goto :goto_4

    :cond_4
    move-object v3, p0

    move-object v5, p1

    invoke-direct {p0, v5, v6, v7}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/p;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->mn:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->mn:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/d/d;->ox()V

    return-void
.end method

.method public dq(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->mn:Landroid/os/Handler;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lcom/bytedance/sdk/component/ia/dq/d;->dq(J)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/p;Lcom/bytedance/sdk/component/ia/dq/d;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Z)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "error : log config is null"

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->p(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    if-eqz p1, :cond_1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->o:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {p1, v0, v1, p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Lcom/bytedance/sdk/component/ia/dq/s;Lcom/bytedance/sdk/component/ia/d/d/d;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public ox()V
    .locals 4

    const-string v0, "flushMemoryAndDB"

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    const-string v1, "discard flush config is null"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "discard flush logDepend is null"

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->kk()Ljava/util/concurrent/Executor;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/d/d$3;

    const-string v3, "flush"

    invoke-direct {v0, p0, v3, v1}, Lcom/bytedance/sdk/component/ia/d/d/d$3;-><init>(Lcom/bytedance/sdk/component/ia/d/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/d/d/ox/ox;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-string v0, "discard flush executor is null"

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->ia:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_4
    const-string v0, "discard flush"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    const/4 v0, 0x2

    const-string v2, "start_child2"

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public p()Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->o:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/ia/d/d/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    return-object v0
.end method
