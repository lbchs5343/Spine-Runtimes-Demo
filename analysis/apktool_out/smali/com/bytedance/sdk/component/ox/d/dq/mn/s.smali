.class public Lcom/bytedance/sdk/component/ox/d/dq/mn/s;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/logging/Logger;

.field private static final dq:Lcom/bytedance/sdk/component/ox/d/dq/mn/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq:Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    const-class v0, Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq:Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    return-object v0
.end method

.method public static d(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;)[B"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/ox/d/wp;

    sget-object v4, Lcom/bytedance/sdk/component/ox/d/wp;->dq:Lcom/bytedance/sdk/component/ox/d/wp;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/wp;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/wp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/ox;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->fw()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static dq()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/dq;->dq()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/d;->dq()Lcom/bytedance/sdk/component/ox/d/dq/mn/d;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->dq()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;-><init>()V

    return-object v0
.end method

.method public static dq(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/ox/d/wp;

    sget-object v4, Lcom/bytedance/sdk/component/ox/d/wp;->dq:Lcom/bytedance/sdk/component/ox/d/wp;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/wp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/ox/d/dq/kk/iw;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/kk/d;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/kk/d;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public d(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public dq(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/kk/dq;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/ox/d/dq/kk/iw;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/kk/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/kk/iw;)V

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const-string v0, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-static {p1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public dq(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public dq(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    const-string v0, "OkHttp"

    return-object v0
.end method
