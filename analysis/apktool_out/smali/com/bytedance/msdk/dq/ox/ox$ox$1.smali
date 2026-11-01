.class Lcom/bytedance/msdk/dq/ox/ox$ox$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/ox$ox;->dq(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/dq/ox/ox$ox;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ox$ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->dq:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/jy;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->dq:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iput-object p1, v0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->dq:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;-><init>(Lcom/bytedance/msdk/dq/ox/ox$ox$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ox()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mp(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->ig(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {p1}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "price"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v2, v2, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v3, v3, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {v3}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pangle banner \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TTMediationSDK_ECMP"

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/ox$ox;->p(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->dq:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->d:Ljava/lang/ref/SoftReference;

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->p()V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "load list is null or empty"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
