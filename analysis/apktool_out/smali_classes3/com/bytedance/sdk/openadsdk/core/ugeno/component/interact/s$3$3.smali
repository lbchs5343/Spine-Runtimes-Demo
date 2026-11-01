.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;->dq(Landroid/view/ViewGroup;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "error_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_msg"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "render_type"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v6, v0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->dq:Landroid/view/ViewGroup;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->ox:Landroid/view/View;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;

    move-result-object v4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-boolean v5, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->p:Z

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;ZZ)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)V

    return-void
.end method
