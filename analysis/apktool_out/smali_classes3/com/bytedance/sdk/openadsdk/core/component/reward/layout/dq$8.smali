.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->gh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$8;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method
