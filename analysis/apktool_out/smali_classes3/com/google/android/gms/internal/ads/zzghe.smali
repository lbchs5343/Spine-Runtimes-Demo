.class public final Lcom/google/android/gms/internal/ads/zzghe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzghd;

.field public static final b:I

.field public static final c:Lcom/google/android/gms/internal/ads/zzgom;

.field public static final d:Lcom/google/android/gms/internal/ads/zzgfx;

.field public static final e:Lcom/google/android/gms/internal/ads/zzghc;

.field public static final synthetic zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghb;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgha;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgom;->zzb(Lcom/google/android/gms/internal/ads/zzgok;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgom;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghe;->c:Lcom/google/android/gms/internal/ads/zzgom;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgty;->zzb:Lcom/google/android/gms/internal/ads/zzgty;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrz;->zzh()Lcom/google/android/gms/internal/ads/zzhaq;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgmx;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgty;Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzgfx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghe;->d:Lcom/google/android/gms/internal/ads/zzgfx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghe;->e:Lcom/google/android/gms/internal/ads/zzghc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghe;->a:Lcom/google/android/gms/internal/ads/zzghd;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzghe;->b:I

    return-void
.end method

.method public static zza(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/internal/ads/zzghe;->b:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmh;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkr;->b:Lcom/google/android/gms/internal/ads/zzgoi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnz;->zzc()Lcom/google/android/gms/internal/ads/zzgnz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkr;->zze(Lcom/google/android/gms/internal/ads/zzgnz;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnw;->zza()Lcom/google/android/gms/internal/ads/zzgnw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghe;->c:Lcom/google/android/gms/internal/ads/zzgom;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnw;->zze(Lcom/google/android/gms/internal/ads/zzgom;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zzb()Lcom/google/android/gms/internal/ads/zzgnv;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_CTR_HMAC_SHA256"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgkd;->zze:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzghf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzghf;-><init>()V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzghf;->zza(I)Lcom/google/android/gms/internal/ads/zzghf;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghf;->zzc(I)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzghf;->zze(I)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzghf;->zzd(I)Lcom/google/android/gms/internal/ads/zzghf;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzghg;->zzc:Lcom/google/android/gms/internal/ads/zzghg;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzghf;->zzb(Lcom/google/android/gms/internal/ads/zzghg;)Lcom/google/android/gms/internal/ads/zzghf;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzghh;->zzc:Lcom/google/android/gms/internal/ads/zzghh;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzghf;->zzf(Lcom/google/android/gms/internal/ads/zzghh;)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghf;->zzg()Lcom/google/android/gms/internal/ads/zzghj;

    move-result-object v2

    const-string v7, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_CTR_HMAC_SHA256"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgkd;->zzf:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzghf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzghf;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghf;->zza(I)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghf;->zzc(I)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghf;->zze(I)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzghf;->zzd(I)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzghf;->zzb(Lcom/google/android/gms/internal/ads/zzghg;)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzghf;->zzf(Lcom/google/android/gms/internal/ads/zzghh;)Lcom/google/android/gms/internal/ads/zzghf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghf;->zzg()Lcom/google/android/gms/internal/ads/zzghj;

    move-result-object v2

    const-string v3, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnr;->zza()Lcom/google/android/gms/internal/ads/zzgnr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghe;->e:Lcom/google/android/gms/internal/ads/zzghc;

    const-class v2, Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgnr;->zzb(Lcom/google/android/gms/internal/ads/zzgnq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnp;->zzb()Lcom/google/android/gms/internal/ads/zzgnp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghe;->a:Lcom/google/android/gms/internal/ads/zzghd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgnp;->zzc(Lcom/google/android/gms/internal/ads/zzgno;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmo;->zzc()Lcom/google/android/gms/internal/ads/zzgmo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghe;->d:Lcom/google/android/gms/internal/ads/zzgfx;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgmo;->zzf(Lcom/google/android/gms/internal/ads/zzgfx;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
