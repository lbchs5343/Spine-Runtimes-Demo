.class Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ox:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ox:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ox()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method
