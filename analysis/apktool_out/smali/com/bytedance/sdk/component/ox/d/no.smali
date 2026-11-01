.class public final Lcom/bytedance/sdk/component/ox/d/no;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/no$dq;
    }
.end annotation


# static fields
.field public static final d:Lcom/bytedance/sdk/component/ox/d/no;

.field public static final dq:Lcom/bytedance/sdk/component/ox/d/no;

.field private static final ia:[Lcom/bytedance/sdk/component/ox/d/ia;

.field public static final ox:Lcom/bytedance/sdk/component/ox/d/no;


# instance fields
.field final iw:[Ljava/lang/String;

.field final mn:[Ljava/lang/String;

.field final p:Z

.field final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/bytedance/sdk/component/ox/d/ia;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->ux:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->py:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->en:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->gl:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->dn:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->kf:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->bx:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->hy:Lcom/bytedance/sdk/component/ox/d/ia;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->nt:Lcom/bytedance/sdk/component/ox/d/ia;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->ip:Lcom/bytedance/sdk/component/ox/d/ia;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->ij:Lcom/bytedance/sdk/component/ox/d/ia;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->xi:Lcom/bytedance/sdk/component/ox/d/ia;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->op:Lcom/bytedance/sdk/component/ox/d/ia;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->ce:Lcom/bytedance/sdk/component/ox/d/ia;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ia;->kk:Lcom/bytedance/sdk/component/ox/d/ia;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/no;->ia:[Lcom/bytedance/sdk/component/ox/d/ia;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/no$dq;

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/component/ox/d/no$dq;-><init>(Z)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq([Lcom/bytedance/sdk/component/ox/d/ia;)Lcom/bytedance/sdk/component/ox/d/no$dq;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/ir;->p:Lcom/bytedance/sdk/component/ox/d/ir;

    new-array v6, v6, [Lcom/bytedance/sdk/component/ox/d/ir;

    sget-object v7, Lcom/bytedance/sdk/component/ox/d/ir;->dq:Lcom/bytedance/sdk/component/ox/d/ir;

    aput-object v7, v6, v2

    sget-object v7, Lcom/bytedance/sdk/component/ox/d/ir;->d:Lcom/bytedance/sdk/component/ox/d/ir;

    aput-object v7, v6, v3

    sget-object v7, Lcom/bytedance/sdk/component/ox/d/ir;->ox:Lcom/bytedance/sdk/component/ox/d/ir;

    aput-object v7, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq([Lcom/bytedance/sdk/component/ox/d/ir;)Lcom/bytedance/sdk/component/ox/d/no$dq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq(Z)Lcom/bytedance/sdk/component/ox/d/no$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq()Lcom/bytedance/sdk/component/ox/d/no;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/no;->dq:Lcom/bytedance/sdk/component/ox/d/no;

    new-instance v4, Lcom/bytedance/sdk/component/ox/d/no$dq;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/component/ox/d/no$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/no;)V

    new-array v0, v3, [Lcom/bytedance/sdk/component/ox/d/ir;

    aput-object v1, v0, v2

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq([Lcom/bytedance/sdk/component/ox/d/ir;)Lcom/bytedance/sdk/component/ox/d/no$dq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq(Z)Lcom/bytedance/sdk/component/ox/d/no$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq()Lcom/bytedance/sdk/component/ox/d/no;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/no;->d:Lcom/bytedance/sdk/component/ox/d/no;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/no$dq;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/ox/d/no$dq;-><init>(Z)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq()Lcom/bytedance/sdk/component/ox/d/no;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/no;->ox:Lcom/bytedance/sdk/component/ox/d/no;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/no$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->p:Z

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/no$dq;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/no$dq;->ox:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ox/d/no$dq;->p:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/no;->s:Z

    return-void
.end method

.method private d(Ljavax/net/ssl/SSLSocket;Z)Lcom/bytedance/sdk/component/ox/d/no;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/ia;->dq:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/ox;->ia:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/ia;->dq:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/component/ox/d/no$dq;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/ox/d/no$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/no;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq([Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/no$dq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/no$dq;->d([Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/no$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/no$dq;->dq()Lcom/bytedance/sdk/component/ox/d/no;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/ia;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/ia;->dq([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/no;->d(Ljavax/net/ssl/SSLSocket;Z)Lcom/bytedance/sdk/component/ox/d/no;

    move-result-object p2

    iget-object v0, p2, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->p:Z

    return v0
.end method

.method public dq(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/dq/ox;->ia:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->d(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/ia;->dq:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->d(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/bytedance/sdk/component/ox/d/no;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/bytedance/sdk/component/ox/d/no;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/no;->p:Z

    iget-boolean v3, p1, Lcom/bytedance/sdk/component/ox/d/no;->p:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/no;->s:Z

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ox/d/no;->s:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/no;->s:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x11

    return v0
.end method

.method public ox()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/ir;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/ir;->dq([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->s:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->p:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/no;->iw:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/no;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/no;->mn:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/no;->ox()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, ", tlsVersions="

    const-string v3, ", supportsTlsExtensions="

    const-string v4, "ConnectionSpec(cipherSuites="

    invoke-static {v4, v0, v2, v1, v3}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/no;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
