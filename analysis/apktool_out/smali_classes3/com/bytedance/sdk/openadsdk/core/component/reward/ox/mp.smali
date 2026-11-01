.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;


# instance fields
.field fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    invoke-direct {p1, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->ox()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/p;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/p;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    goto :goto_0

    :pswitch_1
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/kk;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/kk;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mn;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mn;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    goto :goto_0

    :pswitch_3
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/iw;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/iw;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    goto :goto_0

    :pswitch_4
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/no;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/no;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    goto :goto_0

    :pswitch_5
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ig;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ig;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->ox:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq(Z)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq(I)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d(I)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->p:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d(Z)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ox(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->no:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->p(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->iw:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->ox(Z)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->s:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->p(Z)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->f:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;->ox()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    invoke-direct {p1, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->fw:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "is_need_click"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->s:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
