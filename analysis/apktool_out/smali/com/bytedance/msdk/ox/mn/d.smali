.class public Lcom/bytedance/msdk/ox/mn/d;
.super Ljava/lang/Object;


# direct methods
.method public static d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V

    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq/dq/p;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/ox;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq/dq/p;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq/dq/p;)V

    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/iw/ox;

    invoke-direct {v0, p0, p1, p3}, Lcom/bytedance/sdk/gromore/dq/dq/mn/iw/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-direct {v0, p0, p1, p3}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/gromore/dq/dq;->kk()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/gromore/dq/dq;->kk()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/iw;->dq(I)V

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/ox;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/d/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/d/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V

    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->o()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TMe"

    const-string v1, "\u4f7f\u7528\u805a\u5408\u4fe1\u606f\u6d41\u5e7f\u544a\u81ea\u6e32\u67d3\u6a21\u7248\u6df7\u7528\u573a\u666f\u65f6\uff0c\u9700\u8bbe\u7f6eMediationNativeToBannerListener\u76d1\u542c\u56de\u8c03\u5426\u5219\u4f1a\u5f71\u54cd\u76f8\u5173\u529f\u80fd\u4f7f\u7528\uff0c\u5177\u4f53\u53ef\u4ee5\u53c2\u8003\u63a5\u5165\u6587\u6863\uff0c\u82e5\u4e0d\u80fd\u53ca\u65f6\u8bbe\u7f6e\uff0c\u5efa\u8bae\u4fee\u6539\u7011\u5e03\u6d41\u914d\u7f6e\u4e3a\u6a21\u7248\u4fe1\u606f\u6d41\u5e7f\u544a\u6682\u4e0d\u8fdb\u884c\u6df7\u7528\u3002"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/p/q;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V

    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/p/f;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/ox;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V

    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s;->dq()V

    return-void
.end method

.method public static dq()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/ox/dq;->ox()Z

    move-result v0

    return v0
.end method
