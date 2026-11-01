.class public Lcom/google/android/gms/internal/ads/zzgyr;
.super Lcom/google/android/gms/internal/ads/zzgwx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgyx<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgyr<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgwx<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/google/android/gms/internal/ads/zzgyx;

.field public e:Lcom/google/android/gms/internal/ads/zzgyx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgyx;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyr;->d:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyx;->ck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyx;->cm()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzgwy;)Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbj(Lcom/google/android/gms/internal/ads/zzgyx;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbh()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->ck()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->d:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cm()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    sget-object v2, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    :cond_0
    return-void
.end method

.method public bridge synthetic zzaC()Lcom/google/android/gms/internal/ads/zzgwx;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbh()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzaK(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgwx;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbk(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public bridge synthetic zzaN([BII)Lcom/google/android/gms/internal/ads/zzgwx;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzm;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbl([BII)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public bridge synthetic zzaO([BIILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgwx;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzm;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbm([BIILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public bridge synthetic zzaP()Lcom/google/android/gms/internal/ads/zzhah;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbh()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzaW(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzhah;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbk(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public bridge synthetic zzaZ([BII)Lcom/google/android/gms/internal/ads/zzhah;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzm;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbl([BII)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public bridge synthetic zzba([BIILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzhah;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzm;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbm([BIILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public final zzbg()Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->d:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->ck()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cm()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzbh()Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbp()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->zzbb()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbo()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    return-object v0
.end method

.method public zzbj(Lcom/google/android/gms/internal/ads/zzgyx;)Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbp()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    sget-object v1, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public zzbk(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgxv;",
            "Lcom/google/android/gms/internal/ads/zzgyh;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->f()V

    :try_start_0
    sget-object v0, Lg/gxd;->a:Lg/gxd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzgxv;->b:Lg/hj;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lg/hj;

    invoke-direct {v2, p1}, Lg/hj;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    :goto_0
    invoke-interface {v0, v1, v2, p2}, Lg/ah;->l(Ljava/lang/Object;Lg/hj;Lcom/google/android/gms/internal/ads/zzgyh;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_1
    throw p1
.end method

.method public zzbl([BII)Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzm;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbm([BIILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public zzbm([BIILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzgyh;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzm;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->f()V

    :try_start_0
    sget-object v0, Lg/gxd;->a:Lg/gxd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    add-int v6, p2, p3

    new-instance v7, Lg/fse;

    invoke-direct {v7, p4}, Lg/fse;-><init>(Lcom/google/android/gms/internal/ads/zzgyh;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lg/ah;->d(Ljava/lang/Object;[BIILg/fse;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    throw p1
.end method

.method public final zzbn()Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbo()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->zzbw()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhbm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhbm;-><init>(Lcom/google/android/gms/internal/ads/zzhai;)V

    throw v1
.end method

.method public zzbo()Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->ck()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v1

    invoke-interface {v1, v0}, Lg/ah;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    return-object v0
.end method

.method public zzbp()Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->d:Lcom/google/android/gms/internal/ads/zzgyx;

    return-object v0
.end method

.method public bridge synthetic zzbq()Lcom/google/android/gms/internal/ads/zzhah;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbg()Lcom/google/android/gms/internal/ads/zzgyr;

    return-object p0
.end method

.method public bridge synthetic zzbr()Lcom/google/android/gms/internal/ads/zzhai;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzbs()Lcom/google/android/gms/internal/ads/zzhai;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbo()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzbt()Lcom/google/android/gms/internal/ads/zzhai;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbp()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    return-object v0
.end method

.method public final zzbw()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyr;->e:Lcom/google/android/gms/internal/ads/zzgyx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->bs(Lcom/google/android/gms/internal/ads/zzgyx;Z)Z

    move-result v0

    return v0
.end method
