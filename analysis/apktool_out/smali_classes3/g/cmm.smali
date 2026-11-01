.class public final Lg/cmm;
.super Lcom/google/android/gms/internal/ads/zzfsg;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:B


# virtual methods
.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzfsg;
    .locals 0

    iget-byte p1, p0, Lg/cmm;->d:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lg/cmm;->d:B

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfsh;
    .locals 4

    iget-byte v0, p0, Lg/cmm;->d:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/cmm;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lg/cmm;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/e;

    iget-object v1, p0, Lg/cmm;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lg/cmm;->c:Z

    iget v3, p0, Lg/cmm;->a:I

    invoke-direct {v0, v1, v2, v3}, Lg/e;-><init>(Ljava/lang/String;ZI)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/cmm;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " fileOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lg/cmm;->d:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    const-string v1, " hasDifferentDmaOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lg/cmm;->d:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " skipChecks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lg/cmm;->a:I

    if-nez v1, :cond_5

    const-string v1, " filePurpose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzfsg;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lg/cmm;->a:I

    return-object p0
.end method
