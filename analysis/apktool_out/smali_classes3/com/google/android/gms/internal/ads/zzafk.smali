.class public final Lcom/google/android/gms/internal/ads/zzafk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/zzacu;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzacu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method


# virtual methods
.method public final zzD()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 1

    new-instance v0, Lg/adv;

    invoke-direct {v0, p0, p1, p1}, Lg/adv;-><init>(Lcom/google/android/gms/internal/ads/zzafk;Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzadq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    return-void
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzadx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    return-object p1
.end method
