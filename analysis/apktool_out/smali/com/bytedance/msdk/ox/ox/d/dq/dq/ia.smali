.class public Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;
.super Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;


# instance fields
.field private kk:Lcom/bytedance/msdk/ox/dq/dq/ox;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;)Lcom/bytedance/msdk/ox/dq/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    return-object p0
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

    const-string v2, "Adn custom splash loader : callLoaderFail  code:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(ILjava/lang/String;)V

    goto :goto_1

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
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Adn custom splash loader : callLoadSucceed price:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " mextraMsg:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->dq(DLjava/util/Map;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x3f1

    if-ne p1, p2, :cond_3

    const-string p1, "Adn custom splash loader : callSplashAdClicked"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->ox()V

    goto :goto_1

    :cond_3
    const/16 p2, 0x3f0

    if-ne p1, p2, :cond_4

    const-string p1, "Adn custom splash loader : callSplashAdShow"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->p()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x3fb

    if-ne p1, p2, :cond_5

    const-string p1, "Adn custom splash loader : callSplashAdSkip"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->s()V

    goto :goto_1

    :cond_5
    const/16 p2, 0x3f3

    if-ne p1, p2, :cond_6

    const-string p1, "Adn custom splash loader : callSplashAdDismiss"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->q()V

    :cond_6
    :goto_1
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

    if-nez v0, :cond_0

    const-string v0, "\u81ea\u5b9a\u4e49Adapter callLoadSuccess"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/ox/dq/dq/o;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/dq/dq/o;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/d/s;DLjava/util/Map;)V

    return-void

    :cond_0
    const-string p1, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$4;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;->kk:Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia$3;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method
