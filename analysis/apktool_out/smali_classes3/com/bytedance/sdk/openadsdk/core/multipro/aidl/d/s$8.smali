.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;->dq(ZILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Z

.field final synthetic ox:Landroid/os/Bundle;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;ZILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->p:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->dq:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->d:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->ox:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->p:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;)Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v2, 0x1130

    if-lt v1, v2, :cond_0

    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->dq:Z

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$8;->ox:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;->dq(ZILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "RewardVideoListenerImpl"

    const-string v1, "onRewardArrived \u672a\u5b9e\u73b0\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
