.class public final Lcom/bytedance/sdk/component/ox/d/dq;
.super Ljava/lang/Object;


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/jy;

.field final dq:Lcom/bytedance/sdk/component/ox/d/gh;

.field final ia:Ljava/net/Proxy;

.field final iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/no;",
            ">;"
        }
    .end annotation
.end field

.field final kk:Ljavax/net/ssl/SSLSocketFactory;

.field final mn:Ljava/net/ProxySelector;

.field final no:Lcom/bytedance/sdk/component/ox/d/mn;

.field final o:Ljavax/net/ssl/HostnameVerifier;

.field final ox:Ljavax/net/SocketFactory;

.field final p:Lcom/bytedance/sdk/component/ox/d/d;

.field final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/component/ox/d/jy;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/bytedance/sdk/component/ox/d/mn;Lcom/bytedance/sdk/component/ox/d/d;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/bytedance/sdk/component/ox/d/jy;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/bytedance/sdk/component/ox/d/mn;",
            "Lcom/bytedance/sdk/component/ox/d/d;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/no;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/gh$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/gh$dq;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/gh$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/gh$dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/gh$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/gh$dq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ox/d/gh$dq;->dq(I)Lcom/bytedance/sdk/component/ox/d/gh$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh$dq;->ox()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    if-eqz p3, :cond_6

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq;->d:Lcom/bytedance/sdk/component/ox/d/jy;

    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ox:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    iput-object p8, p0, Lcom/bytedance/sdk/component/ox/d/dq;->p:Lcom/bytedance/sdk/component/ox/d/d;

    if-eqz p10, :cond_3

    invoke-static {p10}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->s:Ljava/util/List;

    if-eqz p11, :cond_2

    invoke-static {p11}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->iw:Ljava/util/List;

    if-eqz p12, :cond_1

    iput-object p12, p0, Lcom/bytedance/sdk/component/ox/d/dq;->mn:Ljava/net/ProxySelector;

    iput-object p9, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ia:Ljava/net/Proxy;

    iput-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq;->kk:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lcom/bytedance/sdk/component/ox/d/dq;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lcom/bytedance/sdk/component/ox/d/dq;->no:Lcom/bytedance/sdk/component/ox/d/mn;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/ox/d/jy;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->d:Lcom/bytedance/sdk/component/ox/d/jy;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/gh;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->d:Lcom/bytedance/sdk/component/ox/d/jy;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->d:Lcom/bytedance/sdk/component/ox/d/jy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->p:Lcom/bytedance/sdk/component/ox/d/d;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->p:Lcom/bytedance/sdk/component/ox/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->s:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->iw:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->iw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->mn:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->mn:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ia:Ljava/net/Proxy;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->ia:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->kk:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->kk:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->o:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->o:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->no:Lcom/bytedance/sdk/component/ox/d/mn;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->no:Lcom/bytedance/sdk/component/ox/d/mn;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bytedance/sdk/component/ox/d/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/dq;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/gh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq(Lcom/bytedance/sdk/component/ox/d/dq;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->d:Lcom/bytedance/sdk/component/ox/d/jy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->p:Lcom/bytedance/sdk/component/ox/d/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->iw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->mn:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ia:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->kk:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->o:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->no:Lcom/bytedance/sdk/component/ox/d/mn;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/mn;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public ia()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ia:Ljava/net/Proxy;

    return-object v0
.end method

.method public iw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/no;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->iw:Ljava/util/List;

    return-object v0
.end method

.method public kk()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->kk:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public mn()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->mn:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public no()Lcom/bytedance/sdk/component/ox/d/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->no:Lcom/bytedance/sdk/component/ox/d/mn;

    return-object v0
.end method

.method public o()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public ox()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ox:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/ox/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->p:Lcom/bytedance/sdk/component/ox/d/d;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq;->s:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->ia()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ia:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->ia:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq;->mn:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
