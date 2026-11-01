.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bytedance/sdk/openadsdk/f/d/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->mn()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->iw()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->ia()I

    move-result v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V

    :cond_0
    return-void
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/f/d/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-object v0
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->d(I)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Z)V

    :cond_0
    return-void
.end method
