.class public final synthetic Lcom/google/android/gms/internal/ads/zzgji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmu;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgfw;Lcom/google/android/gms/internal/ads/zzggn;)Lcom/google/android/gms/internal/ads/zzgpb;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjd;

    sget-object p2, Lg/ggf;->b:Lcom/google/android/gms/internal/ads/zzgoi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguu;->zzb()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgux;->zza()Lcom/google/android/gms/internal/ads/zzguv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb()Lcom/google/android/gms/internal/ads/zzgjf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjf;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzguv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzguv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgux;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgus;->zza(Lcom/google/android/gms/internal/ads/zzgux;)Lcom/google/android/gms/internal/ads/zzgus;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzguu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgwy;->zzaN()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgty;->zze:Lcom/google/android/gms/internal/ads/zzgty;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb()Lcom/google/android/gms/internal/ads/zzgjf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjf;->zzb()Lcom/google/android/gms/internal/ads/zzgje;

    move-result-object v1

    invoke-static {v1}, Lg/ggf;->f(Lcom/google/android/gms/internal/ads/zzgje;)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-static {v2, p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgow;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgty;Lcom/google/android/gms/internal/ads/zzgve;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgow;

    move-result-object p1

    return-object p1
.end method
