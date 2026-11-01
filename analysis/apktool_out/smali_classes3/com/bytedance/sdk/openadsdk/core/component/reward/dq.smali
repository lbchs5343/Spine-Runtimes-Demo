.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/concurrent/ExecutorService;

.field protected static dq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/core/fw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->dq:Ljava/util/HashMap;

    new-instance v0, Lcom/bytedance/sdk/component/o/o;

    const-string v1, "RewardFullCallback"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/o/o;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/ox;->dq(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static dq(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$1;

    const-string v2, "executeMultiProcessCallback"

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$4;

    const-string v2, "registerMultiProcessListener"

    invoke-direct {v1, v2, p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$4;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$3;

    const-string v2, "registerMultiProcessListener"

    invoke-direct {v1, v2, p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$3;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$2;

    const-string v2, "registerMultiProcessListener"

    invoke-direct {v1, v2, p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq$2;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
