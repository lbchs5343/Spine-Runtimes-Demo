.class public final Lcom/google/android/gms/internal/ads/zzdhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdhe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdhe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdhe;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzdjj;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhe;->zzb()Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgf;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhh;->zzc(Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhh;->zzc(Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object v0

    return-object v0
.end method
