.class public final Lcom/google/android/gms/internal/ads/zzcpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzhgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpk;Lcom/google/android/gms/internal/ads/zzhgp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpp;->a:Lcom/google/android/gms/internal/ads/zzhgp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcpk;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcpd;
    .locals 0

    check-cast p1, Lg/ezx;

    return-object p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcpd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpp;->a:Lcom/google/android/gms/internal/ads/zzhgp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcph;->zza()Lg/ezx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcpp;->zza()Lcom/google/android/gms/internal/ads/zzcpd;

    move-result-object v0

    return-object v0
.end method
