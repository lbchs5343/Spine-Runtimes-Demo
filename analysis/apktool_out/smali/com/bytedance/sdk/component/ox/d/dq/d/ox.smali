.class public final Lcom/bytedance/sdk/component/ox/d/dq/d/ox;
.super Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/kk;


# instance fields
.field public d:I

.field public dq:Z

.field private final ia:Lcom/bytedance/sdk/component/ox/d/op;

.field private ig:Lcom/bytedance/sdk/component/ox/d/wp;

.field private jy:Lcom/bytedance/sdk/component/ox/dq/p;

.field private kk:Ljava/net/Socket;

.field private final mn:Lcom/bytedance/sdk/component/ox/d/o;

.field private mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

.field private no:Lcom/bytedance/sdk/component/ox/d/fw;

.field private o:Ljava/net/Socket;

.field public ox:I

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/bytedance/sdk/component/ox/d/dq/d/mn;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Lcom/bytedance/sdk/component/ox/dq/s;

.field public s:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/op;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ox:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s:J

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    return-void
.end method

.method private dq(IILcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/d/kx;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONNECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/d/gh;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/dq/s;Lcom/bytedance/sdk/component/ox/dq/p;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/cd;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/kx;->ox()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq(Z)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d(J)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->d(Lcom/bytedance/sdk/component/ox/dq/gh;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->close()V

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/bl;->ox()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->p()Lcom/bytedance/sdk/component/ox/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-interface {v0, v1, p3}, Lcom/bytedance/sdk/component/ox/d/d;->dq(Lcom/bytedance/sdk/component/ox/d/op;Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/bl;->ox()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dq(IIILcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->iw()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(IILcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(IILcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    iput-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    iput-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dq(IILcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/op;->d()Ljava/net/Proxy;

    move-result-object p3

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object p4

    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/net/Socket;

    invoke-direct {p4, p3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/dq;->ox()Ljavax/net/SocketFactory;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p4

    :goto_1
    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    invoke-virtual {p4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/op;->ox()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->d(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "throw with null exception"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to connect to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/op;->ox()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/d/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->kk()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/d;->dq(Ljavax/net/ssl/SSLSocket;)Lcom/bytedance/sdk/component/ox/d/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/no;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->s()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v2, v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/ox/d/fw;->dq(Ljavax/net/ssl/SSLSession;)Lcom/bytedance/sdk/component/ox/d/fw;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->o()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->no()Lcom/bytedance/sdk/component/ox/d/mn;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/fw;->ox()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/bytedance/sdk/component/ox/d/mn;->dq(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/no;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/dq/ig;->d(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    iput-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->no:Lcom/bytedance/sdk/component/ox/d/fw;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/wp;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/wp;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/bytedance/sdk/component/ox/d/wp;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    :goto_1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ig:Lcom/bytedance/sdk/component/ox/d/wp;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/fw;->ox()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hostname "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/mn;->dq(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/kk/s;->dq(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_2
    :try_start_5
    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d(Ljavax/net/ssl/SSLSocket;)V

    :cond_5
    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    throw p1
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/d/d;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/dq;->kk()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/wp;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ig:Lcom/bytedance/sdk/component/ox/d/wp;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/dq/d/d;)V

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ig:Lcom/bytedance/sdk/component/ox/d/wp;

    sget-object p2, Lcom/bytedance/sdk/component/ox/d/wp;->p:Lcom/bytedance/sdk/component/ox/d/wp;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;-><init>(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->dq(Ljava/net/Socket;Ljava/lang/String;Lcom/bytedance/sdk/component/ox/dq/s;Lcom/bytedance/sdk/component/ox/dq/p;)Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;)Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->dq()Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ox()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private iw()Lcom/bytedance/sdk/component/ox/d/kx;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/kx$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/d/gh;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/p;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/r$dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;)Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;-><init>(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/r$dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/s/mn;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/d/r$dq;->ox()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/d/r$dq;->ox()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/d/r$dq;->p()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/dq/s;Lcom/bytedance/sdk/component/ox/dq/p;)V

    return-object p2
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/op;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    return-object v0
.end method

.method public dq(IIIZLcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ig:Lcom/bytedance/sdk/component/ox/d/wp;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->iw()Ljava/util/List;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/component/ox/d/dq/d/d;

    invoke-direct {v7, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/d;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->kk()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/no;->ox:Lcom/bytedance/sdk/component/ox/d/no;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/d/s;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication to "

    const-string p4, " not permitted by network security policy"

    invoke-static {p3, v0, p4}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/d/s;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/d/s;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/d/s;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v8, 0x0

    move-object v9, v8

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->p()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object/from16 v6, p6

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(IIILcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    if-nez v0, :cond_4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_3
    move-object/from16 v6, p6

    invoke-direct {p0, p1, p2, p5, v6}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(IILcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V

    :cond_4
    invoke-direct {p0, v7, p5, v6}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/dq/d/d;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/op;->p()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Too many tunnel connections attempted: 21"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/d/s;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/s;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter p1

    :try_start_2
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ox:I

    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_7
    :goto_4
    return-void

    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    :goto_5
    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    iput-object v8, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    iput-object v8, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->kk:Ljava/net/Socket;

    iput-object v8, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    iput-object v8, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->jy:Lcom/bytedance/sdk/component/ox/dq/p;

    iput-object v8, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->no:Lcom/bytedance/sdk/component/ox/d/fw;

    iput-object v8, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ig:Lcom/bytedance/sdk/component/ox/d/wp;

    iput-object v8, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    if-nez v9, :cond_8

    new-instance v9, Lcom/bytedance/sdk/component/ox/d/dq/d/s;

    invoke-direct {v9, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/s;-><init>(Ljava/io/IOException;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/s;->dq(Ljava/io/IOException;)V

    :goto_6
    if-eqz p4, :cond_9

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/d;->dq(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    throw v9

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ox:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/op;)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ox:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    :cond_4
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/op;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-eq v0, v3, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->ox()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/op;->ox()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/dq;->o()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/kk/s;->dq:Lcom/bytedance/sdk/component/ox/d/dq/kk/s;

    if-eq p2, v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->no()Lcom/bytedance/sdk/component/ox/d/mn;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p()Lcom/bytedance/sdk/component/ox/d/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/fw;->ox()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/ox/d/mn;->dq(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/gh;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->no:Lcom/bytedance/sdk/component/ox/d/fw;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/kk/s;->dq:Lcom/bytedance/sdk/component/ox/d/dq/kk/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->no:Lcom/bytedance/sdk/component/ox/d/fw;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/fw;->ox()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/component/ox/d/dq/kk/s;->dq(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public dq(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->q:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->s()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public ox()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->o:Ljava/net/Socket;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/ox/d/fw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->no:Lcom/bytedance/sdk/component/ox/d/fw;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->d()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ia:Lcom/bytedance/sdk/component/ox/d/op;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->ox()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->no:Lcom/bytedance/sdk/component/ox/d/fw;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/fw;->d()Lcom/bytedance/sdk/component/ox/d/ia;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ig:Lcom/bytedance/sdk/component/ox/d/wp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
