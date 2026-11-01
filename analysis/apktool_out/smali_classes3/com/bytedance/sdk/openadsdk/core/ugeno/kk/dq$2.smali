.class Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic dq:Lg/ajp;

.field final synthetic ox:Lorg/json/JSONObject;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;Lg/ajp;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->dq:Lg/ajp;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->d:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->ox:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->dq:Lg/ajp;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lg/ajp;->n(Lorg/json/JSONObject;)Lg/dlv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;Lg/dlv;)Lg/dlv;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lg/dlv;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->dq:Lg/ajp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->ox:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lg/dlv;

    move-result-object v1

    invoke-virtual {v1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lg/dlv;

    move-result-object v3

    invoke-virtual {v3}, Lg/dlv;->ir()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lg/dlv;

    move-result-object v4

    invoke-virtual {v4}, Lg/dlv;->u()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lg/dlv;

    move-result-object v1

    invoke-virtual {v1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(Landroid/view/View;)V

    :cond_1
    return-void
.end method
