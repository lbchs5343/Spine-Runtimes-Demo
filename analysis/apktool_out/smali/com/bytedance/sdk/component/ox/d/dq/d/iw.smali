.class public final Lcom/bytedance/sdk/component/ox/d/dq/d/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ox/d/dq/d/p;

.field private final dq:Lcom/bytedance/sdk/component/ox/d/dq;

.field private final ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/op;",
            ">;"
        }
    .end annotation
.end field

.field private iw:I

.field private mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Lcom/bytedance/sdk/component/ox/d/s;

.field private final p:Lcom/bytedance/sdk/component/ox/d/f;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq/d/p;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->s:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->mn:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ia:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ox:Lcom/bytedance/sdk/component/ox/d/s;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->p:Lcom/bytedance/sdk/component/ox/d/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->ia()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq(Lcom/bytedance/sdk/component/ox/d/gh;Ljava/net/Proxy;)V

    return-void
.end method

.method public static dq(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/gh;Ljava/net/Proxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->s:Ljava/util/List;

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/dq;->mn()Ljava/net/ProxySelector;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->d()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->s:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->iw:I

    return-void

    :catch_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private dq(Ljava/net/Proxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->mn:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result v0

    :goto_1
    if-lez v0, :cond_6

    const v2, 0xffff

    if-gt v0, v2, :cond_6

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->mn:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->d()Lcom/bytedance/sdk/component/ox/d/jy;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/d/jy;->dq(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->mn:Ljava/util/List;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No route to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ox()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->iw:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p()Ljava/net/Proxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->s:Ljava/util/List;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->iw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->iw:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq(Ljava/net/Proxy;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->s:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ox()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->p()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->mn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    new-instance v4, Lcom/bytedance/sdk/component/ox/d/op;

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->mn:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5, v1, v6}, Lcom/bytedance/sdk/component/ox/d/op;-><init>(Lcom/bytedance/sdk/component/ox/d/dq;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/component/ox/d/dq/d/p;->ox(Lcom/bytedance/sdk/component/ox/d/op;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ia:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ia:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ia:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/op;Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/op;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->mn()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->mn()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->d()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/op;->d()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/p;->dq(Lcom/bytedance/sdk/component/ox/d/op;)V

    return-void
.end method

.method public dq()Z
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ox()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
