.class public Lcom/google/android/gms/internal/ads/zzade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzadq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzade;->a:Lcom/google/android/gms/internal/ads/zzadq;

    return-void
.end method


# virtual methods
.method public zza()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->a:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadq;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->a:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadq;->zzg(J)Lcom/google/android/gms/internal/ads/zzado;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->a:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-result v0

    return v0
.end method
