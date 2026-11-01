.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->no()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;

    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    return-void

    :cond_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;

    return v0
.end method
