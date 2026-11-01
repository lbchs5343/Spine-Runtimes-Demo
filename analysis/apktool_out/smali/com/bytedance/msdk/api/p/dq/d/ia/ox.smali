.class public abstract Lcom/bytedance/msdk/api/p/dq/d/ia/ox;
.super Lcom/bytedance/msdk/api/p/dq/d/d/d;


# instance fields
.field private ia:Lcom/bytedance/msdk/api/p/dq/d/ox/ox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    return-void
.end method

.method public final d(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V
    .locals 0

    iput-object p3, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->ia:Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V

    return-void
.end method

.method public abstract dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V
.end method

.method public final dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ig()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    const v2, 0xbf72

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/dq;->dq()I

    move-result v4

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/dq;->d()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final dq(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/msdk/api/p/dq/d/ia/d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->no()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_2

    const-string v0, "\u81ea\u5b9a\u4e49Adapter callLoadSuccess"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/api/p/dq/d/ia/d;

    invoke-virtual {v3, p0}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d;)V

    iget-object v4, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq(I)V

    iget-object v4, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->dq(Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/util/List;)V

    return-void

    :cond_2
    const-string p1, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final iw()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->ia:Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->d()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final ox()V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final s()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->ia:Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
