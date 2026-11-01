.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$6;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

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

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recycleRes"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/fw;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
