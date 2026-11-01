.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/ia;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Z)V

    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/TextView;

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "\u4e0b\u8f7d"

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    const-string v2, "tt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mp()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v0

    const-string v3, "feed_video_middle_page"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->iw()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(Ljava/util/Map;ZLjava/lang/String;ZZZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    move-object v4, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->cd()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mp()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->iw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;->d(Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->ox(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->p(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    const-string p1, "convert_res"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d()V

    return v1
.end method
