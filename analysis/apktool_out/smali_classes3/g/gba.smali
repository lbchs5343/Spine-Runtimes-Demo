.class public final Lg/gba;
.super Lg/ayg;
.source "SourceFile"


# instance fields
.field public d:Lg/deb;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Ljava/net/Socket;

.field public i:I

.field public j:Lg/czl;

.field public k:Lg/aqt;

.field public final l:Ljava/util/ArrayList;

.field public m:I

.field public n:Lg/ago;

.field public final o:Lg/ego;

.field public p:Z

.field public q:J

.field public r:Ljava/net/Socket;

.field public s:Lg/ug;


# direct methods
.method public constructor <init>(Lg/dhh;Lg/ego;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gba;->o:Lg/ego;

    const/4 p1, 0x1

    iput p1, p0, Lg/gba;->f:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/gba;->l:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lg/gba;->q:J

    return-void
.end method

.method public static t(Lg/fys;Lg/ego;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "failedRoute"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lg/ego;->a:Lg/cbm;

    iget-object v1, v0, Lg/cbm;->j:Ljava/net/ProxySelector;

    iget-object v0, v0, Lg/cbm;->a:Lg/eyn;

    invoke-virtual {v0}, Lg/eyn;->l()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, Lg/fys;->t:Lg/aoy;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Lg/btb;)V
    .locals 2

    sget-object v0, Lg/amc;->REFUSED_STREAM:Lg/amc;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/btb;->x(Lg/amc;Ljava/io/IOException;)V

    return-void
.end method

.method public final aa(Lg/cbm;Ljava/util/List;)Z
    .locals 9

    iget-object v0, p1, Lg/cbm;->a:Lg/eyn;

    sget-object v1, Lg/erq;->c:[B

    iget-object v1, p0, Lg/gba;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lg/gba;->f:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_9

    iget-boolean v1, p0, Lg/gba;->p:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lg/gba;->o:Lg/ego;

    iget-object v2, v1, Lg/ego;->a:Lg/cbm;

    iget-object v4, v1, Lg/ego;->a:Lg/cbm;

    invoke-virtual {v2, p1}, Lg/cbm;->k(Lg/cbm;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v0, Lg/eyn;->c:Ljava/lang/String;

    iget-object v5, v0, Lg/eyn;->c:Ljava/lang/String;

    iget-object v6, v4, Lg/cbm;->a:Lg/eyn;

    iget-object v6, v6, Lg/eyn;->c:Ljava/lang/String;

    invoke-static {v2, v6}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    return v6

    :cond_2
    iget-object v2, p0, Lg/gba;->s:Lg/ug;

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ego;

    iget-object v7, v2, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_5

    iget-object v7, v1, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    if-ne v7, v8, :cond_5

    iget-object v7, v1, Lg/ego;->c:Ljava/net/InetSocketAddress;

    iget-object v2, v2, Lg/ego;->c:Ljava/net/InetSocketAddress;

    invoke-static {v7, v2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p2, p1, Lg/cbm;->b:Ljavax/net/ssl/HostnameVerifier;

    sget-object v1, Lg/gvr;->a:Lg/gvr;

    if-eq p2, v1, :cond_6

    goto :goto_1

    :cond_6
    sget-object p2, Lg/erq;->c:[B

    iget-object p2, v4, Lg/cbm;->a:Lg/eyn;

    iget v0, v0, Lg/eyn;->d:I

    iget v1, p2, Lg/eyn;->d:I

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p2, Lg/eyn;->c:Ljava/lang/String;

    invoke-static {v5, p2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p2, p0, Lg/gba;->e:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lg/gba;->j:Lg/czl;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lg/czl;->e()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p2, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {v5, p2}, Lg/gvr;->d(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_9

    :goto_0
    :try_start_0
    iget-object p1, p1, Lg/cbm;->c:Lg/bws;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p2, p0, Lg/gba;->j:Lg/czl;

    invoke-static {p2}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lg/czl;->e()Ljava/util/List;

    move-result-object p2

    const-string v0, "hostname"

    invoke-static {v5, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerCertificates"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/aln;

    invoke-direct {v0, p1, p2, v5}, Lg/aln;-><init>(Lg/bws;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v0}, Lg/bws;->d(Ljava/lang/String;Lg/cvw;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    :cond_9
    :goto_1
    return v3
.end method

.method public final ab(Z)Z
    .locals 9

    sget-object v0, Lg/erq;->c:[B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lg/gba;->r:Ljava/net/Socket;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lg/gba;->h:Ljava/net/Socket;

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lg/gba;->d:Lg/deb;

    invoke-static {v4}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/gba;->s:Lg/ug;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lg/ug;->ac(J)Z

    move-result p1

    return p1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-wide v6, p0, Lg/gba;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long/2addr v0, v6

    monitor-exit p0

    const-wide v6, 0x2540be400L

    const/4 v2, 0x1

    cmp-long v8, v0, v6

    if-ltz v8, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v4}, Lg/deb;->i()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr v0, v2

    :try_start_3
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    const/4 v5, 0x1

    :catch_1
    return v5

    :cond_2
    return v2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_0
    return v5
.end method

.method public final ac(IIIZLg/dnw;)V
    .locals 7

    const-string v0, "inetSocketAddress"

    iget-object v1, p0, Lg/gba;->k:Lg/aqt;

    if-nez v1, :cond_e

    iget-object v1, p0, Lg/gba;->o:Lg/ego;

    iget-object v1, v1, Lg/ego;->a:Lg/cbm;

    iget-object v1, v1, Lg/cbm;->h:Ljava/util/List;

    new-instance v2, Lg/dvb;

    invoke-direct {v2, v1}, Lg/dvb;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lg/gba;->o:Lg/ego;

    iget-object v3, v3, Lg/ego;->a:Lg/cbm;

    iget-object v4, v3, Lg/cbm;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_2

    sget-object v3, Lg/ezm;->b:Lg/ezm;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/gba;->o:Lg/ego;

    iget-object v1, v1, Lg/ego;->a:Lg/cbm;

    iget-object v1, v1, Lg/cbm;->a:Lg/eyn;

    iget-object v1, v1, Lg/eyn;->c:Ljava/lang/String;

    sget-object v3, Lg/bop;->h:Lg/bop;

    sget-object v3, Lg/bop;->h:Lg/bop;

    invoke-virtual {v3, v1}, Lg/bop;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/fvg;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication to "

    const-string p4, " not permitted by network security policy"

    invoke-static {p3, v1, p4}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lg/fvg;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    new-instance p1, Lg/fvg;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lg/fvg;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    iget-object v1, v3, Lg/cbm;->f:Ljava/util/List;

    sget-object v3, Lg/aqt;->H2_PRIOR_KNOWLEDGE:Lg/aqt;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_0
    const/4 v1, 0x0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lg/gba;->o:Lg/ego;

    iget-object v6, v5, Lg/ego;->a:Lg/cbm;

    iget-object v6, v6, Lg/cbm;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_3

    iget-object v5, v5, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, p2, p3, p5}, Lg/gba;->y(IIILg/dnw;)V

    iget-object v5, p0, Lg/gba;->r:Ljava/net/Socket;

    if-nez v5, :cond_5

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_5

    :cond_4
    invoke-virtual {p0, p1, p2, p5}, Lg/gba;->x(IILg/dnw;)V

    :cond_5
    invoke-virtual {p0, v2, p5}, Lg/gba;->ad(Lg/dvb;Lg/dnw;)V

    iget-object v5, p0, Lg/gba;->o:Lg/ego;

    iget-object v5, v5, Lg/ego;->c:Ljava/net/InetSocketAddress;

    invoke-static {v5, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object p1, p0, Lg/gba;->o:Lg/ego;

    iget-object p2, p1, Lg/ego;->a:Lg/cbm;

    iget-object p2, p2, Lg/cbm;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p2, :cond_7

    iget-object p1, p1, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lg/gba;->r:Ljava/net/Socket;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Lg/fvg;

    new-instance p2, Ljava/net/ProtocolException;

    const-string p3, "Too many tunnel connections attempted: 21"

    invoke-direct {p2, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lg/fvg;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_7
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lg/gba;->q:J

    return-void

    :goto_5
    iget-object v6, p0, Lg/gba;->h:Ljava/net/Socket;

    if-eqz v6, :cond_8

    invoke-static {v6}, Lg/erq;->o(Ljava/net/Socket;)V

    :cond_8
    iget-object v6, p0, Lg/gba;->r:Ljava/net/Socket;

    if-eqz v6, :cond_9

    invoke-static {v6}, Lg/erq;->o(Ljava/net/Socket;)V

    :cond_9
    iput-object v1, p0, Lg/gba;->h:Ljava/net/Socket;

    iput-object v1, p0, Lg/gba;->r:Ljava/net/Socket;

    iput-object v1, p0, Lg/gba;->d:Lg/deb;

    iput-object v1, p0, Lg/gba;->n:Lg/ago;

    iput-object v1, p0, Lg/gba;->j:Lg/czl;

    iput-object v1, p0, Lg/gba;->k:Lg/aqt;

    iput-object v1, p0, Lg/gba;->s:Lg/ug;

    iput v4, p0, Lg/gba;->f:I

    iget-object v6, p0, Lg/gba;->o:Lg/ego;

    iget-object v6, v6, Lg/ego;->c:Ljava/net/InetSocketAddress;

    invoke-static {v6, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_a

    new-instance v3, Lg/fvg;

    invoke-direct {v3, v5}, Lg/fvg;-><init>(Ljava/io/IOException;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v3, v5}, Lg/fvg;->a(Ljava/io/IOException;)V

    :goto_6
    if-eqz p4, :cond_c

    iput-boolean v4, v2, Lg/dvb;->d:Z

    iget-boolean v4, v2, Lg/dvb;->c:Z

    if-eqz v4, :cond_c

    instance-of v4, v5, Ljava/net/ProtocolException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_b

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-nez v4, :cond_c

    :cond_b
    instance-of v4, v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLException;

    if-eqz v4, :cond_c

    goto/16 :goto_1

    :cond_c
    throw v3

    :cond_d
    new-instance p1, Lg/fvg;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lg/fvg;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ad(Lg/dvb;Lg/dnw;)V
    .locals 9

    iget-object p2, p0, Lg/gba;->o:Lg/ego;

    iget-object p2, p2, Lg/ego;->a:Lg/cbm;

    iget-object v0, p2, Lg/cbm;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    iget-object p1, p2, Lg/cbm;->f:Ljava/util/List;

    sget-object p2, Lg/aqt;->H2_PRIOR_KNOWLEDGE:Lg/aqt;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/gba;->r:Ljava/net/Socket;

    iput-object p1, p0, Lg/gba;->h:Ljava/net/Socket;

    iput-object p2, p0, Lg/gba;->k:Lg/aqt;

    invoke-virtual {p0}, Lg/gba;->z()V

    return-void

    :cond_0
    iget-object p1, p0, Lg/gba;->r:Ljava/net/Socket;

    iput-object p1, p0, Lg/gba;->h:Ljava/net/Socket;

    sget-object p1, Lg/aqt;->HTTP_1_1:Lg/aqt;

    iput-object p1, p0, Lg/gba;->k:Lg/aqt;

    return-void

    :cond_1
    const-string v1, "Hostname "

    const-string v2, "\n              |Hostname "

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lg/gba;->r:Ljava/net/Socket;

    iget-object v5, p2, Lg/cbm;->a:Lg/eyn;

    iget-object v6, v5, Lg/eyn;->c:Ljava/lang/String;

    iget v5, v5, Lg/eyn;->d:I

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v6, v5, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-static {v0, v4}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v0}, Lg/dvb;->g(Ljavax/net/ssl/SSLSocket;)Lg/ezm;

    move-result-object p1

    iget-boolean v4, p1, Lg/ezm;->e:Z

    if-eqz v4, :cond_2

    sget-object v4, Lg/bop;->h:Lg/bop;

    sget-object v4, Lg/bop;->h:Lg/bop;

    iget-object v5, p2, Lg/cbm;->a:Lg/eyn;

    iget-object v5, v5, Lg/eyn;->c:Ljava/lang/String;

    iget-object v6, p2, Lg/cbm;->f:Ljava/util/List;

    invoke-virtual {v4, v0, v5, v6}, Lg/bop;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    const-string v5, "sslSocketSession"

    invoke-static {v4, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lg/eg;->o(Ljavax/net/ssl/SSLSession;)Lg/czl;

    move-result-object v5

    iget-object v6, p2, Lg/cbm;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v6}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v7, p2, Lg/cbm;->a:Lg/eyn;

    iget-object v7, v7, Lg/eyn;->c:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lg/czl;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p1, v1}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lg/cbm;->a:Lg/eyn;

    iget-object p2, p2, Lg/eyn;->c:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified:\n              |    certificate: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lg/bws;->a:Lg/bws;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "sha256/"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lg/gei;->n:Lg/gei;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    const-string v4, "publicKey.encoded"

    invoke-static {v2, v4}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lg/dwm;->ae([B)Lg/gei;

    move-result-object v2

    const-string v4, "SHA-256"

    invoke-virtual {v2, v4}, Lg/gei;->k(Ljava/lang/String;)Lg/gei;

    move-result-object v2

    invoke-virtual {v2}, Lg/gei;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n              |    DN: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n              |    subjectAltNames: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lg/gvr;->b(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lg/gvr;->b(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lg/gsv;->bl(Ljava/lang/Iterable;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/gs;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lg/cbm;->a:Lg/eyn;

    iget-object p2, p2, Lg/eyn;->c:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified (no certificates)"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v1, p2, Lg/cbm;->c:Lg/bws;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    new-instance v2, Lg/czl;

    iget-object v4, v5, Lg/czl;->b:Lg/gdk;

    iget-object v6, v5, Lg/czl;->c:Lg/bos;

    iget-object v7, v5, Lg/czl;->d:Ljava/util/List;

    new-instance v8, Lg/eua;

    invoke-direct {v8, v1, v5, p2}, Lg/eua;-><init>(Lg/bws;Lg/czl;Lg/cbm;)V

    invoke-direct {v2, v4, v6, v7, v8}, Lg/czl;-><init>(Lg/gdk;Lg/bos;Ljava/util/List;Lg/cvw;)V

    iput-object v2, p0, Lg/gba;->j:Lg/czl;

    iget-object p2, p2, Lg/cbm;->a:Lg/eyn;

    iget-object p2, p2, Lg/eyn;->c:Ljava/lang/String;

    new-instance v2, Lg/rp;

    invoke-direct {v2, p0}, Lg/rp;-><init>(Lg/gba;)V

    invoke-virtual {v1, p2, v2}, Lg/bws;->d(Ljava/lang/String;Lg/cvw;)V

    iget-boolean p1, p1, Lg/ezm;->e:Z

    if-eqz p1, :cond_5

    sget-object p1, Lg/bop;->h:Lg/bop;

    sget-object p1, Lg/bop;->h:Lg/bop;

    invoke-virtual {p1, v0}, Lg/bop;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    iput-object v0, p0, Lg/gba;->h:Ljava/net/Socket;

    invoke-static {v0}, Lg/baf;->au(Ljava/net/Socket;)Lg/dix;

    move-result-object p1

    invoke-static {p1}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object p1

    iput-object p1, p0, Lg/gba;->d:Lg/deb;

    invoke-static {v0}, Lg/baf;->x(Ljava/net/Socket;)Lg/dgz;

    move-result-object p1

    invoke-static {p1}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object p1

    iput-object p1, p0, Lg/gba;->n:Lg/ago;

    if-eqz v3, :cond_6

    sget-object p1, Lg/aqt;->Companion:Lg/ie;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lg/ie;->a(Ljava/lang/String;)Lg/aqt;

    move-result-object p1

    goto :goto_1

    :cond_6
    sget-object p1, Lg/aqt;->HTTP_1_1:Lg/aqt;

    :goto_1
    iput-object p1, p0, Lg/gba;->k:Lg/aqt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lg/bop;->h:Lg/bop;

    sget-object p1, Lg/bop;->h:Lg/bop;

    invoke-virtual {p1, v0}, Lg/bop;->m(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, Lg/gba;->k:Lg/aqt;

    sget-object p2, Lg/aqt;->HTTP_2:Lg/aqt;

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Lg/gba;->z()V

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v3, :cond_8

    sget-object p2, Lg/bop;->h:Lg/bop;

    sget-object p2, Lg/bop;->h:Lg/bop;

    invoke-virtual {p2, v3}, Lg/bop;->m(Ljavax/net/ssl/SSLSocket;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {v3}, Lg/erq;->o(Ljava/net/Socket;)V

    :cond_9
    throw p1
.end method

.method public final declared-synchronized c(Lg/ug;Lg/che;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "settings"

    invoke-static {p2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p2, Lg/che;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, Lg/che;->b:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, Lg/gba;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gba;->o:Lg/ego;

    iget-object v2, v1, Lg/ego;->a:Lg/cbm;

    iget-object v2, v2, Lg/cbm;->a:Lg/eyn;

    iget-object v2, v2, Lg/eyn;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lg/ego;->a:Lg/cbm;

    iget-object v2, v2, Lg/cbm;->a:Lg/eyn;

    iget v2, v2, Lg/eyn;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lg/ego;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gba;->j:Lg/czl;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/czl;->c:Lg/bos;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "none"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gba;->k:Lg/aqt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized u()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg/gba;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/gba;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final v(Lg/fys;Lg/dpe;)Lg/axn;
    .locals 6

    iget v0, p2, Lg/dpe;->i:I

    iget-object v1, p0, Lg/gba;->h:Ljava/net/Socket;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/gba;->d:Lg/deb;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lg/gba;->n:Lg/ago;

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lg/gba;->s:Lg/ug;

    if-eqz v4, :cond_0

    new-instance v0, Lg/dga;

    invoke-direct {v0, p1, p0, p2, v4}, Lg/dga;-><init>(Lg/fys;Lg/gba;Lg/dpe;Lg/ug;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, v2, Lg/deb;->b:Lg/cpv;

    invoke-interface {v1}, Lg/cpv;->e()Lg/dme;

    move-result-object v1

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Lg/dme;->_av(J)Lg/dme;

    iget-object v0, v3, Lg/ago;->b:Lg/evq;

    invoke-interface {v0}, Lg/evq;->e()Lg/dme;

    move-result-object v0

    iget p2, p2, Lg/dpe;->a:I

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Lg/dme;->_av(J)Lg/dme;

    new-instance p2, Lg/gnb;

    invoke-direct {p2, p1, p0, v2, v3}, Lg/gnb;-><init>(Lg/fys;Lg/gba;Lg/deb;Lg/ago;)V

    return-object p2
.end method

.method public final declared-synchronized w()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lg/gba;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final x(IILg/dnw;)V
    .locals 3

    iget-object p3, p0, Lg/gba;->o:Lg/ego;

    iget-object v0, p3, Lg/ego;->b:Ljava/net/Proxy;

    iget-object p3, p3, Lg/ego;->a:Lg/cbm;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lg/aej;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance p3, Ljava/net/Socket;

    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object p3, p3, Lg/cbm;->g:Ljavax/net/SocketFactory;

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p3

    invoke-static {p3}, Lg/bff;->d(Ljava/lang/Object;)V

    :goto_1
    iput-object p3, p0, Lg/gba;->r:Ljava/net/Socket;

    iget-object v0, p0, Lg/gba;->o:Lg/ego;

    iget-object v0, v0, Lg/ego;->c:Ljava/net/InetSocketAddress;

    const-string v1, "inetSocketAddress"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lg/bop;->h:Lg/bop;

    sget-object p2, Lg/bop;->h:Lg/bop;

    iget-object v0, p0, Lg/gba;->o:Lg/ego;

    iget-object v0, v0, Lg/ego;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, p3, v0, p1}, Lg/bop;->l(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p3}, Lg/baf;->au(Ljava/net/Socket;)Lg/dix;

    move-result-object p1

    invoke-static {p1}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object p1

    iput-object p1, p0, Lg/gba;->d:Lg/deb;

    invoke-static {p3}, Lg/baf;->x(Ljava/net/Socket;)Lg/dgz;

    move-result-object p1

    invoke-static {p1}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object p1

    iput-object p1, p0, Lg/gba;->n:Lg/ago;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const-string v0, "Failed to connect to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/gba;->o:Lg/ego;

    iget-object v0, v0, Lg/ego;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final y(IIILg/dnw;)V
    .locals 9

    new-instance v0, Lg/fzn;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/fzn;-><init>(I)V

    iget-object v1, p0, Lg/gba;->o:Lg/ego;

    iget-object v2, v1, Lg/ego;->a:Lg/cbm;

    iget-object v2, v2, Lg/cbm;->a:Lg/eyn;

    const-string v3, "url"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lg/fzn;->h:Ljava/lang/Object;

    const-string v2, "CONNECT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lg/fzn;->w(Ljava/lang/String;Lg/sz;)V

    iget-object v1, v1, Lg/ego;->a:Lg/cbm;

    iget-object v2, v1, Lg/cbm;->a:Lg/eyn;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lg/erq;->r(Lg/eyn;Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Host"

    invoke-virtual {v0, v5, v2}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v2, v5}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v5, "okhttp/4.12.0"

    invoke-virtual {v0, v2, v5}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/fzn;->x()Lg/daw;

    move-result-object v0

    new-instance v2, Lg/ais;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lg/ais;-><init>(I)V

    sget-object v5, Lg/aqt;->HTTP_1_1:Lg/aqt;

    const-string v6, "protocol"

    invoke-static {v5, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Proxy-Authenticate"

    invoke-static {v5}, Lg/dyd;->bn(Ljava/lang/String;)V

    const-string v6, "OkHttp-Preemptive"

    invoke-static {v6, v5}, Lg/dyd;->al(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lg/ais;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lg/ais;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/ais;->d()Lg/dvq;

    iget-object v2, v1, Lg/cbm;->e:Lg/bfy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg/daw;->e:Ljava/lang/Object;

    check-cast v2, Lg/eyn;

    invoke-virtual {p0, p1, p2, p4}, Lg/gba;->x(IILg/dnw;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "CONNECT "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lg/erq;->r(Lg/eyn;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lg/gba;->d:Lg/deb;

    invoke-static {p4}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/gba;->n:Lg/ago;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    new-instance v4, Lg/gnb;

    invoke-direct {v4, v3, p0, p4, v2}, Lg/gnb;-><init>(Lg/fys;Lg/gba;Lg/deb;Lg/ago;)V

    iget-object v3, p4, Lg/deb;->b:Lg/cpv;

    invoke-interface {v3}, Lg/cpv;->e()Lg/dme;

    move-result-object v3

    int-to-long v5, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Lg/dme;->_av(J)Lg/dme;

    iget-object p2, v2, Lg/ago;->b:Lg/evq;

    invoke-interface {p2}, Lg/evq;->e()Lg/dme;

    move-result-object p2

    int-to-long v5, p3

    invoke-virtual {p2, v5, v6}, Lg/dme;->_av(J)Lg/dme;

    iget-object p2, v0, Lg/daw;->a:Ljava/lang/Object;

    check-cast p2, Lg/dvq;

    invoke-virtual {v4, p2, p1}, Lg/gnb;->q(Lg/dvq;Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/gnb;->d()V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Lg/gnb;->g(Z)Lg/hdt;

    move-result-object p1

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    iput-object v0, p1, Lg/hdt;->f:Lg/daw;

    invoke-virtual {p1}, Lg/hdt;->o()Lg/enb;

    move-result-object p1

    iget p2, p1, Lg/enb;->g:I

    invoke-static {p1}, Lg/erq;->z(Lg/enb;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v6}, Lg/gnb;->p(J)Lg/qk;

    move-result-object p1

    const p3, 0x7fffffff

    invoke-static {p1, p3}, Lg/erq;->ab(Lg/cpv;I)Z

    invoke-virtual {p1}, Lg/qk;->close()V

    :goto_0
    const/16 p1, 0xc8

    if-eq p2, p1, :cond_2

    const/16 p1, 0x197

    if-ne p2, p1, :cond_1

    iget-object p1, v1, Lg/cbm;->e:Lg/bfy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Unexpected response code for CONNECT: "

    invoke-static {p2, p3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p4, Lg/deb;->d:Lg/clq;

    invoke-virtual {p1}, Lg/clq;->aj()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, Lg/ago;->c:Lg/clq;

    invoke-virtual {p1}, Lg/clq;->aj()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z()V
    .locals 8

    iget-object v0, p0, Lg/gba;->h:Ljava/net/Socket;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/gba;->d:Lg/deb;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/gba;->n:Lg/ago;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, Lg/daw;

    sget-object v5, Lg/amr;->a:Lg/amr;

    invoke-direct {v4, v5}, Lg/daw;-><init>(Lg/amr;)V

    iget-object v6, p0, Lg/gba;->o:Lg/ego;

    iget-object v6, v6, Lg/ego;->a:Lg/cbm;

    iget-object v6, v6, Lg/cbm;->a:Lg/eyn;

    iget-object v6, v6, Lg/eyn;->c:Ljava/lang/String;

    const-string v7, "peerName"

    invoke-static {v6, v7}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, Lg/daw;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lg/erq;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "<set-?>"

    invoke-static {v0, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, Lg/daw;->a:Ljava/lang/Object;

    iput-object v1, v4, Lg/daw;->b:Ljava/lang/Object;

    iput-object v2, v4, Lg/daw;->d:Ljava/lang/Object;

    iput-object p0, v4, Lg/daw;->g:Ljava/lang/Object;

    new-instance v0, Lg/ug;

    invoke-direct {v0, v4}, Lg/ug;-><init>(Lg/daw;)V

    iput-object v0, p0, Lg/gba;->s:Lg/ug;

    sget-object v1, Lg/ug;->a:Lg/che;

    iget v2, v1, Lg/che;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget-object v1, v1, Lg/che;->b:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, Lg/gba;->f:I

    iget-object v1, v0, Lg/ug;->w:Lg/djf;

    const-string v2, ">> CONNECTION "

    monitor-enter v1

    :try_start_0
    iget-boolean v4, v1, Lg/djf;->c:Z

    if-nez v4, :cond_3

    sget-object v4, Lg/djf;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lg/aby;->b:Lg/gei;

    invoke-virtual {v2}, Lg/gei;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lg/erq;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, v1, Lg/djf;->e:Lg/cbs;

    sget-object v4, Lg/aby;->b:Lg/gei;

    invoke-interface {v2, v4}, Lg/cbs;->g(Lg/gei;)Lg/cbs;

    iget-object v2, v1, Lg/djf;->e:Lg/cbs;

    invoke-interface {v2}, Lg/cbs;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, v0, Lg/ug;->w:Lg/djf;

    iget-object v2, v0, Lg/ug;->c:Lg/che;

    invoke-virtual {v1, v2}, Lg/djf;->l(Lg/che;)V

    iget-object v1, v0, Lg/ug;->c:Lg/che;

    invoke-virtual {v1}, Lg/che;->c()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_2

    iget-object v4, v0, Lg/ug;->w:Lg/djf;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v4, v3, v1, v2}, Lg/djf;->n(IJ)V

    :cond_2
    invoke-virtual {v5}, Lg/amr;->l()Lg/gfw;

    move-result-object v1

    iget-object v2, v0, Lg/ug;->j:Ljava/lang/String;

    iget-object v0, v0, Lg/ug;->s:Lg/dvj;

    new-instance v3, Lg/lm;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v0, v4}, Lg/lm;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lg/gfw;->l(Lg/fyg;J)V

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
