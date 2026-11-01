.class public final Lcom/bytedance/sdk/component/ox/d/fw;
.super Ljava/lang/Object;


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ox/d/ia;

.field private final dq:Lcom/bytedance/sdk/component/ox/d/ir;

.field private final ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/ox/d/ir;Lcom/bytedance/sdk/component/ox/d/ia;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ox/d/ir;",
            "Lcom/bytedance/sdk/component/ox/d/ia;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/fw;->dq:Lcom/bytedance/sdk/component/ox/d/ir;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/fw;->d:Lcom/bytedance/sdk/component/ox/d/ia;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/fw;->ox:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/fw;->p:Ljava/util/List;

    return-void
.end method

.method public static dq(Ljavax/net/ssl/SSLSession;)Lcom/bytedance/sdk/component/ox/d/fw;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/ia;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/ia;

    move-result-object v1

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/ir;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/ir;

    move-result-object v2

    :try_start_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_3
    new-instance v3, Lcom/bytedance/sdk/component/ox/d/fw;

    invoke-direct {v3, v2, v1, v0, p0}, Lcom/bytedance/sdk/component/ox/d/fw;-><init>(Lcom/bytedance/sdk/component/ox/d/ir;Lcom/bytedance/sdk/component/ox/d/ia;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/ox/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->d:Lcom/bytedance/sdk/component/ox/d/ia;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/ir;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->dq:Lcom/bytedance/sdk/component/ox/d/ir;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bytedance/sdk/component/ox/d/fw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/bytedance/sdk/component/ox/d/fw;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->dq:Lcom/bytedance/sdk/component/ox/d/ir;

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/fw;->dq:Lcom/bytedance/sdk/component/ox/d/ir;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->d:Lcom/bytedance/sdk/component/ox/d/ia;

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/fw;->d:Lcom/bytedance/sdk/component/ox/d/ia;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->ox:Ljava/util/List;

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/fw;->ox:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->p:Ljava/util/List;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/fw;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->dq:Lcom/bytedance/sdk/component/ox/d/ir;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/fw;->d:Lcom/bytedance/sdk/component/ox/d/ia;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/fw;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public ox()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->ox:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/fw;->p:Ljava/util/List;

    return-object v0
.end method
