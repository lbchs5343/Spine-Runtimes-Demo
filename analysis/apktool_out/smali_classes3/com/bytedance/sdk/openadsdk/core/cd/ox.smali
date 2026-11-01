.class public Lcom/bytedance/sdk/openadsdk/core/cd/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/q/dq;

.field private dq:Lcom/bytedance/sdk/openadsdk/q/ia;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/q/ox;Lcom/bytedance/sdk/openadsdk/q/dq;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/q/ia$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/component/widget/SSWebView;",
            "Lcom/bytedance/sdk/openadsdk/q/ox;",
            "Lcom/bytedance/sdk/openadsdk/q/dq;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/q/ia$dq;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/q/ia;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cd/ox;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-nez v0, :cond_0

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/mp/dq;Lcom/bytedance/sdk/openadsdk/q/ox;Lcom/bytedance/sdk/openadsdk/q/dq;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/q/ia$dq;Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cd/ox;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/q/ia;->s(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/cd/ox;->d:Lcom/bytedance/sdk/openadsdk/q/dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cd/ox;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    return-object p1
.end method
