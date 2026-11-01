.class public Lcom/bytedance/sdk/component/ig/dq/dq$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/component/ttvideo/INetworkClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ig/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private final dq:Lcom/bytedance/sdk/component/d/dq/ig;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->ox()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig;->d()Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    return-void
.end method


# virtual methods
.method public doPost(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public doRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object p1

    const-string v1, "host"

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/fw;->d()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p2, v0

    goto :goto_2

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->newBuilder()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->setResponse(Lorg/json/JSONObject;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->setBody(Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->build()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;

    move-result-object p1

    return-object p1

    :goto_1
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->newBuilder()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->setException(Ljava/lang/Exception;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->build()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;

    move-result-object p1

    return-object p1

    :goto_2
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->newBuilder()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->setBody(Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->setHeader(Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->setException(Ljava/lang/Exception;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->build()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;

    move-result-object p1

    return-object p1

    :goto_3
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;->newBuilder()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->setException(Ljava/lang/Exception;)Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/INetworkClient$Result$Builder;->build()Lcom/bykv/vk/component/ttvideo/INetworkClient$Result;

    move-result-object p1

    return-object p1
.end method
