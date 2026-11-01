.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;->dq:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;->d:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;->dq()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(ILcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;)V

    return-void
.end method
