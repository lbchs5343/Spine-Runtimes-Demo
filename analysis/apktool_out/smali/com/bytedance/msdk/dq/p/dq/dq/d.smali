.class public Lcom/bytedance/msdk/dq/p/dq/dq/d;
.super Lcom/bytedance/msdk/dq/p/dq/dq;


# instance fields
.field private ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/d/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/dq/p/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/d/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq;->d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    instance-of p2, p1, Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    :cond_0
    return-void
.end method


# virtual methods
.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/16 p3, 0x1fbb

    const/4 v0, 0x0

    const-string v1, "TTMediationSDK"

    if-ne p1, p3, :cond_0

    const/16 p1, 0x1f4e

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    const/16 p3, 0x1f4f

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "GMCustomInterstitialLoader4csjm callLoaderFail  code:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/dq/p/dq/dq/d;->dq(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/16 p3, 0x1fab

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_1

    const/16 p1, 0x20d9

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v2

    const/16 p1, 0x1f8b

    const-class p3, Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-object p1, v0

    :goto_0
    const-string p2, "GMCustomInterstitialLoader4csjm callLoadSucceed price:"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p1}, Lcom/bytedance/msdk/dq/p/dq/dq/d;->dq(DLjava/util/Map;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x3f0

    if-ne p1, p2, :cond_3

    const-string p1, "GMCustomInterstitialLoader4csjm callInterstitialShow"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->s()V

    goto :goto_1

    :cond_3
    const/16 p2, 0x3f1

    if-ne p1, p2, :cond_4

    const-string p1, "GMCustomInterstitialLoader4csjm callInterstitialAdClick"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->iw()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x3f6

    if-ne p1, p2, :cond_5

    const-string p1, "GMCustomInterstitialLoader4csjm callInterstitialClosed"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->mn()V

    goto :goto_1

    :cond_5
    const/16 p2, 0x3f7

    if-ne p1, p2, :cond_6

    const-string p1, "GMCustomInterstitialLoader4csjm callInterstitialAdOpened"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->ia()V

    goto :goto_1

    :cond_6
    const/16 p2, 0x3f8

    if-ne p1, p2, :cond_7

    const-string p1, "GMCustomInterstitialLoader4csjm callInterstitialAdLeftApplication"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->kk()V

    :cond_7
    :goto_1
    return-object v0
.end method

.method public dq(DLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->dq(DLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/api/p/dq/d/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e41

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x1fb1

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bytedance/msdk/dq/p/dq/dq;->dq(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/dq/d;->ox:Lcom/bytedance/msdk/dq/p/dq/dq/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->dq(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
