.class public Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;

.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;

    sget-object p1, Lg/hat;->b:Lg/cpo;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const-class p3, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    invoke-interface {p2, v1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;->onAdTokenLoadedFail(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, v2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/dq/ox;

    const-class v2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p3, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;->onAdTokenLoaded(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeTokenInfo;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x41eca
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
