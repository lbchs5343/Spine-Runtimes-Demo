.class Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->dq:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 6
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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->dq:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iput-object p1, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->dq:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ox()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->mp(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->d()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "price"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v3, v3, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v4, v4, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pangle banner \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TTMediationSDK_ECMP"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;)Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->dq:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->d:Ljava/lang/ref/SoftReference;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->p()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "load list is null or empty"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
