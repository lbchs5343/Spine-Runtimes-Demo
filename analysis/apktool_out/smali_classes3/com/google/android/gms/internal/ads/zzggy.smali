.class public final Lcom/google/android/gms/internal/ads/zzggy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/google/android/gms/internal/ads/zzghj;

.field public c:Lcom/google/android/gms/internal/ads/zzgwv;

.field public d:Lcom/google/android/gms/internal/ads/zzgwv;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->c:Lcom/google/android/gms/internal/ads/zzgwv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->d:Lcom/google/android/gms/internal/ads/zzgwv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzggy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggy;->c:Lcom/google/android/gms/internal/ads/zzgwv;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzggy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggy;->d:Lcom/google/android/gms/internal/ads/zzgwv;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzggy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggy;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzghj;)Lcom/google/android/gms/internal/ads/zzggy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgha;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggy;->c:Lcom/google/android/gms/internal/ads/zzgwv;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggy;->d:Lcom/google/android/gms/internal/ads/zzgwv;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zzb()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwv;->zza()I

    move-result v1

    if-ne v2, v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zzc()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggy;->d:Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwv;->zza()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->a:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zzh()Lcom/google/android/gms/internal/ads/zzghh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghh;->zzc:Lcom/google/android/gms/internal/ads/zzghh;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:Lcom/google/android/gms/internal/ads/zzgwu;

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zzh()Lcom/google/android/gms/internal/ads/zzghh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghh;->zzb:Lcom/google/android/gms/internal/ads/zzghh;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoa;->zza(I)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zzh()Lcom/google/android/gms/internal/ads/zzghh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghh;->zza:Lcom/google/android/gms/internal/ads/zzghh;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoa;->zzb(I)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgha;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggy;->c:Lcom/google/android/gms/internal/ads/zzgwv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzggy;->d:Lcom/google/android/gms/internal/ads/zzgwv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzggy;->a:Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgha;-><init>(Lcom/google/android/gms/internal/ads/zzghj;Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgwu;Ljava/lang/Integer;)V

    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggy;->b:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghj;->zzh()Lcom/google/android/gms/internal/ads/zzghh;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown AesCtrHmacAeadParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
