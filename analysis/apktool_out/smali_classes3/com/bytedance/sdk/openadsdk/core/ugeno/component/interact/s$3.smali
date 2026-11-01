.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic dq:Landroid/view/ViewGroup;

.field final synthetic ox:Landroid/view/View;

.field final synthetic p:Z

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Landroid/view/ViewGroup;Lorg/json/JSONObject;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->dq:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->d:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->ox:Landroid/view/View;

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->p:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->dq:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->s(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mp$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/d/mp$dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cd;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->dq(Lg/dbw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mp$dq;->dq(Z)Lcom/bytedance/sdk/component/adexpress/d/mp$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->dq:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;Landroid/view/ViewGroup;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/component/adexpress/d/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V

    return-void
.end method
