.class public final Lcom/google/android/gms/internal/ads/zzckf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzcke;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckf;->a:Lcom/google/android/gms/internal/ads/zzcke;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcke;)Lg/gfo;
    .locals 2

    new-instance p0, Lg/gfo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcdc;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcbx;-><init>()V

    invoke-direct {p0, v0, v1}, Lg/gfo;-><init>(Lcom/google/android/gms/internal/ads/zzcdc;Lcom/google/android/gms/internal/ads/zzcbx;)V

    return-object p0
.end method


# virtual methods
.method public final zza()Lg/gfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckf;->a:Lcom/google/android/gms/internal/ads/zzcke;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckf;->zzc(Lcom/google/android/gms/internal/ads/zzcke;)Lg/gfo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckf;->a:Lcom/google/android/gms/internal/ads/zzcke;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckf;->zzc(Lcom/google/android/gms/internal/ads/zzcke;)Lg/gfo;

    move-result-object v0

    return-object v0
.end method
