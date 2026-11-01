.class Lcom/bytedance/sdk/openadsdk/upie/d$1;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/upie/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/d;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->ox:Lcom/bytedance/sdk/openadsdk/upie/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 5

    const/16 p1, 0x2711

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "v"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "TTDeriveTplManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lottie content is ok, version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->ox:Lcom/bytedance/sdk/openadsdk/upie/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->dq:Ljava/lang/String;

    invoke-static {p2, v2, v1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Lcom/bytedance/sdk/openadsdk/upie/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

    if-eqz p2, :cond_4

    invoke-interface {p2, v1}, Lcom/bytedance/sdk/openadsdk/upie/d$dq;->dq(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lottieJsonUrl\u52a0\u8f7d\u5931\u8d250, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2716

    invoke-interface {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/upie/d$dq;->dq(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lottieJsonUrl\u52a0\u8f7d\u5931\u8d251, response is not null:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSuccess:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/d$dq;->dq(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lottieJsonUrl\u52a0\u8f7d\u5931\u8d252, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/d$dq;->dq(ILjava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/d$1;->d:Lcom/bytedance/sdk/openadsdk/upie/d$dq;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lottieJsonUrl\u52a0\u8f7d\u5931\u8d253, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2711

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/upie/d$dq;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
