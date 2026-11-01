.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->r()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/app/Dialog;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;)Lcom/bytedance/sdk/openadsdk/core/d/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "is_auto_click"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;)Lcom/bytedance/sdk/openadsdk/core/d/dq;

    move-result-object v0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;)Lcom/bytedance/sdk/openadsdk/core/d/dq;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vf()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
