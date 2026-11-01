.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ji$ox;)V
    .locals 1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ji$ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/by;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/by;->dq()Z

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->p(I)V

    :cond_1
    :goto_0
    return-void
.end method
