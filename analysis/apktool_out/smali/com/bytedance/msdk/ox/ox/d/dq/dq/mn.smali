.class public Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;
.super Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;


# instance fields
.field private volatile kk:Lcom/bytedance/msdk/ox/dq/dq/ox;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;)Lcom/bytedance/msdk/ox/dq/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    return-object p0
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

    if-ne p1, p3, :cond_1

    const/16 p1, 0x1f4e

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    const/16 p3, 0x1f4f

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Adn custom reward loader : callLoaderFail  code:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(ILjava/lang/String;)V

    :cond_0
    :goto_0
    move-object v5, p0

    goto/16 :goto_2

    :cond_1
    const/16 p3, 0x1fab

    const-class v2, Ljava/util/Map;

    const/16 v3, 0x1f8b

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_2

    const/16 p1, 0x20d9

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v4

    invoke-interface {p2, v3, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    move-object p1, v0

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Adn custom reward loader : callLoadSucceed price:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " mextraMsg:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->dq(DLjava/util/Map;)V

    goto :goto_0

    :cond_3
    const/16 p3, 0x1fb0

    if-ne p1, p3, :cond_4

    const-string p1, "Adn custom reward loader : callAdVideoCache"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->ox()V

    goto :goto_0

    :cond_4
    const/16 p3, 0x3f0

    if-ne p1, p3, :cond_5

    const-string p1, "Adn custom reward loader : callRewardedAdShow"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->p()V

    goto :goto_0

    :cond_5
    const/16 p3, 0x3f1

    if-ne p1, p3, :cond_6

    const-string p1, "Adn custom reward loader : callRewardClick"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->s()V

    goto :goto_0

    :cond_6
    const/16 p3, 0x3f6

    if-ne p1, p3, :cond_7

    const-string p1, "Adn custom reward loader : callRewardedAdClosed"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->q()V

    goto :goto_0

    :cond_7
    const/16 p3, 0x402

    if-ne p1, p3, :cond_8

    const-string p1, "Adn custom reward loader : callRewardVideoComplete"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->jy()V

    goto :goto_0

    :cond_8
    const/16 p3, 0x3fd

    if-ne p1, p3, :cond_9

    const-string p1, "Adn custom reward loader : callRewardVideoError"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->f()V

    goto/16 :goto_0

    :cond_9
    const/16 p3, 0x40d

    if-ne p1, p3, :cond_a

    const-string p1, "Adn custom reward loader : callRewardSkippedVideo"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->fw()V

    goto/16 :goto_0

    :cond_a
    const/16 p3, 0x3fa

    if-ne p1, p3, :cond_0

    if-eqz p2, :cond_0

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

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Adn custom reward loader : callRewardVerify rewardVerify:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " amount:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " map:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$8;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$8;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;ZFLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v4}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :goto_2
    return-object v0
.end method

.method public dq(DLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_1

    const-string v0, "\u81ea\u5b9a\u4e49Adapter callLoadSuccess"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/dq/dq/kk;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/dq/dq/kk;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/d/s;DLjava/util/Map;)V

    return-void

    :cond_1
    const-string p1, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$7;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;Lcom/bytedance/msdk/api/ox/dq;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$5;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$5;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final fw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$6;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final jy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$4;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/dq/dq/kk;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/dq/dq/kk;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$3;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method
