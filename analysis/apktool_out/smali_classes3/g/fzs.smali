.class public final Lg/fzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeiv;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfet;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzfln;

.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/internal/ads/zzfew;

.field public final synthetic g:Lcom/google/android/gms/internal/ads/zzfff;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeiv;JLcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzfet;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfln;Lcom/google/android/gms/internal/ads/zzfff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lg/fzs;->e:J

    iput-object p4, p0, Lg/fzs;->f:Lcom/google/android/gms/internal/ads/zzfew;

    iput-object p5, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p6, p0, Lg/fzs;->c:Ljava/lang/String;

    iput-object p7, p0, Lg/fzs;->d:Lcom/google/android/gms/internal/ads/zzfln;

    iput-object p8, p0, Lg/fzs;->g:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p1, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 12

    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeiv;->d:Lg/cvb;

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lg/fzs;->e:J

    sub-long v8, v0, v2

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    move-object v3, v2

    const/4 v7, 0x2

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeid;

    if-eqz v0, :cond_1

    move-object v3, v2

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    move-object v3, v2

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzffv;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    move-object v3, v2

    const/4 v7, 0x5

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdwn;

    const/4 v3, 0x6

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/lang/Throwable;)Lg/abz;

    move-result-object v0

    iget v0, v0, Lg/abz;->zza:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzbI:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzeff;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeff;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeff;->zzb()Lg/abz;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v3, v3, Lg/abz;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v7, v0

    goto :goto_1

    :cond_5
    move v7, v0

    move-object v3, v2

    goto :goto_1

    :cond_6
    move-object v3, v2

    const/4 v7, 0x6

    :goto_1
    iget-object v11, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzeiv;->c:Z

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeiv;->g:Lcom/google/android/gms/internal/ads/zzeix;

    iget-object v5, p0, Lg/fzs;->f:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v6, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeff;

    if-eqz v0, :cond_7

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeff;

    :cond_7
    move-wide v9, v8

    move-object v8, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :goto_2
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeix;->zza(Lcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzfet;ILcom/google/android/gms/internal/ads/zzeff;J)V

    move-wide v8, v9

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhY:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeiv;->h:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v2, p0, Lg/fzs;->d:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v4, p0, Lg/fzs;->g:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v5, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzfet;->zzn:Ljava/util/List;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfln;->zzc(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzflr;->zzd(Ljava/util/List;)V

    :cond_9
    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzeiv;->i:Z

    if-eqz v2, :cond_a

    monitor-exit v11

    return-void

    :cond_a
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeiv;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    new-instance v4, Lg/fow;

    iget-object v5, p0, Lg/fzs;->c:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzfet;->zzaf:Ljava/lang/String;

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lg/fow;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/lang/Throwable;)Lg/abz;

    move-result-object p1

    iget v0, p1, Lg/abz;->zza:I

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p1, Lg/abz;->zzd:Lg/abz;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lg/abz;->zzc:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeff;

    iget-object p1, p1, Lg/abz;->zzd:Lg/abz;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeff;-><init>(ILg/abz;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/lang/Throwable;)Lg/abz;

    move-result-object p1

    :cond_c
    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeiv;->e:Lcom/google/android/gms/internal/ads/zzefg;

    iget-object v1, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v0, v1, v8, v9, p1}, Lcom/google/android/gms/internal/ads/zzefg;->zzf(Lcom/google/android/gms/internal/ads/zzfet;JLg/abz;)V

    monitor-exit v11

    return-void

    :goto_3
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 11

    iget-object p1, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeiv;->d:Lg/cvb;

    check-cast p1, Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lg/fzs;->e:J

    sub-long v8, v0, v2

    iget-object p1, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeiv;->c:Z

    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeiv;->g:Lcom/google/android/gms/internal/ads/zzeix;

    iget-object v5, p0, Lg/fzs;->f:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v6, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    const/4 v7, 0x0

    move-wide v9, v8

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeix;->zza(Lcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzfet;ILcom/google/android/gms/internal/ads/zzeff;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-wide v9, v8

    :goto_0
    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeiv;->i:Z

    if-eqz v1, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    iget-object v1, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiv;->j(Lcom/google/android/gms/internal/ads/zzeiv;Lcom/google/android/gms/internal/ads/zzfet;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeiv;->b:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fow;

    iput-wide v9, v0, Lg/fow;->a:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeiv;->b:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    new-instance v4, Lg/fow;

    iget-object v5, p0, Lg/fzs;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzaf:Ljava/lang/String;

    const/4 v7, 0x0

    move-wide v8, v9

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lg/fow;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    move-wide v9, v8

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lg/fzs;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeiv;->e:Lcom/google/android/gms/internal/ads/zzefg;

    iget-object v1, p0, Lg/fzs;->b:Lcom/google/android/gms/internal/ads/zzfet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzefg;->zzg(Lcom/google/android/gms/internal/ads/zzfet;JLg/abz;)V

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
