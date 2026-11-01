.class public final Lg/glb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Lg/gme;

.field public final d:I

.field public final e:J


# direct methods
.method public constructor <init>(Lg/gme;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/glb;->c:Lg/gme;

    iput p2, p0, Lg/glb;->d:I

    iput-wide p3, p0, Lg/glb;->e:J

    iget p1, p1, Lg/gme;->a:I

    int-to-long p1, p1

    sub-long/2addr p5, p3

    div-long/2addr p5, p1

    iput-wide p5, p0, Lg/glb;->a:J

    invoke-virtual {p0, p5, p6}, Lg/glb;->f(J)J

    move-result-wide p1

    iput-wide p1, p0, Lg/glb;->b:J

    return-void
.end method


# virtual methods
.method public final f(J)J
    .locals 8

    iget-object v0, p0, Lg/glb;->c:Lg/gme;

    iget v0, v0, Lg/gme;->e:I

    int-to-long v5, v0

    sget-object v7, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    iget v0, p0, Lg/glb;->d:I

    int-to-long v0, v0

    mul-long v1, p1, v0

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lg/glb;->b:J

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 14

    iget v0, p0, Lg/glb;->d:I

    int-to-long v0, v0

    iget-object v2, p0, Lg/glb;->c:Lg/gme;

    iget v3, v2, Lg/gme;->e:I

    int-to-long v3, v3

    mul-long v3, v3, p1

    const-wide/32 v5, 0xf4240

    mul-long v0, v0, v5

    div-long/2addr v3, v0

    iget-wide v0, p0, Lg/glb;->a:J

    const-wide/16 v5, -0x1

    add-long v7, v0, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget v7, v2, Lg/gme;->a:I

    int-to-long v7, v7

    mul-long v7, v7, v3

    invoke-virtual {p0, v3, v4}, Lg/glb;->f(J)J

    move-result-wide v9

    iget-wide v11, p0, Lg/glb;->e:J

    add-long/2addr v7, v11

    new-instance v13, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v13, v9, v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    cmp-long v7, v9, p1

    if-gez v7, :cond_1

    add-long/2addr v0, v5

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lg/glb;->f(J)J

    move-result-wide v0

    iget v2, v2, Lg/gme;->a:I

    int-to-long v5, v2

    mul-long v3, v3, v5

    add-long/2addr v3, v11

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v0, v13, v2}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v0, v13, v13}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
