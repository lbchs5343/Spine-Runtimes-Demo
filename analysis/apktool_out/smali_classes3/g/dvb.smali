.class public final Lg/dvb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lg/bgm;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dvb;->a:Ljava/lang/Object;

    iput p2, p0, Lg/dvb;->b:I

    iput-boolean p3, p0, Lg/dvb;->c:Z

    iput-boolean p4, p0, Lg/dvb;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dvb;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lg/dvb;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/bgm;

    iget v2, p0, Lg/dvb;->b:I

    iget-boolean v3, p0, Lg/dvb;->c:Z

    iget-boolean v4, p0, Lg/dvb;->d:Z

    const/4 v8, 0x0

    move-object v6, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v8}, Lg/bgm;->u(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lg/dvb;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/bgm;

    iget v2, p0, Lg/dvb;->b:I

    iget-boolean v3, p0, Lg/dvb;->c:Z

    iget-boolean v4, p0, Lg/dvb;->d:Z

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lg/bgm;->u(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Lg/ezm;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/dvb;->b:I

    iget-object v3, v0, Lg/dvb;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ezm;

    invoke-virtual {v6, v1}, Lg/ezm;->h(Ljavax/net/ssl/SSLSocket;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/2addr v2, v5

    iput v2, v0, Lg/dvb;->b:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_b

    iget v2, v0, Lg/dvb;->b:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    const/4 v7, 0x0

    if-ge v2, v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/ezm;

    invoke-virtual {v8, v1}, Lg/ezm;->h(Ljavax/net/ssl/SSLSocket;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lg/dvb;->c:Z

    iget-boolean v2, v0, Lg/dvb;->d:Z

    iget-object v3, v6, Lg/ezm;->c:[Ljava/lang/String;

    iget-object v4, v6, Lg/ezm;->f:[Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v8

    const-string v9, "sslSocket.enabledCipherSuites"

    invoke-static {v8, v9}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lg/bos;->q:Lg/aqn;

    invoke-static {v9, v8, v4}, Lg/erq;->j(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v8

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v9

    const-string v10, "sslSocket.enabledProtocols"

    invoke-static {v9, v10}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lg/ejo;->b:Lg/ejo;

    invoke-static {v10, v9, v3}, Lg/erq;->j(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v10

    const-string v11, "supportedCipherSuites"

    invoke-static {v10, v11}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lg/bos;->q:Lg/aqn;

    sget-object v12, Lg/erq;->c:[B

    array-length v12, v10

    const/4 v13, 0x0

    :goto_6
    const/4 v14, -0x1

    if-ge v13, v12, :cond_7

    aget-object v15, v10, v13

    const/16 v16, 0x1

    const-string v5, "TLS_FALLBACK_SCSV"

    invoke-virtual {v11, v15, v5}, Lg/aqn;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x1

    const/4 v13, -0x1

    :goto_7
    const-string v5, "cipherSuitesIntersection"

    if-eqz v2, :cond_8

    if-eq v13, v14, :cond_8

    invoke-static {v8, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v2, v10, v13

    const-string v10, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {v2, v10}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v8

    add-int/lit8 v10, v10, 0x1

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v10, "copyOf(this, newSize)"

    invoke-static {v8, v10}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, [Ljava/lang/String;

    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aput-object v2, v8, v10

    :cond_8
    new-instance v2, Lg/cxc;

    invoke-direct {v2, v7}, Lg/cxc;-><init>(Z)V

    iget-boolean v7, v6, Lg/ezm;->d:Z

    iput-boolean v7, v2, Lg/cxc;->d:Z

    iput-object v4, v2, Lg/cxc;->a:Ljava/lang/Object;

    iput-object v3, v2, Lg/cxc;->b:Ljava/lang/Object;

    iget-boolean v3, v6, Lg/ezm;->e:Z

    iput-boolean v3, v2, Lg/cxc;->e:Z

    invoke-static {v8, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v8

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/cxc;->k([Ljava/lang/String;)V

    const-string v3, "tlsVersionsIntersection"

    invoke-static {v9, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v9

    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/cxc;->i([Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/cxc;->j()Lg/ezm;

    move-result-object v2

    invoke-virtual {v2}, Lg/ezm;->i()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Lg/ezm;->c:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Lg/ezm;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v2, v2, Lg/ezm;->f:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_a
    return-object v6

    :cond_b
    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lg/dvb;->d:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", modes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", supported protocols="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(this)"

    invoke-static {v1, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public h(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lg/dvb;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/bgm;

    iget v2, p0, Lg/dvb;->b:I

    iget-boolean v3, p0, Lg/dvb;->c:Z

    iget-boolean v4, p0, Lg/dvb;->d:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v8}, Lg/bgm;->u(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lg/dvb;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/bgm;

    iget v2, p0, Lg/dvb;->b:I

    iget-boolean v3, p0, Lg/dvb;->c:Z

    iget-boolean v4, p0, Lg/dvb;->d:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lg/bgm;->u(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
