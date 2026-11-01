.class public final Lcom/google/android/gms/internal/ads/zzabw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Lcom/google/android/gms/internal/ads/zzabz;

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabz;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabw;->c:Lcom/google/android/gms/internal/ads/zzabz;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabw;->e:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzabw;->f:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzabw;->a:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/zzabw;->b:J

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zzabw;->d:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->e:J

    return-wide v0
.end method

.method public final zzf(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->c:Lcom/google/android/gms/internal/ads/zzabz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabz;->zza(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabw;->c:Lcom/google/android/gms/internal/ads/zzabz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabz;->zza(J)J

    move-result-wide v1

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzabw;->b:J

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzabw;->d:J

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzabw;->f:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzabw;->a:J

    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzaby;->i(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzado;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v2
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
