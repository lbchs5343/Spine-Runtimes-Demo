.class public final Lg/cam;
.super Lcom/google/android/gms/internal/ads/zzfpq;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:B

.field public e:Z

.field public f:Z


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfpq;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg/cam;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null clientVersion"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzfpq;
    .locals 0

    iget-byte p1, p0, Lg/cam;->d:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lg/cam;->d:B

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzfpq;
    .locals 0

    iget-byte p1, p0, Lg/cam;->d:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lg/cam;->d:B

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/ads/zzfpq;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/cam;->f:Z

    iget-byte p1, p0, Lg/cam;->d:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lg/cam;->d:B

    return-object p0
.end method

.method public final zze(J)Lcom/google/android/gms/internal/ads/zzfpq;
    .locals 0

    const-wide/16 p1, 0x12c

    iput-wide p1, p0, Lg/cam;->b:J

    iget-byte p1, p0, Lg/cam;->d:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lg/cam;->d:B

    return-object p0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzfpq;
    .locals 0

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lg/cam;->a:J

    iget-byte p1, p0, Lg/cam;->d:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lg/cam;->d:B

    return-object p0
.end method

.method public final zzg(Z)Lcom/google/android/gms/internal/ads/zzfpq;
    .locals 0

    iput-boolean p1, p0, Lg/cam;->e:Z

    iget-byte p1, p0, Lg/cam;->d:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lg/cam;->d:B

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfpr;
    .locals 10

    iget-byte v0, p0, Lg/cam;->d:B

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lg/cam;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lg/cxd;

    iget-boolean v4, p0, Lg/cam;->e:Z

    iget-boolean v5, p0, Lg/cam;->f:Z

    iget-wide v6, p0, Lg/cam;->a:J

    iget-wide v8, p0, Lg/cam;->b:J

    invoke-direct/range {v2 .. v9}, Lg/cxd;-><init>(Ljava/lang/String;ZZJJ)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/cam;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " clientVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lg/cam;->d:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    const-string v1, " shouldGetAdvertisingId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lg/cam;->d:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " isGooglePlayServicesAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lg/cam;->d:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    const-string v1, " enableQuerySignalsTimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v1, p0, Lg/cam;->d:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    const-string v1, " querySignalsTimeoutMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v1, p0, Lg/cam;->d:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_7

    const-string v1, " enableQuerySignalsCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v1, p0, Lg/cam;->d:B

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_8

    const-string v1, " querySignalsCacheTtlSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
