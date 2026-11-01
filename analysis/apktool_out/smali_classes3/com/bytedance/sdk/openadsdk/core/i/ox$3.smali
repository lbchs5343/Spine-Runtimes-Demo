.class Lcom/bytedance/sdk/openadsdk/core/i/ox$3;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/ox;->r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/s;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->p(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->mn()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->p(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->q()I

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v3, 0x4

    if-eq v3, v1, :cond_0

    const/4 v3, 0x6

    if-eq v3, v1, :cond_0

    const/4 v3, 0x7

    if-ne v3, v1, :cond_1

    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v1, "downloadstatuscontroller_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->s(Lcom/bytedance/sdk/openadsdk/core/i/ox;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;I)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->iw(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->iw(Landroid/content/Context;)F

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->iw(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->iw(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->mn(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v4, "click"

    const/4 v8, 0x1

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/kk;Ljava/lang/String;ZLjava/util/Map;IZ)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->p(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Lorg/json/JSONObject;Z)V

    :cond_2
    return-void
.end method
