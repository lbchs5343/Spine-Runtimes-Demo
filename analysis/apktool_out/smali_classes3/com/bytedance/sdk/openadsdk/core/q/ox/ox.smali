.class public Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field public volatile dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

.field private iw:J

.field private mn:Z

.field private ox:Ljava/util/concurrent/atomic/AtomicInteger;

.field private p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile s:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->mn:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;ZJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(ZJLjava/lang/String;)V

    return-void
.end method

.method private dq(ZJLjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "channel"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "success"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "duration"

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "errMsg"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->mn(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->mn:Z

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->mn:Z

    return p0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$1;

    const-string v1, "gecko_preload"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s()V

    return-void
.end method

.method private s()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq()Lcom/bytedance/sdk/openadsdk/core/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/d;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq()Lcom/bytedance/sdk/openadsdk/core/q/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->iw:J

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;-><init>(J)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;->dq()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->ox()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;->dq()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq()Lcom/bytedance/sdk/openadsdk/core/q/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/d;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->iw:J

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq()Lcom/bytedance/sdk/openadsdk/core/q/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d:Ljava/lang/String;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;J)V

    invoke-virtual {v2, v3, v4, p1}, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_0
    return-void
.end method

.method public dq()Z
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p()V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->p()V

    return v2
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->s:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d()V

    return-void
.end method
