.class public Lcom/bytedance/sdk/openadsdk/core/mp/iw;
.super Lcom/bytedance/sdk/openadsdk/core/mp/d;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/mp/iw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/mp/d;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/mp/d;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/mp/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/mp/iw;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/mp/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/mp/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/mp/iw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/mp/iw;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/mp/iw;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/mp/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/mp/iw;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/mp/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/mp/iw;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox()I

    move-result v0

    return v0
.end method

.method public ox()J
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d()J

    move-result-wide v0

    return-wide v0
.end method
