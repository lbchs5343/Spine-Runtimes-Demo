.class public final Lg/dul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ew;


# instance fields
.field public b:J

.field public final c:Lcom/google/android/gms/internal/ads/zzad;

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/ads/zzacu;

.field public f:J

.field public final g:Lcom/google/android/gms/internal/ads/zzadx;

.field public final h:Lg/gme;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzadx;Lg/gme;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dul;->e:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object p2, p0, Lg/dul;->g:Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p3, p0, Lg/dul;->h:Lg/gme;

    iget p1, p3, Lg/gme;->d:I

    iget p2, p3, Lg/gme;->e:I

    iget v0, p3, Lg/gme;->b:I

    mul-int v0, v0, p1

    iget p3, p3, Lg/gme;->a:I

    div-int/lit8 v0, v0, 0x8

    if-ne p3, v0, :cond_0

    mul-int p3, p2, v0

    mul-int/lit8 v1, p3, 0x8

    div-int/lit8 p3, p3, 0xa

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lg/dul;->d:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzy(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzU(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzab;->zzT(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p1

    iput-object p1, p0, Lg/dul;->c:Lcom/google/android/gms/internal/ads/zzad;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected block size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzacs;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    iget v7, v0, Lg/dul;->i:I

    iget v8, v0, Lg/dul;->d:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v6, v8

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    iget-object v6, v0, Lg/dul;->g:Lcom/google/android/gms/internal/ads/zzadx;

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    :cond_0
    iget v4, v0, Lg/dul;->i:I

    add-int/2addr v4, v3

    iput v4, v0, Lg/dul;->i:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget v1, v0, Lg/dul;->i:I

    iget-object v2, v0, Lg/dul;->h:Lg/gme;

    iget v4, v2, Lg/gme;->a:I

    div-int/2addr v1, v4

    if-lez v1, :cond_2

    iget-wide v7, v0, Lg/dul;->f:J

    iget-wide v9, v0, Lg/dul;->b:J

    iget v2, v2, Lg/gme;->e:I

    int-to-long v13, v2

    sget-object v15, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v1, v4

    iget v2, v0, Lg/dul;->i:I

    sub-int v16, v2, v15

    const/4 v14, 0x1

    const/16 v17, 0x0

    iget-object v11, v0, Lg/dul;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    move/from16 v2, v16

    iget-wide v4, v0, Lg/dul;->b:J

    int-to-long v7, v1

    add-long/2addr v4, v7

    iput-wide v4, v0, Lg/dul;->b:J

    iput v2, v0, Lg/dul;->i:I

    :cond_2
    if-gtz v6, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public final zza(IJ)V
    .locals 7

    int-to-long v3, p1

    new-instance v0, Lg/glb;

    iget-object v1, p0, Lg/dul;->h:Lg/gme;

    const/4 v2, 0x1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lg/glb;-><init>(Lg/gme;IJJ)V

    iget-object p1, p0, Lg/dul;->e:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iget-object p1, p0, Lg/dul;->g:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object p2, p0, Lg/dul;->c:Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    return-void
.end method

.method public final zzb(J)V
    .locals 0

    iput-wide p1, p0, Lg/dul;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lg/dul;->i:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lg/dul;->b:J

    return-void
.end method
