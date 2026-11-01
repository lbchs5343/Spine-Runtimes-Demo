.class public final Lcom/google/android/gms/internal/ads/zzeot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevz;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzeov;

.field public final b:Lcom/google/android/gms/internal/ads/zzges;

.field public final c:Lcom/google/android/gms/internal/ads/zzdqd;

.field public final d:Lcom/google/android/gms/internal/ads/zzdup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzdqd;Lcom/google/android/gms/internal/ads/zzdup;Lcom/google/android/gms/internal/ads/zzeov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeot;->b:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeot;->c:Lcom/google/android/gms/internal/ads/zzdqd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeot;->d:Lcom/google/android/gms/internal/ads/zzdup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeot;->a:Lcom/google/android/gms/internal/ads/zzeov;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb()Lg/dcy;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzlo:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeot;->a:Lcom/google/android/gms/internal/ads/zzeov;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzeov;->b:Lcom/google/android/gms/internal/ads/zzeou;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzbx:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfxf;->zzd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeov;->zzd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeot;->d:Lcom/google/android/gms/internal/ads/zzdup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdup;->zzt()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzeov;->zzc(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeos;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeos;-><init>(Lcom/google/android/gms/internal/ads/zzeot;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeot;->b:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeou;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeou;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method
