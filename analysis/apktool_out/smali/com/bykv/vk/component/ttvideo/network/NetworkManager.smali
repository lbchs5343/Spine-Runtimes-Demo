.class final Lcom/bykv/vk/component/ttvideo/network/NetworkManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/network/NetworkManager$OnCompletionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doRequest(Lcom/bykv/vk/component/ttvideo/INetworkClient;Ljava/lang/String;Ljava/lang/String;Lcom/bykv/vk/component/ttvideo/network/NetworkManager$OnCompletionListener;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/bykv/vk/component/ttvideo/INetworkClient;->doRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/bykv/vk/component/ttvideo/log/LiveError;

    const-string p1, "result is null"

    const/4 p2, 0x0

    const v0, -0x186ab

    invoke-direct {p0, v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/log/LiveError;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    invoke-interface {p3, p0}, Lcom/bykv/vk/component/ttvideo/network/NetworkManager$OnCompletionListener;->onError(Lcom/bykv/vk/component/ttvideo/log/LiveError;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->e:Ljava/lang/Exception;

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->response:Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    invoke-interface {p3, p2}, Lcom/bykv/vk/component/ttvideo/network/NetworkManager$OnCompletionListener;->onCompletion(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->response:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    const-string v1, "rawResp"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of v0, p1, Ljava/io/IOException;

    const-string v1, "description"

    if-eqz v0, :cond_4

    const-string p0, "network IO exception"

    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/bykv/vk/component/ttvideo/log/LiveError;

    const v0, -0x186a8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/log/LiveError;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_7

    const-string v0, "parse JSON failure"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->body:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "rowBody"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->header:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string v0, "responseHeader"

    invoke-virtual {p2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance p0, Lcom/bykv/vk/component/ttvideo/log/LiveError;

    const v0, -0x186a0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/log/LiveError;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_7
    const-string p0, "response not successful"

    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/bykv/vk/component/ttvideo/log/LiveError;

    const v0, -0x186a4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/log/LiveError;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    invoke-interface {p3, p0}, Lcom/bykv/vk/component/ttvideo/network/NetworkManager$OnCompletionListener;->onError(Lcom/bykv/vk/component/ttvideo/log/LiveError;)V

    return-void
.end method
