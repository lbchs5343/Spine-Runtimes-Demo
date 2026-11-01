.class public Lcom/bytedance/sdk/openadsdk/core/ir/q;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/ir/q;


# instance fields
.field private d:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Lcom/bytedance/sdk/component/mn/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q;->d:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    const-string v0, "hide_recent_activity_recorder"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q;->d:Lcom/bytedance/sdk/component/mn/dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q;->d:Lcom/bytedance/sdk/component/mn/dq;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ir/q;)Lcom/bytedance/sdk/component/mn/dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/q;->d()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object p0

    return-object p0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/ir/q;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ir/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/q;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/q;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/q;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    return-object v0
.end method

.method private dq(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/q$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/q$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ir/q;I)V

    const-string p1, "hide_activity_record"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ir/q;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq(I)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ir/q;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
