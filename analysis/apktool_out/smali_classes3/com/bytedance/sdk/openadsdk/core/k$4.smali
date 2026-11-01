.class Lcom/bytedance/sdk/openadsdk/core/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/k;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/k;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->d:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/k;->jy(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;->d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->d:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/k;->jy(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;->d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->ox(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$4;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->ox(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Z)V

    :cond_2
    return-void
.end method
