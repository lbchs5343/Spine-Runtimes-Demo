.class public final Lcom/google/android/gms/internal/ads/zzcoy;
.super Lcom/google/android/gms/internal/ads/zzbae;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfar;

.field public b:Z

.field public final c:Lcom/google/android/gms/internal/ads/zzdsm;

.field public final d:Lcom/google/android/gms/internal/ads/zzcox;

.field public final e:Lg/deq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcox;Lg/deq;Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzdsm;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbae;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaO:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoy;->d:Lcom/google/android/gms/internal/ads/zzcox;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoy;->e:Lg/deq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoy;->a:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoy;->c:Lcom/google/android/gms/internal/ads/zzdsm;

    return-void
.end method


# virtual methods
.method public final zze()Lg/deq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->e:Lg/deq;

    return-object v0
.end method

.method public final zzf()Lg/gcq;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzgD:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->d:Lcom/google/android/gms/internal/ads/zzcox;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcoy;->b:Z

    return-void
.end method

.method public final zzh(Lg/gwt;)V
    .locals 2

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lg/gwt;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoy;->c:Lcom/google/android/gms/internal/ads/zzdsm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfar;->zzn(Lg/gwt;)V

    :cond_1
    return-void
.end method

.method public final zzi(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbam;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->a:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfar;->zzp(Lcom/google/android/gms/internal/ads/zzbam;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoy;->d:Lcom/google/android/gms/internal/ads/zzcox;

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcoy;->b:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcox;->zzd(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbam;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
