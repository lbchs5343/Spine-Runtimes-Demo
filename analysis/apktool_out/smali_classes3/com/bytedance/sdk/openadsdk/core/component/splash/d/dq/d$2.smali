.class Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->p(Z)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->d(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->ox(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
