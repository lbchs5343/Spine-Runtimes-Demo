.class public Lcom/bytedance/msdk/core/admanager/ox;
.super Lcom/bytedance/msdk/core/admanager/p;

# interfaces
.implements Lcom/bytedance/msdk/dq/d/dq;


# instance fields
.field private ce:Lcom/bytedance/msdk/api/p/dq/dq/p;

.field private d:Lcom/bytedance/msdk/api/p/dq/dq/d;

.field private dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

.field private ox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/msdk/core/admanager/p;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/ox;->ox:Z

    return-void
.end method

.method private d(Z)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->i:Ljava/util/Map;

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s;->ha:Lcom/bytedance/msdk/api/p/no;

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->e:Lcom/bytedance/msdk/core/no/o;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->l:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    move v5, p1

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;ZLcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/msdk/d/s;)Landroid/view/View;
    .locals 3

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/bytedance/msdk/d/s;->iw(Z)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->t:Lcom/bytedance/msdk/dq/d/iw;

    invoke-virtual {p2, v0}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/dq/d/iw;)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/msdk/core/mn/ox;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/bytedance/msdk/core/admanager/ox;->d(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c55\u793a\u7684\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",slotId\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    const-string v1, ",slotType:"

    invoke-static {v0, p2, v1}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->ig()Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->zc()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->dc()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->mc()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/ox;->ce:Lcom/bytedance/msdk/api/p/dq/dq/p;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0, v2}, Lcom/bytedance/msdk/core/admanager/ox;->ox(Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/p/dq/dq/ox;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/dq/p;->dq(Lcom/bytedance/msdk/api/p/dq/dq/ox;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    const-string v1, "--==-- banner\u6df7\u51fa\u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\uff0cgetGMBannerViewFromNativeAd()\u8fd4\u56denull\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "--==-- banner\u6df7\u51fa\u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\uff0cgetGMBannerViewFromNativeAd()\u53d1\u751f\u5f02\u5e38\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a\uff0c\u4fe1\u606f\u5982\u4e0b\uff1a"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v1, "--==-- banner\u6df7\u51fa\u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\uff0c\u4f46\u672a\u63d0\u4f9bGMNativeToBannerListener\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/bytedance/msdk/core/admanager/ox$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/bytedance/msdk/core/admanager/ox$1;-><init>(Lcom/bytedance/msdk/core/admanager/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_3
    return-object p2
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/ox;)Lcom/bytedance/msdk/api/p/dq/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    return-object p0
.end method

.method private ox(Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/p/dq/dq/ox;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/ox$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/admanager/ox$3;-><init>(Lcom/bytedance/msdk/core/admanager/ox;Lcom/bytedance/msdk/d/s;)V

    return-object v0
.end method

.method private s(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/ox$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/admanager/ox$2;-><init>(Lcom/bytedance/msdk/core/admanager/ox;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public C_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->C_()V

    :cond_0
    return-void
.end method

.method public a_(Lcom/bytedance/msdk/api/dq;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    move-object v10, v2

    move-wide v11, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/core/admanager/ox;->s(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->l()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/core/mn/s;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->d:Lcom/bytedance/msdk/api/p/dq/dq/d;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->ox:Z

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/kk/mp;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    invoke-interface {v1, p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->d(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v2, "show_listen"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adSlotId\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    const-string v2, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-static {v1, p1, v2}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TTMediationSDK"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/core/kk/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/bytedance/msdk/core/admanager/ox;->d(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    :goto_0
    move-object v8, p1

    move-wide v9, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d/dq;->mn(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d/dq;->ox(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    invoke-static {v0, p1, v1, v2, v3}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/lang/String;ID)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {p1, v0}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public declared-synchronized dq(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v2, v0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    const v2, 0x9c74

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v1, p1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/ox;->s(Lcom/bytedance/msdk/api/dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/p;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v1, p1, v0}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/ox;->s(Lcom/bytedance/msdk/api/dq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->l()Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->h_()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {p0, v4}, Lcom/bytedance/msdk/core/mn/s;->iw(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v1

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/core/no/no;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/msdk/d/s;

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-direct {p0, p1, v9}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/d/s;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6

    :cond_4
    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/no;->r()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v7

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v10

    invoke-virtual {v7, v9, v8, v10}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v7

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v7, v8, v9, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v7

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v7, v7, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0, v7}, Lcom/bytedance/msdk/core/mn/s;->p(Lcom/bytedance/msdk/d/s;)V

    invoke-direct {p0, p1, v7}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/d/s;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6

    goto/16 :goto_2

    :cond_5
    move-object v6, v1

    :cond_6
    if-nez v6, :cond_8

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/msdk/d/s;

    if-eqz v5, :cond_7

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {p0, p1, v5}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/d/s;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->l()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v10, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v11

    iget-object v12, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {v7 .. v12}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/ox;->d(Ljava/util/List;)V

    :cond_9
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, v2, v3, v3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ZI)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const-string v0, "ADMOB_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mTTAdBannerListener-->Admob--->onAdShow......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/kk/mp;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_a

    const-string v0, "TTMediationSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v3, "show_listen"

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "adSlotId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/kk/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/ox;->d(Z)V

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v8, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {p1, v0}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    monitor-exit p0

    return-object v6

    :cond_d
    :try_start_5
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v4, p1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/ox;->s(Lcom/bytedance/msdk/api/dq;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->dq(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    :goto_0
    move-object v7, p1

    move-wide v8, v2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v2, -0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d/dq;->s(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->by()Z

    move-result v10

    invoke-static/range {v4 .. v10}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/admanager/p;->ig()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/ox;->d:Lcom/bytedance/msdk/api/p/dq/dq/d;

    iput-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->t:Lcom/bytedance/msdk/dq/d/iw;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->ia()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->d:Lcom/bytedance/msdk/api/p/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/ox;->dq:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/ox;->ce:Lcom/bytedance/msdk/api/p/dq/dq/p;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->i:Ljava/util/Map;

    const-string v1, "allow_show_close_btn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public iw()Z
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->h_()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v10, v1

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v11, v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-boolean v6, p0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v9

    invoke-static/range {v2 .. v11}, Lcom/bytedance/msdk/ia/jy;->dq(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j_()Lcom/bytedance/msdk/core/no/d;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->ob:Lcom/bytedance/msdk/core/f/ox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->v()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object v0
.end method

.method public k_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ce()V

    :cond_0
    return-void
.end method

.method public kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->yo()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->er()V

    :cond_0
    return-void
.end method

.method public no()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/bytedance/msdk/api/ox;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->ox:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/core/mn/s;->o()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox;->d:Lcom/bytedance/msdk/api/p/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/d;->dq()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method
