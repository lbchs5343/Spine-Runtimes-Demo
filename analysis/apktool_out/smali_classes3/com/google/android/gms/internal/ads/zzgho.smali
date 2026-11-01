.class public final synthetic Lcom/google/android/gms/internal/ads/zzgho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgno;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzggj;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgfw;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzght;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzghp;->a:Lcom/google/android/gms/internal/ads/zzgom;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzght;->zzc()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghk;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzghk;->zzc(Lcom/google/android/gms/internal/ads/zzght;)Lcom/google/android/gms/internal/ads/zzghk;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzghk;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzghk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzght;->zzc()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc(I)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzghk;->zzb(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzghk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghk;->zzd()Lcom/google/android/gms/internal/ads/zzghm;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
