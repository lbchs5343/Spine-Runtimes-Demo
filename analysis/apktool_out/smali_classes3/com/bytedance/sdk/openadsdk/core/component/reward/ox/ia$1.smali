.class Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/mn$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->dq()V

    :cond_0
    return-void
.end method
