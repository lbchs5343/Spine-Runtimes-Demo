.class public final synthetic Lcom/google/android/gms/internal/ads/zzgjb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgok;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgfw;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjl;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjc;->a:Lcom/google/android/gms/internal/ads/zzgfx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjl;->zzb()Lcom/google/android/gms/internal/ads/zzgjq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjq;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjl;->zzb()Lcom/google/android/gms/internal/ads/zzgjq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjq;->zzb()Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzggh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggg;->zzb()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiz;->b:[B

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggp;->zzb(Lcom/google/android/gms/internal/ads/zzggj;)[B

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyh;->zza()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgue;->zzf([BLcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgue;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgiz;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzgiz;-><init>(Lcom/google/android/gms/internal/ads/zzgue;Lcom/google/android/gms/internal/ads/zzgfm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjl;->zzc()Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzglx;->zzc(Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzgwu;)Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
