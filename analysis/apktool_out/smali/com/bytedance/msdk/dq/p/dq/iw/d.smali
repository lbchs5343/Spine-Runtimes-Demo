.class public Lcom/bytedance/msdk/dq/p/dq/iw/d;
.super Lcom/bytedance/msdk/dq/p/dq/dq;


# instance fields
.field private ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/d/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/dq/p/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/d/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq;->d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    instance-of p2, p1, Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    :cond_0
    return-void
.end method


# virtual methods
.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
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

    const-string v2, "GMCustomRewardVideoLoader4csjm callLoaderFail  code:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/dq/p/dq/iw/d;->dq(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/16 p3, 0x1fab

    const-class v2, Ljava/util/Map;

    const/16 v3, 0x1f8b

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_1

    const/16 p1, 0x20d9

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v4

    invoke-interface {p2, v3, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    move-object p1, v0

    :goto_0
    const-string p2, "GMCustomRewardVideoLoader4csjm callLoadSucceed price:"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, p1}, Lcom/bytedance/msdk/dq/p/dq/iw/d;->dq(DLjava/util/Map;)V

    goto/16 :goto_1

    :cond_2
    const/16 p3, 0x1fb0

    if-ne p1, p3, :cond_3

    const-string p1, "GMCustomRewardVideoLoader4csjm callAdVideoCache"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->s()V

    goto/16 :goto_1

    :cond_3
    const/16 p3, 0x3f0

    if-ne p1, p3, :cond_4

    const-string p1, "GMCustomRewardVideoLoader4csjm callFullVideoAdShow"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->iw()V

    goto/16 :goto_1

    :cond_4
    const/16 p3, 0x3f1

    if-ne p1, p3, :cond_5

    const-string p1, "GMCustomRewardVideoLoader4csjm callFullVideoAdClick"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->mn()V

    goto/16 :goto_1

    :cond_5
    const/16 p3, 0x3f6

    if-ne p1, p3, :cond_6

    const-string p1, "GMCustomRewardVideoLoader4csjm callFullVideoAdClosed"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->ia()V

    goto :goto_1

    :cond_6
    const/16 p3, 0x402

    if-ne p1, p3, :cond_7

    const-string p1, "GMCustomRewardVideoLoader4csjm callFullVideoComplete"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->kk()V

    goto :goto_1

    :cond_7
    const/16 p3, 0x3fd

    if-ne p1, p3, :cond_8

    const-string p1, "GMCustomRewardVideoLoader4csjm callFullVideoError"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->fw()V

    goto :goto_1

    :cond_8
    const/16 p3, 0x40d

    if-ne p1, p3, :cond_9

    const-string p1, "GMCustomRewardVideoLoader4csjm callFullVideoSkippedVideo"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->cd()V

    goto :goto_1

    :cond_9
    const/16 p3, 0x3fa

    if-ne p1, p3, :cond_a

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz p1, :cond_a

    const-string p1, "GMCustomRewardVideoLoader4csjm callFullVideoRewardVerify"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1f51

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v6

    const/16 p1, 0x1f52

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->floatValue(I)F

    move-result v7

    const/16 p1, 0x1f53

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v3, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/util/Map;

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    new-instance v4, Lcom/bytedance/msdk/dq/p/dq/iw/d$1;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/msdk/dq/p/dq/iw/d$1;-><init>(Lcom/bytedance/msdk/dq/p/dq/iw/d;ZFLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1, v4}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_a
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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->dq(DLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/api/p/dq/d/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V

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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/iw/d;->ox:Lcom/bytedance/msdk/dq/p/dq/iw/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->dq(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
