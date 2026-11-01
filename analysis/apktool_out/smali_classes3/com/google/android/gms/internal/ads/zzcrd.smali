.class public final Lcom/google/android/gms/internal/ads/zzcrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcya;
.implements Lcom/google/android/gms/internal/ads/zzcxg;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzeeu;

.field public final b:Lcom/google/android/gms/internal/ads/zzfet;

.field public final c:Lg/akx;

.field public d:Lcom/google/android/gms/internal/ads/zzeew;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/zzcfk;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzfet;Lg/akx;Lcom/google/android/gms/internal/ads/zzeeu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrd;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrd;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcrd;->c:Lg/akx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcrd;->a:Lcom/google/android/gms/internal/ads/zzeeu;

    return-void
.end method


# virtual methods
.method public final declared-synchronized h()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzT:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->e:Landroid/content/Context;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v2, v1, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->c:Lg/akx;

    iget v2, v0, Lg/akx;->buddyApkVersion:I

    iget v0, v0, Lg/akx;->clientJarVersion:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzV:Lcom/google/android/gms/internal/ads/zzffr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffr;->zza()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffr;->zzc()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzees;->zzc:Lcom/google/android/gms/internal/ads/zzees;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzeet;->zzb:Lcom/google/android/gms/internal/ads/zzeet;

    move-object v11, v0

    move-object v10, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->b:Lcom/google/android/gms/internal/ads/zzfet;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzees;->zza:Lcom/google/android/gms/internal/ads/zzees;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zze:I

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeet;->zzc:Lcom/google/android/gms/internal/ads/zzeet;

    :goto_0
    move-object v10, v0

    move-object v11, v3

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeet;->zza:Lcom/google/android/gms/internal/ads/zzeet;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcrd;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v4, v1, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzal:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "javascript"

    invoke-interface/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzeer;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeet;Lcom/google/android/gms/internal/ads/zzees;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->d:Lcom/google/android/gms/internal/ads/zzeew;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcrd;->d:Lcom/google/android/gms/internal/ads/zzeew;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeew;->zza()Lcom/google/android/gms/internal/ads/zzfmw;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzfd:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v1, v1, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzj(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzj(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrd;->d:Lcom/google/android/gms/internal/ads/zzeew;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzat(Lcom/google/android/gms/internal/ads/zzeew;)V

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzeer;->zzk(Lcom/google/android/gms/internal/ads/zzfmw;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcrd;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    new-instance v1, Lg/tl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/bcp;-><init>(I)V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzr()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->a:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->a:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcrd;->h()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->d:Lcom/google/android/gms/internal/ads/zzeew;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_3

    new-instance v2, Lg/tl;

    invoke-direct {v2, v1}, Lg/bcp;-><init>(I)V

    const-string v1, "onSdkImpression"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzs()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->a:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->a:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcrd;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcrd;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
