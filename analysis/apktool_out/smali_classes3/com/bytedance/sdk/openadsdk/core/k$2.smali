.class Lcom/bytedance/sdk/openadsdk/core/k$2;
.super Lcom/bytedance/sdk/openadsdk/core/EmptyView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/k;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/k;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/k;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$2;->dq:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$2;->dq:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k$2;->dq:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;Z)Z

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
