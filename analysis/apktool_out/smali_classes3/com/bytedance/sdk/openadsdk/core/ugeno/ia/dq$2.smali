.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lorg/json/JSONObject;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Lg/dlv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dlv;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->mn:Lg/dlv;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq()Lg/dlv;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ia:Lg/dlv;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ox:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lg/dlv;->ir()I

    move-result v3

    invoke-virtual {p1}, Lg/dlv;->u()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ox:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ig:Ljava/lang/String;

    const-string v1, "ugeno_coin_eCommerce_page_show_success"

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method
