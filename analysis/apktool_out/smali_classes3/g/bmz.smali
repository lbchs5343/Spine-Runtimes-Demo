.class public final Lg/bmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/deu;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:J

.field public final g:[J


# direct methods
.method public constructor <init>(JIJIJ[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg/bmz;->c:J

    iput p3, p0, Lg/bmz;->e:I

    iput-wide p4, p0, Lg/bmz;->f:J

    iput p6, p0, Lg/bmz;->a:I

    iput-wide p7, p0, Lg/bmz;->b:J

    iput-object p9, p0, Lg/bmz;->g:[J

    const-wide/16 p3, -0x1

    cmp-long p5, p7, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p7

    :goto_0
    iput-wide p3, p0, Lg/bmz;->d:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lg/bmz;->f:J

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lg/bmz;->a:I

    return v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lg/bmz;->d:J

    return-wide v0
.end method

.method public final zze(J)J
    .locals 13

    invoke-virtual {p0}, Lg/bmz;->zzh()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lg/bmz;->c:J

    sub-long/2addr p1, v0

    iget v0, p0, Lg/bmz;->e:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lg/bmz;->g:[J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double p1, p1, v1

    iget-wide v1, p0, Lg/bmz;->b:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzd([JJZZ)I

    move-result v1

    int-to-long v2, v1

    iget-wide v4, p0, Lg/bmz;->f:J

    mul-long v2, v2, v4

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    aget-wide v8, v0, v1

    add-int/lit8 v10, v1, 0x1

    int-to-long v11, v10

    mul-long v4, v4, v11

    div-long/2addr v4, v6

    const/16 v6, 0x63

    if-ne v1, v6, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    :cond_1
    aget-wide v6, v0, v10

    move-wide v0, v6

    :goto_0
    cmp-long v6, v8, v0

    if-nez v6, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_2
    long-to-double v6, v8

    sub-double/2addr p1, v6

    sub-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr p1, v0

    :goto_1
    sub-long/2addr v4, v2

    long-to-double v0, v4

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr p1, v2

    return-wide p1

    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 14

    invoke-virtual {p0}, Lg/bmz;->zzh()Z

    move-result v0

    const-wide/16 v1, 0x0

    iget v3, p0, Lg/bmz;->e:I

    iget-wide v4, p0, Lg/bmz;->c:J

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzado;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzadr;

    int-to-long v7, v3

    add-long/2addr v4, v7

    invoke-direct {v6, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    invoke-direct {v0, v6, v6}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v0

    :cond_0
    iget-wide v6, p0, Lg/bmz;->f:J

    move-wide v8, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v8, v0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    long-to-double v6, v6

    div-double/2addr v8, v6

    const-wide/16 v6, 0x0

    cmpg-double v2, v8, v6

    if-gtz v2, :cond_1

    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    goto :goto_1

    :cond_1
    cmpl-double v2, v8, v10

    if-ltz v2, :cond_2

    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    goto :goto_1

    :cond_2
    double-to-int v2, v8

    iget-object v6, p0, Lg/bmz;->g:[J

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v10, v6, v2

    long-to-double v10, v10

    const/16 v7, 0x63

    if-ne v2, v7, :cond_3

    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v2, 0x1

    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    aget-wide v12, v6, v7

    long-to-double v6, v12

    :goto_0
    int-to-double v12, v2

    sub-double/2addr v8, v12

    sub-double/2addr v6, v10

    mul-double v6, v6, v8

    add-double/2addr v6, v10

    :goto_1
    div-double/2addr v6, p1

    iget-wide v8, p0, Lg/bmz;->b:J

    long-to-double v10, v8

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-wide/16 v10, -0x1

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    int-to-long v2, v3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v4, v2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzado;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v2
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lg/bmz;->g:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
