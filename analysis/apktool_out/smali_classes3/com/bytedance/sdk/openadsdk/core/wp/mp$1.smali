.class Lcom/bytedance/sdk/openadsdk/core/wp/mp$1;
.super Lcom/bytedance/sdk/openadsdk/core/wp/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/wp/mp;->d(Ljava/lang/String;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/wp/mp;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/wp/mp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/mp$1;->d:Lcom/bytedance/sdk/openadsdk/core/wp/mp;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/wp/mp$1;->dq:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result v1

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/wp/mp$1;->dq:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/mp$1;->d:Lcom/bytedance/sdk/openadsdk/core/wp/mp;

    const/4 v3, 0x3

    invoke-interface {v0, v3, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/wp/mp;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/mp$1;->d:Lcom/bytedance/sdk/openadsdk/core/wp/mp;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/wp/mp;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/mp$1;->d:Lcom/bytedance/sdk/openadsdk/core/wp/mp;

    const/4 v3, 0x4

    invoke-interface {v0, v3, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->d(Lcom/bytedance/sdk/openadsdk/core/wp/mp;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->dq(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1
.end method
