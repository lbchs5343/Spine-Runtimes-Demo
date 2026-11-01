.class Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->ia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->ox(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->ox()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/kk;->ox(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->p(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->ox(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->s(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->s(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->s(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->d()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setBgMaterialCenterCalcColor(Ljava/util/Map;)V

    :cond_1
    return-void
.end method
