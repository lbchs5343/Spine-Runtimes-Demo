.class public final Lg/fhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfka;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzdgn;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzfcw;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzenh;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzfkl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzdgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/fhp;->d:Lcom/google/android/gms/internal/ads/zzenh;

    iput-object p3, p0, Lg/fhp;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    iput-object p4, p0, Lg/fhp;->a:Lcom/google/android/gms/internal/ads/zzfka;

    iput-object p5, p0, Lg/fhp;->b:Lcom/google/android/gms/internal/ads/zzdgn;

    iput-object p1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfH:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/agd;->h()Z

    :cond_0
    iget-object v0, p0, Lg/fhp;->b:Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgn;->zza()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsy;->zza(Ljava/lang/Throwable;)Lg/abz;

    move-result-object v0

    iget-object v2, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzfcw;->f:Lg/dcy;

    iget-object v3, p0, Lg/fhp;->b:Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdgn;->zzb()Lcom/google/android/gms/internal/ads/zzcwo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzcwo;->zzdB(Lg/abz;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzhQ:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->g:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfcr;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzfcr;-><init>(Lg/fhp;Lg/abz;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->g:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfcs;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzfcs;-><init>(Lg/fhp;Lg/abz;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget v1, v0, Lg/abz;->zza:I

    const-string v3, "InterstitialAdLoader.onFailure"

    invoke-static {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzfgl;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lg/fhp;->d:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzenh;->zza()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/fhp;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zzc(Lg/abz;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v0, p0, Lg/fhp;->a:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->i:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v4, p0, Lg/fhp;->a:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzfka;->zza(Lg/abz;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfj;

    iget-object v0, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzfcw;->f:Lg/dcy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhQ:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzo()Lcom/google/android/gms/internal/ads/zzdas;

    move-result-object v3

    iget-object v4, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcw;->b:Lcom/google/android/gms/internal/ads/zzems;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdas;->zza(Lcom/google/android/gms/internal/ads/zzems;)Lcom/google/android/gms/internal/ads/zzdas;

    iget-object v4, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcw;->c:Lcom/google/android/gms/internal/ads/zzfdw;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdas;->zzd(Lcom/google/android/gms/internal/ads/zzfdw;)Lcom/google/android/gms/internal/ads/zzdas;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lg/fhp;->d:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzenh;->zzb(Ljava/lang/Object;)V

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfct;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfct;-><init>(Lg/fhp;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfcu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfcu;-><init>(Lg/fhp;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/fhp;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzq()Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfkl;->zzg(Lcom/google/android/gms/internal/ads/zzffe;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p1, p0, Lg/fhp;->a:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->i:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v3, p0, Lg/fhp;->a:Lcom/google/android/gms/internal/ads/zzfka;

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

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
