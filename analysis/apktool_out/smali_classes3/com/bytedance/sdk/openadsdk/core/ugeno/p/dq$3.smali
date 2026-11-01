.class Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lg/dlv;)Lg/dlv;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lg/dlv;->ir()I

    move-result v3

    invoke-virtual {p1}, Lg/dlv;->u()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lg/dlv;)V

    return-void
.end method
