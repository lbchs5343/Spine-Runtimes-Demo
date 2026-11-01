.class public final Lg/dbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadx;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzad;

.field public b:I

.field public c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzadx;

.field public e:[B

.field public final f:Lcom/google/android/gms/internal/ads/zzakg;

.field public final g:Lcom/google/android/gms/internal/ads/zzed;

.field public h:Lcom/google/android/gms/internal/ads/zzaki;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzakg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dbu;->d:Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p2, p0, Lg/dbu;->f:Lcom/google/android/gms/internal/ads/zzakg;

    const/4 p1, 0x0

    iput p1, p0, Lg/dbu;->b:I

    iput p1, p0, Lg/dbu;->c:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    iput-object p1, p0, Lg/dbu;->e:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p1, p0, Lg/dbu;->g:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final i(I)V
    .locals 4

    iget-object v0, p0, Lg/dbu;->e:[B

    array-length v0, v0

    iget v1, p0, Lg/dbu;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lg/dbu;->b:I

    sub-int/2addr v1, v0

    add-int v0, v1, v1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lg/dbu;->e:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p1, [B

    :goto_0
    iget v2, p0, Lg/dbu;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lg/dbu;->b:I

    iput v1, p0, Lg/dbu;->c:I

    iput-object p1, p0, Lg/dbu;->e:[B

    return-void
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadv;->zza(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzn;IZI)I
    .locals 1

    iget-object p4, p0, Lg/dbu;->h:Lcom/google/android/gms/internal/ads/zzaki;

    if-nez p4, :cond_0

    iget-object p4, p0, Lg/dbu;->d:Lcom/google/android/gms/internal/ads/zzadx;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzadx;->zzg(Lcom/google/android/gms/internal/ads/zzn;IZI)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lg/dbu;->i(I)V

    iget-object p4, p0, Lg/dbu;->e:[B

    iget v0, p0, Lg/dbu;->c:I

    invoke-interface {p1, p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Lg/dbu;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lg/dbu;->c:I

    return p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzad;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbg;->zzb(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iget-object v0, p0, Lg/dbu;->a:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzad;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lg/dbu;->f:Lcom/google/android/gms/internal/ads/zzakg;

    if-nez v0, :cond_2

    iput-object p1, p0, Lg/dbu;->a:Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzc(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzb(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzaki;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lg/dbu;->h:Lcom/google/android/gms/internal/ads/zzaki;

    :cond_2
    iget-object v0, p0, Lg/dbu;->h:Lcom/google/android/gms/internal/ads/zzaki;

    iget-object v2, p0, Lg/dbu;->d:Lcom/google/android/gms/internal/ads/zzadx;

    if-nez v0, :cond_3

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    const-string v3, "application/x-media3-cues"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzad(J)Lcom/google/android/gms/internal/ads/zzab;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zza(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzab;->zzE(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    return-void
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzed;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadv;->zzb(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzed;I)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzed;II)V
    .locals 1

    iget-object v0, p0, Lg/dbu;->h:Lcom/google/android/gms/internal/ads/zzaki;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dbu;->d:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lg/dbu;->i(I)V

    iget-object p3, p0, Lg/dbu;->e:[B

    iget v0, p0, Lg/dbu;->c:I

    invoke-virtual {p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget p1, p0, Lg/dbu;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lg/dbu;->c:I

    return-void
.end method

.method public final zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V
    .locals 8

    iget-object v0, p0, Lg/dbu;->h:Lcom/google/android/gms/internal/ads/zzaki;

    if-nez v0, :cond_0

    iget-object v1, p0, Lg/dbu;->d:Lcom/google/android/gms/internal/ads/zzadx;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    return-void

    :cond_0
    move-wide v2, p1

    move v4, p3

    move v6, p5

    move-object v7, p6

    const/4 v0, 0x0

    if-nez v7, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p2, "DRM on subtitles is not supported"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdb;->zze(ZLjava/lang/Object;)V

    iget p1, p0, Lg/dbu;->c:I

    sub-int/2addr p1, v6

    sub-int p3, p1, p4

    iget-object p1, p0, Lg/dbu;->h:Lcom/google/android/gms/internal/ads/zzaki;

    iget-object p2, p0, Lg/dbu;->e:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzakh;->zza()Lcom/google/android/gms/internal/ads/zzakh;

    move-result-object p5

    new-instance p6, Lcom/google/android/gms/internal/ads/zzakk;

    invoke-direct {p6, p0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzakk;-><init>(Lg/dbu;JI)V

    invoke-interface/range {p1 .. p6}, Lcom/google/android/gms/internal/ads/zzaki;->zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V

    add-int/2addr p3, p4

    iput p3, p0, Lg/dbu;->b:I

    iget p1, p0, Lg/dbu;->c:I

    if-ne p3, p1, :cond_2

    iput v0, p0, Lg/dbu;->b:I

    iput v0, p0, Lg/dbu;->c:I

    :cond_2
    return-void
.end method
