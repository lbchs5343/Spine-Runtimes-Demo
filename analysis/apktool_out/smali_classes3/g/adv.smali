.class public final Lg/adv;
.super Lcom/google/android/gms/internal/ads/zzade;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzadq;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzafk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafk;Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 0

    iput-object p3, p0, Lg/adv;->b:Lcom/google/android/gms/internal/ads/zzadq;

    iput-object p1, p0, Lg/adv;->c:Lcom/google/android/gms/internal/ads/zzafk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzade;-><init>(Lcom/google/android/gms/internal/ads/zzadq;)V

    return-void
.end method


# virtual methods
.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 7

    iget-object v0, p0, Lg/adv;->b:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadq;->zzg(J)Lcom/google/android/gms/internal/ads/zzado;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzadr;->zzc:J

    new-instance v2, Lcom/google/android/gms/internal/ads/zzado;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadr;

    iget-object v4, p0, Lg/adv;->c:Lcom/google/android/gms/internal/ads/zzafk;

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzafk;->a:J

    add-long/2addr v0, v5

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzadr;->zzb:J

    invoke-direct {v3, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzado;->zzb:Lcom/google/android/gms/internal/ads/zzadr;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzadr;->zzc:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzadr;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzafk;->a:J

    add-long/2addr v0, v4

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzadr;->zzb:J

    invoke-direct {p2, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    invoke-direct {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v2
.end method
