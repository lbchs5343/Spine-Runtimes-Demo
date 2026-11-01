.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;
.super Ljava/lang/Object;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/h;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

.field private ox:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->ox:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    return-object p0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->p()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->s()Lcom/bytedance/sdk/openadsdk/core/r/nh;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->ox:I

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    :cond_1
    :goto_0
    return-void
.end method
