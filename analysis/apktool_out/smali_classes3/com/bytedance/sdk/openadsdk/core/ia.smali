.class public Lcom/bytedance/sdk/openadsdk/core/ia;
.super Lcom/bytedance/sdk/openadsdk/core/kk;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/ia;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/kk;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ia;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/ia;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ia;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/ia;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ia;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/ia;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/ia;

    return-object p0
.end method
