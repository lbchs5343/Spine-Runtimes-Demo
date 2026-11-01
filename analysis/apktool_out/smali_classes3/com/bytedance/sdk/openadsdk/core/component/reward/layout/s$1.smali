.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->s(Z)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    :cond_0
    return-void
.end method
