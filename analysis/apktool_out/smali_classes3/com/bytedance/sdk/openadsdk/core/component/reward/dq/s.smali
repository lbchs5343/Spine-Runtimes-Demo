.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;


# static fields
.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;-><init>()V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;->dq(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;->dq(I)V

    invoke-virtual {p0, p1, p4, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;)V

    return-void
.end method
