.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
