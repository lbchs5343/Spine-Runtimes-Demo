.class public final Lg/aqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfka;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzdhj;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzenp;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzenh;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzfkl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzenp;Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzdhj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/aqo;->d:Lcom/google/android/gms/internal/ads/zzenh;

    iput-object p3, p0, Lg/aqo;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    iput-object p4, p0, Lg/aqo;->a:Lcom/google/android/gms/internal/ads/zzfka;

    iput-object p5, p0, Lg/aqo;->b:Lcom/google/android/gms/internal/ads/zzdhj;

    iput-object p1, p0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfH:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/agd;->h()Z

    :cond_0
    iget-object v0, p0, Lg/aqo;->b:Lcom/google/android/gms/internal/ads/zzdhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhj;->zza()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcsy;->zza(Ljava/lang/Throwable;)Lg/abz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhj;->zzb()Lcom/google/android/gms/internal/ads/zzcwo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwo;->zzdB(Lg/abz;)V

    iget-object v0, p0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzenp;->e:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzenn;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzenn;-><init>(Lg/aqo;Lg/abz;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v2, v1, Lg/abz;->zza:I

    const-string v3, "NativeAdLoader.onFailure"

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfgl;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v2, p0, Lg/aqo;->d:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzenh;->zza()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lg/aqo;->a:Lcom/google/android/gms/internal/ads/zzfka;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lg/aqo;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzc(Lg/abz;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzenp;->b:Lcom/google/android/gms/internal/ads/zzfko;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzfka;->zza(Lg/abz;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrq;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzo()Lcom/google/android/gms/internal/ads/zzdas;

    move-result-object v1

    iget-object v2, p0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzenp;->a:Lcom/google/android/gms/internal/ads/zzenf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzenf;->zzd()Lcom/google/android/gms/internal/ads/zzems;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdas;->zza(Lcom/google/android/gms/internal/ads/zzems;)Lcom/google/android/gms/internal/ads/zzdas;

    iget-object v1, p0, Lg/aqo;->d:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzenh;->zzb(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzenp;->e:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzenm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzenm;-><init>(Lg/aqo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/aqo;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzq()Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfkl;->zzg(Lcom/google/android/gms/internal/ads/zzffe;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p1, p0, Lg/aqo;->a:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzenp;->b:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v3, p0, Lg/aqo;->a:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzq()Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfka;->zzb(Lcom/google/android/gms/internal/ads/zzffe;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
