.class Lcom/bytedance/sdk/openadsdk/core/ji$15;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ji;

.field final synthetic dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ox()Ljava/util/Map;

    move-result-object p1

    const-string v1, "content-type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ox()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-pglcypher"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "application/octet-stream"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, ""

    if-nez p1, :cond_1

    const-string p1, "4"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string p2, "message"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object p1, v2

    move-object v2, p2

    goto :goto_2

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    move-object p2, v2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq()Lcom/bytedance/sdk/component/panglearmor/kk;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->o()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/panglearmor/kk;->d([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ig;->d([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v2, "data is null"

    :goto_2
    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {p1, p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    const-string v1, "response is null"

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;ILjava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$15;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v0, -0x2

    const-string v1, "response onFailure"

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;ILjava/lang/String;)V

    return-void
.end method
