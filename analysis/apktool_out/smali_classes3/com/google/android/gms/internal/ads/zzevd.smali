.class public final synthetic Lcom/google/android/gms/internal/ads/zzevd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdo;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzevg;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/util/List;

.field public final synthetic zzd:Landroid/os/Bundle;

.field public final synthetic zze:Z

.field public final synthetic zzf:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzevg;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevd;->zza:Lcom/google/android/gms/internal/ads/zzevg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzd:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzevd;->zze:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzf:Z

    return-void
.end method


# virtual methods
.method public final zza()Lg/dcy;
    .locals 13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevd;->zza:Lcom/google/android/gms/internal/ads/zzevg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzc:Ljava/util/List;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzd:Landroid/os/Bundle;

    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzevd;->zze:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzevd;->zzf:Z

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzevg;->e:Lcom/google/android/gms/internal/ads/zzelk;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzbK:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzelk;->zzb(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzelk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbrf;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzevg;->i:Lcom/google/android/gms/internal/ads/zzdqd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdqd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbrf;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    move-object v4, v6

    :goto_1
    if-nez v4, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzbA:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzelr;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcao;)V

    move-object v0, v5

    goto/16 :goto_2

    :cond_1
    throw v6

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzelr;

    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->v:Lg/czz;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzelr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrf;Lcom/google/android/gms/internal/ads/zzcao;J)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzbF:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v6, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzevg;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzevf;

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/zzevf;-><init>(Lcom/google/android/gms/internal/ads/zzelr;)V

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbcn;->zzby:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v10, v11, v12}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    if-eqz v9, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzbM:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzevg;->d:Lcom/google/android/gms/internal/ads/zzges;

    move-object v10, v2

    move-object v2, v4

    move-object v4, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzevc;

    move-object v6, v5

    move-object v3, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzevc;-><init>(Lcom/google/android/gms/internal/ads/zzevg;Lcom/google/android/gms/internal/ads/zzbrf;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzelr;Lcom/google/android/gms/internal/ads/zzcao;)V

    move-object v1, v0

    move-object v0, v6

    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/zzges;->zza(Ljava/lang/Runnable;)Lg/dcy;

    goto :goto_2

    :cond_4
    move-object v10, v2

    move-object v2, v4

    move-object v3, v8

    move-object v4, v0

    move-object v0, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzevg;->b:Landroid/content/Context;

    move-object v6, v5

    new-instance v5, Lg/bpp;

    invoke-direct {v5, v6}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/os/Bundle;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzevg;->f:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzevg;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    move-object v4, v2

    move-object v7, v3

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzbrf;->zzh(Lg/bjq;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lg/eno;Lcom/google/android/gms/internal/ads/zzbri;)V

    goto :goto_2

    :cond_5
    move-object v10, v2

    move-object v0, v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzelr;->zzd()V

    :goto_2
    return-object v0
.end method
