.class Lcom/bytedance/sdk/openadsdk/core/i/ox$2;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Landroid/app/Dialog;[I)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

.field final synthetic dq:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/ox;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$2;->dq:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ia;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$2;->dq:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$2;->dq:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$2;->dq:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
