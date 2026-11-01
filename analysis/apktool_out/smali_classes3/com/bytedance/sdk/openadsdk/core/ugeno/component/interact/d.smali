.class public abstract Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;
.super Ljava/lang/Object;


# instance fields
.field protected d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;

.field protected final dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

.field protected p:Z

.field protected s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    return-object p1
.end method


# virtual methods
.method public abstract d()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;
.end method

.method public abstract d(Landroid/view/ViewGroup;Landroid/view/View;Z)V
.end method

.method public abstract dq()I
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "render_type"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;Landroid/view/View;Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;ZZ)V

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    const/16 p1, 0x66

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "error_code"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->s:Ljava/lang/Runnable;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$2;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract dq(II)Z
.end method
