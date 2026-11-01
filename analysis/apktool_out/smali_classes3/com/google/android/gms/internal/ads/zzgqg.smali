.class public final Lcom/google/android/gms/internal/ads/zzgqg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzgqe;

.field public static final b:Lcom/google/android/gms/internal/ads/zzgqf;

.field public static final c:Lcom/google/android/gms/internal/ads/zzgom;

.field public static final d:I

.field public static final e:Lcom/google/android/gms/internal/ads/zzgom;

.field public static final f:Lcom/google/android/gms/internal/ads/zzgfx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqc;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgpv;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgqb;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgom;->zzb(Lcom/google/android/gms/internal/ads/zzgok;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgom;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->c:Lcom/google/android/gms/internal/ads/zzgom;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqd;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzggi;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgom;->zzb(Lcom/google/android/gms/internal/ads/zzgok;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgom;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->e:Lcom/google/android/gms/internal/ads/zzgom;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgty;->zzb:Lcom/google/android/gms/internal/ads/zzgty;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtq;->zzi()Lcom/google/android/gms/internal/ads/zzhaq;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgmx;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgty;Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzgfx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->f:Lcom/google/android/gms/internal/ads/zzgfx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->a:Lcom/google/android/gms/internal/ads/zzgqe;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->b:Lcom/google/android/gms/internal/ads/zzgqf;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzgqg;->d:I

    return-void
.end method

.method public static zza(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget p0, Lcom/google/android/gms/internal/ads/zzgqg;->d:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmh;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgrl;->c:Lcom/google/android/gms/internal/ads/zzgmm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnz;->zzc()Lcom/google/android/gms/internal/ads/zzgnz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrl;->zze(Lcom/google/android/gms/internal/ads/zzgnz;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnw;->zza()Lcom/google/android/gms/internal/ads/zzgnw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->c:Lcom/google/android/gms/internal/ads/zzgom;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnw;->zze(Lcom/google/android/gms/internal/ads/zzgom;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnw;->zza()Lcom/google/android/gms/internal/ads/zzgnw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->e:Lcom/google/android/gms/internal/ads/zzgom;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnw;->zze(Lcom/google/android/gms/internal/ads/zzgom;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zzb()Lcom/google/android/gms/internal/ads/zzgnv;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "HMAC_SHA256_128BITTAG"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqy;->zza:Lcom/google/android/gms/internal/ads/zzgql;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgqj;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgqi;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v7, "HMAC_SHA256_128BITTAG_RAW"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgqj;->zza:Lcom/google/android/gms/internal/ads/zzgqj;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v8, "HMAC_SHA256_256BITTAG"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v6, "HMAC_SHA256_256BITTAG_RAW"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    const/16 v6, 0x40

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzgqi;->zze:Lcom/google/android/gms/internal/ads/zzgqi;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v9, "HMAC_SHA512_128BITTAG"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v4, "HMAC_SHA512_128BITTAG_RAW"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v4, "HMAC_SHA512_256BITTAG"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v3, "HMAC_SHA512_256BITTAG_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMAC_SHA512_512BITTAG"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqy;->zzb:Lcom/google/android/gms/internal/ads/zzgql;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v2

    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnp;->zzb()Lcom/google/android/gms/internal/ads/zzgnp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->b:Lcom/google/android/gms/internal/ads/zzgqf;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgql;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgnp;->zzc(Lcom/google/android/gms/internal/ads/zzgno;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnr;->zza()Lcom/google/android/gms/internal/ads/zzgnr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->a:Lcom/google/android/gms/internal/ads/zzgqe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgnr;->zzb(Lcom/google/android/gms/internal/ads/zzgnq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmo;->zzc()Lcom/google/android/gms/internal/ads/zzgmo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->f:Lcom/google/android/gms/internal/ads/zzgfx;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgmo;->zzf(Lcom/google/android/gms/internal/ads/zzgfx;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
