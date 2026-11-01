.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$2;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/d/mn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(I)V

    return-void
.end method
