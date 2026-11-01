.class Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->mp()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->ox(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method

.method public synthetic ox(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    return-void
.end method
