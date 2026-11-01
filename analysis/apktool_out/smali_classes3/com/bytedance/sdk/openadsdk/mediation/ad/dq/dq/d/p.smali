.class public Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;

.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;

    sget-object p1, Lg/hat;->b:Lg/cpo;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/p;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-object p3

    :pswitch_0
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;->getAppkey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;->getAdnSlotId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationSplashRequestInfo;->getAdnName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x412f9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/p;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
