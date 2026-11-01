.class public Lcom/bytedance/sdk/component/ox/d/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/k$dq;
    }
.end annotation


# static fields
.field static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/no;",
            ">;"
        }
    .end annotation
.end field

.field static final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bl:I

.field final cd:Lcom/bytedance/sdk/component/ox/d/mn;

.field final e:Z

.field final f:Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;

.field final fw:Ljavax/net/ssl/HostnameVerifier;

.field final gh:Lcom/bytedance/sdk/component/ox/d/d;

.field final h:I

.field final i:Lcom/bytedance/sdk/component/ox/d/o;

.field final ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;"
        }
    .end annotation
.end field

.field final ig:Lcom/bytedance/sdk/component/ox/d/ox;

.field final iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/no;",
            ">;"
        }
    .end annotation
.end field

.field final ji:I

.field final jy:Ljavax/net/ssl/SSLSocketFactory;

.field final k:Z

.field final kk:Lcom/bytedance/sdk/component/ox/d/f$dq;

.field final kx:I

.field final le:Lcom/bytedance/sdk/component/ox/d/jy;

.field final mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;"
        }
    .end annotation
.end field

.field final mp:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final no:Lcom/bytedance/sdk/component/ox/d/mp;

.field final o:Ljava/net/ProxySelector;

.field final ox:Lcom/bytedance/sdk/component/ox/d/q;

.field final p:Ljava/net/Proxy;

.field final q:Ljavax/net/SocketFactory;

.field final r:Lcom/bytedance/sdk/component/ox/d/d;

.field final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;"
        }
    .end annotation
.end field

.field final wp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/bytedance/sdk/component/ox/d/wp;

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/wp;->p:Lcom/bytedance/sdk/component/ox/d/wp;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/wp;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/ox/d/k;->dq:Ljava/util/List;

    new-array v0, v0, [Lcom/bytedance/sdk/component/ox/d/no;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/no;->dq:Lcom/bytedance/sdk/component/ox/d/no;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/no;->ox:Lcom/bytedance/sdk/component/ox/d/no;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/k;->d:Ljava/util/List;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/k$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/k$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/k$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/k$dq;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/k;-><init>(Lcom/bytedance/sdk/component/ox/d/k$dq;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/k$dq;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->dq:Lcom/bytedance/sdk/component/ox/d/q;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->ox:Lcom/bytedance/sdk/component/ox/d/q;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->d:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->p:Ljava/net/Proxy;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->ox:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->s:Ljava/util/List;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->iw:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->s:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->mn:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->iw:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->ia:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->mn:Lcom/bytedance/sdk/component/ox/d/f$dq;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->kk:Lcom/bytedance/sdk/component/ox/d/f$dq;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->ia:Ljava/net/ProxySelector;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->o:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->kk:Lcom/bytedance/sdk/component/ox/d/mp;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->no:Lcom/bytedance/sdk/component/ox/d/mp;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->o:Lcom/bytedance/sdk/component/ox/d/ox;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->ig:Lcom/bytedance/sdk/component/ox/d/ox;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->no:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->mp:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->ig:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->q:Ljavax/net/SocketFactory;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->bl:Ljava/util/Set;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/ox/d/no;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/no;->dq()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->mp:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/k;->e()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/k;->dq(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->jy:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;->dq(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->f:Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->jy:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->q:Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->f:Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;

    :goto_2
    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->jy:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->fw:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->f:Lcom/bytedance/sdk/component/ox/d/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->f:Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;)Lcom/bytedance/sdk/component/ox/d/mn;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->cd:Lcom/bytedance/sdk/component/ox/d/mn;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->fw:Lcom/bytedance/sdk/component/ox/d/d;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->gh:Lcom/bytedance/sdk/component/ox/d/d;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->cd:Lcom/bytedance/sdk/component/ox/d/d;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->r:Lcom/bytedance/sdk/component/ox/d/d;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->gh:Lcom/bytedance/sdk/component/ox/d/o;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->i:Lcom/bytedance/sdk/component/ox/d/o;

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->ji:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/o;->dq(Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->r:Lcom/bytedance/sdk/component/ox/d/jy;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->le:Lcom/bytedance/sdk/component/ox/d/jy;

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->i:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->k:Z

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->le:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->wp:Z

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->k:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->e:Z

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->wp:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->kx:I

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->e:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->h:I

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->kx:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->ji:I

    iget p1, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->h:I

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k;->bl:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k;->mn:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k;->ia:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null network interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->ia:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/k;->mn:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dq(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "No System TLS"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private e()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v2, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected default trust managers:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public cd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->e:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->h:I

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->kx:I

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/s;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/e;->dq(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/kx;Z)Lcom/bytedance/sdk/component/ox/d/e;

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->k:Z

    return v0
.end method

.method public fw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->wp:Z

    return v0
.end method

.method public gh()Lcom/bytedance/sdk/component/ox/d/q;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->ox:Lcom/bytedance/sdk/component/ox/d/q;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/no;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->iw:Ljava/util/List;

    return-object v0
.end method

.method public ia()Lcom/bytedance/sdk/component/ox/d/jy;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->le:Lcom/bytedance/sdk/component/ox/d/jy;

    return-object v0
.end method

.method public ig()Lcom/bytedance/sdk/component/ox/d/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->cd:Lcom/bytedance/sdk/component/ox/d/mn;

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/component/ox/d/mp;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->no:Lcom/bytedance/sdk/component/ox/d/mp;

    return-object v0
.end method

.method public jy()Lcom/bytedance/sdk/component/ox/d/o;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->i:Lcom/bytedance/sdk/component/ox/d/o;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->ia:Ljava/util/List;

    return-object v0
.end method

.method public kk()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->q:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public le()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->mn:Ljava/util/List;

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->ig:Lcom/bytedance/sdk/component/ox/d/ox;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/ox;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->mp:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    return-object v0
.end method

.method public mp()Lcom/bytedance/sdk/component/ox/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->r:Lcom/bytedance/sdk/component/ox/d/d;

    return-object v0
.end method

.method public no()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->fw:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public o()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->jy:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->ji:I

    return v0
.end method

.method public p()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->p:Ljava/net/Proxy;

    return-object v0
.end method

.method public q()Lcom/bytedance/sdk/component/ox/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->gh:Lcom/bytedance/sdk/component/ox/d/d;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->s:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->o:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public wp()Lcom/bytedance/sdk/component/ox/d/f$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k;->kk:Lcom/bytedance/sdk/component/ox/d/f$dq;

    return-object v0
.end method
