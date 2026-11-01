.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;
.super Lcom/bytedance/sdk/openadsdk/fw/dq/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;->dq(I)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field final synthetic dq:Landroid/os/Bundle;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;->dq:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/fw/dq/dq/d/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;->dq:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/p$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
