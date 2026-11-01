.class public final Lg/ezm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/ezm;

.field public static final b:Lg/ezm;


# instance fields
.field public final c:[Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    sget-object v0, Lg/bos;->s:Lg/bos;

    sget-object v1, Lg/bos;->i:Lg/bos;

    sget-object v2, Lg/bos;->p:Lg/bos;

    sget-object v3, Lg/bos;->f:Lg/bos;

    sget-object v4, Lg/bos;->d:Lg/bos;

    sget-object v5, Lg/bos;->k:Lg/bos;

    sget-object v6, Lg/bos;->c:Lg/bos;

    sget-object v7, Lg/bos;->o:Lg/bos;

    sget-object v8, Lg/bos;->j:Lg/bos;

    const/16 v9, 0x9

    new-array v10, v9, [Lg/bos;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v12, 0x1

    aput-object v1, v10, v12

    const/4 v13, 0x2

    aput-object v2, v10, v13

    const/4 v14, 0x3

    aput-object v3, v10, v14

    const/4 v15, 0x4

    aput-object v4, v10, v15

    const/16 v16, 0x5

    aput-object v5, v10, v16

    const/16 v17, 0x6

    aput-object v6, v10, v17

    const/16 v18, 0x7

    aput-object v7, v10, v18

    const/16 v19, 0x8

    aput-object v8, v10, v19

    const/16 v20, 0x3

    const/16 v14, 0x10

    const/16 v21, 0x0

    new-array v11, v14, [Lg/bos;

    aput-object v0, v11, v21

    aput-object v1, v11, v12

    aput-object v2, v11, v13

    aput-object v3, v11, v20

    aput-object v4, v11, v15

    aput-object v5, v11, v16

    aput-object v6, v11, v17

    aput-object v7, v11, v18

    aput-object v8, v11, v19

    sget-object v0, Lg/bos;->n:Lg/bos;

    aput-object v0, v11, v9

    sget-object v0, Lg/bos;->b:Lg/bos;

    const/16 v1, 0xa

    aput-object v0, v11, v1

    sget-object v0, Lg/bos;->a:Lg/bos;

    const/16 v1, 0xb

    aput-object v0, v11, v1

    sget-object v0, Lg/bos;->l:Lg/bos;

    const/16 v1, 0xc

    aput-object v0, v11, v1

    sget-object v0, Lg/bos;->h:Lg/bos;

    const/16 v1, 0xd

    aput-object v0, v11, v1

    sget-object v0, Lg/bos;->r:Lg/bos;

    const/16 v1, 0xe

    aput-object v0, v11, v1

    sget-object v0, Lg/bos;->g:Lg/bos;

    const/16 v1, 0xf

    aput-object v0, v11, v1

    new-instance v0, Lg/cxc;

    invoke-direct {v0, v12}, Lg/cxc;-><init>(I)V

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/bos;

    invoke-virtual {v0, v1}, Lg/cxc;->f([Lg/bos;)V

    sget-object v1, Lg/gdk;->TLS_1_3:Lg/gdk;

    sget-object v2, Lg/gdk;->TLS_1_2:Lg/gdk;

    new-array v3, v13, [Lg/gdk;

    aput-object v1, v3, v21

    aput-object v2, v3, v12

    invoke-virtual {v0, v3}, Lg/cxc;->l([Lg/gdk;)V

    iget-boolean v3, v0, Lg/cxc;->d:Z

    const-string v4, "no TLS extensions for cleartext connections"

    if-eqz v3, :cond_2

    iput-boolean v12, v0, Lg/cxc;->e:Z

    invoke-virtual {v0}, Lg/cxc;->j()Lg/ezm;

    new-instance v0, Lg/cxc;

    invoke-direct {v0, v12}, Lg/cxc;-><init>(I)V

    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lg/bos;

    invoke-virtual {v0, v3}, Lg/cxc;->f([Lg/bos;)V

    new-array v3, v13, [Lg/gdk;

    aput-object v1, v3, v21

    aput-object v2, v3, v12

    invoke-virtual {v0, v3}, Lg/cxc;->l([Lg/gdk;)V

    iget-boolean v3, v0, Lg/cxc;->d:Z

    if-eqz v3, :cond_1

    iput-boolean v12, v0, Lg/cxc;->e:Z

    invoke-virtual {v0}, Lg/cxc;->j()Lg/ezm;

    move-result-object v0

    sput-object v0, Lg/ezm;->a:Lg/ezm;

    new-instance v0, Lg/cxc;

    invoke-direct {v0, v12}, Lg/cxc;-><init>(I)V

    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lg/bos;

    invoke-virtual {v0, v3}, Lg/cxc;->f([Lg/bos;)V

    new-array v3, v15, [Lg/gdk;

    aput-object v1, v3, v21

    aput-object v2, v3, v12

    sget-object v1, Lg/gdk;->TLS_1_1:Lg/gdk;

    aput-object v1, v3, v13

    sget-object v1, Lg/gdk;->TLS_1_0:Lg/gdk;

    aput-object v1, v3, v20

    invoke-virtual {v0, v3}, Lg/cxc;->l([Lg/gdk;)V

    iget-boolean v1, v0, Lg/cxc;->d:Z

    if-eqz v1, :cond_0

    iput-boolean v12, v0, Lg/cxc;->e:Z

    invoke-virtual {v0}, Lg/cxc;->j()Lg/ezm;

    new-instance v0, Lg/ezm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lg/ezm;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lg/ezm;->b:Lg/ezm;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/ezm;->d:Z

    iput-boolean p2, p0, Lg/ezm;->e:Z

    iput-object p3, p0, Lg/ezm;->f:[Ljava/lang/String;

    iput-object p4, p0, Lg/ezm;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lg/ezm;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg/ezm;

    iget-boolean v0, p1, Lg/ezm;->d:Z

    iget-boolean v1, p0, Lg/ezm;->d:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Lg/ezm;->f:[Ljava/lang/String;

    iget-object v1, p1, Lg/ezm;->f:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg/ezm;->c:[Ljava/lang/String;

    iget-object v1, p1, Lg/ezm;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lg/ezm;->e:Z

    iget-boolean p1, p1, Lg/ezm;->e:Z

    if-eq v0, p1, :cond_5

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final g()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lg/ezm;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lg/bos;->m:Lg/ao;

    invoke-virtual {v5, v4}, Lg/ao;->al(Ljava/lang/String;)Lg/bos;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lg/gsv;->bf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    iget-boolean v0, p0, Lg/ezm;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/ezm;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lg/ejo;->b:Lg/ejo;

    invoke-static {v2, v0, v1}, Lg/erq;->x(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/ezm;->f:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lg/bos;->q:Lg/aqn;

    invoke-static {v1, v0, p1}, Lg/erq;->x(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lg/ezm;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lg/ezm;->f:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lg/ezm;->c:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lg/ezm;->e:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    return v2

    :cond_2
    const/16 v0, 0x11

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lg/ezm;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lg/gdk;->Companion:Lg/bap;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lg/bap;->a(Ljava/lang/String;)Lg/gdk;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lg/gsv;->bf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lg/ezm;->d:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/ezm;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/ezm;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/ezm;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
