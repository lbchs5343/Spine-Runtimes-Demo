.class public Lcom/bytedance/sdk/component/d/dq/dq/dq;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile dq:Lcom/bytedance/sdk/component/d/dq/dq/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/d/dq/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/dq;

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
    sget-object v0, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/dq;

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/d/dq/ig$dq;)Lcom/bytedance/sdk/component/d/dq/ig;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/d/ox;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/d/dq/dq/d/ox;-><init>(Lcom/bytedance/sdk/component/d/dq/ig$dq;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/d/k$dq;)Lcom/bytedance/sdk/component/d/dq/ig;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/k$dq;)V

    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dq(Z)V
    .locals 2

    const-string v0, "set useOkHttp:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
