.class public Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;

.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;

    sget-object p1, Lg/hat;->b:Lg/cpo;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

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

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const-class p3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/f/dq/dq/d;

    invoke-interface {p2, v1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p1, p3}, Lcom/bytedance/sdk/openadsdk/f/dq/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;->onSplashAdClose(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;I)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/f/dq/dq/d;

    invoke-interface {p2, v1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/dq/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;->onSplashAdClick(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/f/dq/dq/d;

    invoke-interface {p2, v1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/dq/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;->onSplashAdShow(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1b1fd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/p/dq/dq/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
