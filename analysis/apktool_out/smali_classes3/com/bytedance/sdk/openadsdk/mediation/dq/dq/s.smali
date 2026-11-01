.class public Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/s;
.super Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/dq;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/dq;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/valueset/MediationValueUtil;->checkClassType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x40f75

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const-class p2, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationNativeToBannerListener;

    invoke-super {p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/dq;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationNativeToBannerListener;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/ox;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/ox;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationNativeToBannerListener;)V

    return-object p2

    :cond_1
    const v0, 0x40f76

    if-ne p1, v0, :cond_3

    const-class p2, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;

    invoke-super {p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/dq;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/kk;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/kk;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;)V

    return-object p2

    :cond_2
    return-object v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/dq;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
