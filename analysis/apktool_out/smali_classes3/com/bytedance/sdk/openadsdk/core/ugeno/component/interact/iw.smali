.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;


# instance fields
.field private final ia:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;

.field private final mn:Lcom/bytedance/sdk/openadsdk/core/i/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->ia:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/i/d;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/i/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->mn:Lcom/bytedance/sdk/openadsdk/core/i/d;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;)Lcom/bytedance/sdk/openadsdk/core/i/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->mn:Lcom/bytedance/sdk/openadsdk/core/i/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->ia:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    return-object v0
.end method

.method public d(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->dq()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "render_type"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "error_code"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->dq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(I)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->mn:Lcom/bytedance/sdk/openadsdk/core/i/d;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;-><init>(Lcom/bytedance/sdk/openadsdk/core/i/d;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->mn:Lcom/bytedance/sdk/openadsdk/core/i/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;->setEasyPlayableListener(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dq()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->mn:Lcom/bytedance/sdk/openadsdk/core/i/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/d;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V

    return-void
.end method

.method public dq(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;->dq()V

    :cond_0
    return-void
.end method
