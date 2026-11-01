.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->jy:Z

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->p:Z

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->dq:Ljava/util/Map;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->d:Landroid/view/View;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;ZLjava/util/Map;Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Landroid/webkit/DownloadListener;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/d/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji()V

    return-void
.end method
