.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d(Lcom/bytedance/sdk/openadsdk/core/r/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/h$ox<",
        "Lcom/bytedance/sdk/component/kk/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/q;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lcom/bytedance/sdk/openadsdk/core/r/q;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->ox(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/q;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->ox(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/q;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;->dq(Lcom/bytedance/sdk/component/kk/d;)V

    return-void
.end method
