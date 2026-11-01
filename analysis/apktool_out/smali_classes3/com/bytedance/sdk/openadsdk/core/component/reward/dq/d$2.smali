.class Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p/p/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
