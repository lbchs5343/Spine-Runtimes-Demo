.class public final synthetic Lcom/google/android/gms/internal/ads/zzfbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfbq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbm;->zza:Lcom/google/android/gms/internal/ads/zzfbq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbm;->zza:Lcom/google/android/gms/internal/ads/zzfbq;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfhv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfhv;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Lcom/google/android/gms/internal/ads/zzfhx;

    if-eqz v1, :cond_0

    check-cast v1, Lg/vv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb;->zzd()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza;->zza()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;->zzf(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze;->zzi()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;->zzh(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;->zzd(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbbs$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfhv;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcvt;->zzb()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcsy;->zzc()Lcom/google/android/gms/internal/ads/zzdbt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzdbt;->zzm(Lcom/google/android/gms/internal/ads/zzbbs$zzb;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfhv;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v1, v1, Lg/vv;->e:Lcom/google/android/gms/internal/ads/zzfcl;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfbq;->g(Lcom/google/android/gms/internal/ads/zzfhl;Lcom/google/android/gms/internal/ads/zzfcl;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdwn;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(ILjava/lang/String;)V

    throw p1
.end method
