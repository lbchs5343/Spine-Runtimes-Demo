.class public Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;
.super Lcom/bytedance/sdk/openadsdk/core/cd$dq;


# instance fields
.field private final dq:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cd$dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;->dq:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

    return-void
.end method


# virtual methods
.method public dq(I)Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;->dq:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz v0, :cond_0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;->dq(ILcom/bytedance/sdk/openadsdk/fw/dq/dq/d/dq/dq;)V

    :cond_0
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method
