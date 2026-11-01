.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->d(Landroid/view/View;I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->p(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->p(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->p(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;->p()V

    :cond_1
    return-void
.end method

.method public dq(Landroid/view/View;FF)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->s(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Landroid/view/View;FF)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
