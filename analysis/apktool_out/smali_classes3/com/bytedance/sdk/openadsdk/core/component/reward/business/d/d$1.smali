.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;->dq:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/fw$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "callback_extra_key_next_play_again_count"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;->dq:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPlayAgainCondition"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/fw;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
