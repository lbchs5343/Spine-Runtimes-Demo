.class public Lcom/bytedance/sdk/openadsdk/core/no/dq;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/dq/d/mn$dq;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/dq/d/mn$dq;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move-object v10, p1

    goto/16 :goto_5

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ou()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dk()Lcom/bytedance/sdk/component/adexpress/dq/ox/p;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sy()Lcom/bytedance/sdk/component/adexpress/dq/ox/p;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/mn$dq;->d()V

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/dq/ox/p;

    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dq/ox/p;->iw:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/dq/ox/p;->dq:Ljava/lang/String;

    iget-object v5, v0, Lcom/bytedance/sdk/component/adexpress/dq/ox/p;->ox:Ljava/lang/String;

    iget-object v6, v0, Lcom/bytedance/sdk/component/adexpress/dq/ox/p;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/bytedance/sdk/component/adexpress/dq/ox/p;->p:Ljava/lang/String;

    iget-object v8, v0, Lcom/bytedance/sdk/component/adexpress/dq/ox/p;->s:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->iw()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v0, ""

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v9, v0

    goto :goto_3

    :cond_8
    move-object v9, v1

    :goto_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/no/dq$1;

    const-string v3, "saveTemplate"

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/core/no/dq$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dq/d/mn$dq;)V

    const/16 p1, 0xa

    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    move-object p1, v10

    goto :goto_1

    :cond_9
    :goto_4
    return-void

    :goto_5
    invoke-interface {v10}, Lcom/bytedance/sdk/component/adexpress/dq/d/mn$dq;->d()V

    invoke-interface {v10}, Lcom/bytedance/sdk/component/adexpress/dq/d/mn$dq;->d()V

    return-void
.end method
