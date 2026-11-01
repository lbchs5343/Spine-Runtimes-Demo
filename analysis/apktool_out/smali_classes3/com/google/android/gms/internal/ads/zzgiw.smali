.class public final synthetic Lcom/google/android/gms/internal/ads/zzgiw;
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
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgiy;->a:Lcom/google/android/gms/internal/ads/zzgom;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb()Lcom/google/android/gms/internal/ads/zzgjf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjf;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzggh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggg;->zzb()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc()Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzglx;->zzc(Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzgwu;)Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object p1

    return-object p1
.end method
