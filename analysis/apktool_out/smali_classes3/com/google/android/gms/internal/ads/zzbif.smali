.class public final Lcom/google/android/gms/internal/ads/zzbif;
.super Lcom/google/android/gms/internal/ads/zzbhl;
.source "SourceFile"


# instance fields
.field public final a:Lg/fdm;


# direct methods
.method public constructor <init>(Lg/fdm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->a:Lg/fdm;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbhv;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhw;-><init>(Lcom/google/android/gms/internal/ads/zzbhv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->a:Lg/fdm;

    check-cast p1, Lg/cca;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/fyz;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lg/efo;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzk()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->k:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzf()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzb()Lg/dqn;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->d:Lg/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zze()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzc()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->n:Ljava/lang/Double;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzd()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lg/efo;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/efo;->i:Z

    iput-boolean v2, v1, Lg/efo;->c:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zza()Lg/hl;

    move-result-object v0

    iput-object v0, v1, Lg/efo;->l:Lg/hl;

    iget-object v0, p1, Lg/cca;->f:Ljava/lang/Object;

    check-cast v0, Lg/ccj;

    iget-object p1, p1, Lg/cca;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p1, v1}, Lg/ccj;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lg/efo;)V

    return-void
.end method
