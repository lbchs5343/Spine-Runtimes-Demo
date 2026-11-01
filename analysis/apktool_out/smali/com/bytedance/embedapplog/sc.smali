.class final Lcom/bytedance/embedapplog/sc;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "sc#"

.field static final dq:Ljava/lang/String; = "sc#"

.field private static o:Ljava/lang/String;

.field private static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/embedapplog/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ia:Landroid/content/Context;

.field private ig:Ljava/lang/Long;

.field private final iw:Z

.field private final kk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mn:Lcom/bytedance/embedapplog/xx;

.field private no:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Ljava/util/concurrent/locks/ReentrantLock;

.field private final s:Lcom/bytedance/embedapplog/hy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/sc;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embedapplog/sc;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/sc;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/sc;->ia:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/embedapplog/ip;->dq(Landroid/content/Context;)Lcom/bytedance/embedapplog/hy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/sc;->s:Lcom/bytedance/embedapplog/hy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/embedapplog/hy;->dq(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/sc;->iw:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/embedapplog/sc;->iw:Z

    :goto_0
    new-instance v0, Lcom/bytedance/embedapplog/xx;

    invoke-direct {v0, p1}, Lcom/bytedance/embedapplog/xx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/sc;->mn:Lcom/bytedance/embedapplog/xx;

    return-void
.end method

.method private dq(Landroid/content/Context;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->s:Lcom/bytedance/embedapplog/hy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/embedapplog/hy;->d(Landroid/content/Context;)Lcom/bytedance/embedapplog/hy$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/bytedance/embedapplog/hy$dq;->d:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/bytedance/embedapplog/hy$dq;->ox:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    instance-of v2, p1, Lcom/bytedance/embedapplog/tv$dq;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/bytedance/embedapplog/tv$dq;

    iget-wide v2, p1, Lcom/bytedance/embedapplog/tv$dq;->dq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/sc;->ig:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    :cond_1
    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static dq(Lcom/bytedance/embedapplog/s$dq;[Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lcom/bytedance/embedapplog/s;

    invoke-interface {v2, p0}, Lcom/bytedance/embedapplog/s;->dq(Lcom/bytedance/embedapplog/s$dq;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/embedapplog/s;)V
    .locals 3

    sget-object v0, Lcom/bytedance/embedapplog/sc;->p:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/bytedance/embedapplog/sc;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/embedapplog/s$dq;

    invoke-direct {v1, v0}, Lcom/bytedance/embedapplog/s$dq;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/sc;->dq(Lcom/bytedance/embedapplog/s$dq;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic dq(Lcom/bytedance/embedapplog/sc;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/sc;->p()V

    return-void
.end method

.method private static dq(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/embedapplog/sc;->dq:Ljava/lang/String;

    const-string v2, "-query"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bytedance/embedapplog/nt;->dq(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static ox()[Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/bytedance/embedapplog/sc;->p:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private p()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->mn:Lcom/bytedance/embedapplog/xx;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/xx;->dq()Lcom/bytedance/embedapplog/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/bytedance/embedapplog/ah;->dq:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/embedapplog/sc;->o:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ah;->dq()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/embedapplog/sc;->no:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/embedapplog/sc;->ia:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/bytedance/embedapplog/sc;->dq(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/bytedance/embedapplog/ah;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/embedapplog/ah;->iw:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    new-instance v0, Lcom/bytedance/embedapplog/ah;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/embedapplog/sc;->ig:Ljava/lang/Long;

    move-object v1, v3

    move-object v3, v2

    move-object v2, v6

    move-object v6, v4

    move-object v4, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/embedapplog/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->mn:Lcom/bytedance/embedapplog/xx;

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/xx;->dq(Lcom/bytedance/embedapplog/ah;)V

    move-object v2, v1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/bytedance/embedapplog/ah;->dq:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/embedapplog/sc;->o:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/ah;->dq()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/sc;->no:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lcom/bytedance/embedapplog/s$dq;

    sget-object v1, Lcom/bytedance/embedapplog/sc;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/s$dq;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/embedapplog/sc;->ox()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/sc;->dq(Lcom/bytedance/embedapplog/s$dq;[Ljava/lang/Object;)V

    return-void

    :goto_3
    iget-object v1, p0, Lcom/bytedance/embedapplog/sc;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Lcom/bytedance/embedapplog/s$dq;

    sget-object v2, Lcom/bytedance/embedapplog/sc;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/embedapplog/s$dq;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/embedapplog/sc;->ox()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/sc;->dq(Lcom/bytedance/embedapplog/s$dq;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/embedapplog/sc$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/sc$1;-><init>(Lcom/bytedance/embedapplog/sc;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/sc;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dq()Lcom/bytedance/embedapplog/hy;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->s:Lcom/bytedance/embedapplog/hy;

    return-object v0
.end method

.method public dq(J)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/sc;->iw:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/sc;->d()V

    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->no:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/sc;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/embedapplog/sc;->ox:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/bytedance/embedapplog/sc;->no:Ljava/util/Map;

    return-object p1
.end method
