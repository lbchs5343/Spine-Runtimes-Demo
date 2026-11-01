.class public Lcom/ss/android/socialbase/downloader/network/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/d$dq;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "d"

.field public static volatile dq:Z = false

.field private static volatile ia:Lcom/ss/android/socialbase/downloader/network/d; = null

.field private static mn:J = -0x1L


# instance fields
.field private iw:J

.field private final ox:Lcom/ss/android/socialbase/downloader/network/no;

.field private final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Lcom/ss/android/socialbase/downloader/network/d$dq;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/no;->dq()Lcom/ss/android/socialbase/downloader/network/no;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->ox:Lcom/ss/android/socialbase/downloader/network/no;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/ss/android/socialbase/downloader/network/d$dq;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/ia/s;->dq()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/network/d$dq;-><init>(Lcom/ss/android/socialbase/downloader/network/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->s:Lcom/ss/android/socialbase/downloader/network/d$dq;

    return-void
.end method

.method public static dq()Lcom/ss/android/socialbase/downloader/network/d;
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/network/d;->ia:Lcom/ss/android/socialbase/downloader/network/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/socialbase/downloader/network/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/network/d;->ia:Lcom/ss/android/socialbase/downloader/network/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/network/d;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/network/d;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/network/d;->ia:Lcom/ss/android/socialbase/downloader/network/d;

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
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/d;->ia:Lcom/ss/android/socialbase/downloader/network/d;

    return-object v0
.end method

.method public static p()J
    .locals 4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static s()V
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/network/d;->dq:Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/d;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startSampling: mSamplingCounter = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/d;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->s:Lcom/ss/android/socialbase/downloader/network/d$dq;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d$dq;->dq()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->iw:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public iw()V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/d;->s()V

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/network/d;->dq:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/d;->p()J

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    :goto_0
    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/d;->mn:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_1

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/network/d;->ox:Lcom/ss/android/socialbase/downloader/network/no;

    iget-wide v7, p0, Lcom/ss/android/socialbase/downloader/network/d;->iw:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/ss/android/socialbase/downloader/network/no;->dq(JJ)V

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/d;->iw:J

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_1
    :goto_1
    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/d;->mn:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public mn()V
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/d;->iw()V

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/d;->mn:J

    return-void
.end method

.method public ox()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/d;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopSampling: mSamplingCounter = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/d;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->s:Lcom/ss/android/socialbase/downloader/network/d$dq;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d$dq;->d()V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/d;->mn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
