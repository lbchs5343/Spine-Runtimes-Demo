.class public Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;

.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;

    sget-object p1, Lg/hat;->b:Lg/cpo;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

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

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const-class v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;->onClose()V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;->onCanRenderFail(Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;->onCanRenderSuccess(Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;->getEstimatedInteractionArea()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$EasyPlayWidgetListener;->onInfo(Lorg/json/JSONObject;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x232e5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
