.class public Lcom/bytedance/sdk/openadsdk/q/d;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/q/ia;

.field private dq:Ljava/util/concurrent/ScheduledExecutorService;

.field private ox:J

.field private p:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/q/ia;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->dq:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->ox:J

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/q/d;->d:Lcom/bytedance/sdk/openadsdk/q/ia;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/q/d;->p:I

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/q/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->p:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/q/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->ox:J

    return-wide v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/q/d;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->dq:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/q/d;)Lcom/bytedance/sdk/openadsdk/q/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->d:Lcom/bytedance/sdk/openadsdk/q/ia;

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->dq:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/d;->dq:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public dq(I)V
    .locals 9

    new-instance v0, Lcom/bytedance/sdk/component/o/o;

    const-string v1, "/CrashMonitor"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/o/o;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/o/ox;->d(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/q/d;->dq:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/q/d$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/q/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/q/d;)V

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/q/d;->ox:J

    return-void
.end method
