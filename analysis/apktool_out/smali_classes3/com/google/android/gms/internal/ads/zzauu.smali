.class public final Lcom/google/android/gms/internal/ads/zzauu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaux;


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/zzauu;


# instance fields
.field public final b:Lg/fc;

.field public volatile c:Z

.field public final d:Ljava/util/concurrent/Executor;

.field public volatile e:Z

.field public final f:Lcom/google/android/gms/internal/ads/zzawo;

.field public final g:Lcom/google/android/gms/internal/ads/zzfrl;

.field public final h:Lcom/google/android/gms/internal/ads/zzavx;

.field public final i:Lcom/google/android/gms/internal/ads/zzawg;

.field public final j:Lcom/google/android/gms/internal/ads/zzfrn;

.field public final k:Lg/gxv;

.field public final l:Landroid/content/Context;

.field public final m:Ljava/util/concurrent/CountDownLatch;

.field public final n:Lcom/google/android/gms/internal/ads/zzfre;

.field public final o:Ljava/lang/Object;

.field public final p:I

.field public volatile q:J

.field public final r:Lcom/google/android/gms/internal/ads/zzfpp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfre;Lcom/google/android/gms/internal/ads/zzfrl;Lcom/google/android/gms/internal/ads/zzfrn;Lg/gxv;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfpk;ILcom/google/android/gms/internal/ads/zzawo;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzavx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->q:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauu;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzauu;->n:Lcom/google/android/gms/internal/ads/zzfre;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzauu;->g:Lcom/google/android/gms/internal/ads/zzfrl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzauu;->k:Lg/gxv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzauu;->d:Ljava/util/concurrent/Executor;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzauu;->p:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzauu;->f:Lcom/google/android/gms/internal/ads/zzawo;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzauu;->i:Lcom/google/android/gms/internal/ads/zzawg;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzauu;->h:Lcom/google/android/gms/internal/ads/zzavx;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->c:Z

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauu;->m:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lg/fc;

    const/16 p2, 0x1a

    invoke-direct {p1, p2, p8}, Lg/fc;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauu;->b:Lg/fc;

    return-void
.end method

.method public static s(Lcom/google/android/gms/internal/ads/zzauu;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauu;->u()Lcom/google/android/gms/internal/ads/zzfrd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrd;->zza()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayb;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrd;->zza()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzj()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v7, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v7, v3

    move-object v8, v7

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauu;->l:Landroid/content/Context;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzauu;->p:I

    const-string v9, "1"

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    const/4 v5, 0x1

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzfpz;->zza(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)Lcom/google/android/gms/internal/ads/zzfri;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfri;->zzb:[B

    if-eqz v3, :cond_b

    array-length v4, v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyh;->zza()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzaxy;->zzb(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxy;->zzc()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayb;->zzk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxy;->zzc()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayb;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxy;->zzd()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzA()[B

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauu;->u()Lcom/google/android/gms/internal/ads/zzfrd;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfrd;->zza()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxy;->zzc()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayb;->zzk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayb;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxy;->zzc()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayb;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayb;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauu;->b:Lg/fc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfri;->zzc:I

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzct:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v6, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->g:Lcom/google/android/gms/internal/ads/zzfrl;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfrl;->zza(Lcom/google/android/gms/internal/ads/zzaxy;)Z

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->g:Lcom/google/android/gms/internal/ads/zzfrl;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfrl;->zzb(Lcom/google/android/gms/internal/ads/zzaxy;Lcom/google/android/gms/internal/ads/zzfrk;)Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->n:Lcom/google/android/gms/internal/ads/zzfre;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfre;->zza(Lcom/google/android/gms/internal/ads/zzaxy;Lcom/google/android/gms/internal/ads/zzfrk;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0xfa9

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauu;->u()Lcom/google/android/gms/internal/ads/zzfrd;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfrn;->zzc(Lcom/google/android/gms/internal/ads/zzfrd;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->c:Z

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzauu;->q:J

    goto :goto_6

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0x1392

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;

    goto :goto_6

    :catch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0x7ee

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;

    goto :goto_6

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0x1391

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const/16 v1, 0xfa2

    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauu;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauu;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public static declared-synchronized t(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzfpr;Z)Lcom/google/android/gms/internal/ads/zzauu;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-class v13, Lcom/google/android/gms/internal/ads/zzauu;

    monitor-enter v13

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauu;->a:Lcom/google/android/gms/internal/ads/zzauu;

    if-nez v0, :cond_4

    move/from16 v0, p3

    invoke-static {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfpp;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzdv:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavi;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzavi;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v19, v4

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzdw:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v5, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1

    :cond_1
    move-object/from16 v20, v4

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcL:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v5, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawg;-><init>()V

    move-object/from16 v21, v0

    goto :goto_2

    :cond_2
    move-object/from16 v21, v4

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcS:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v5, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzavx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzavx;-><init>()V

    :cond_3
    move-object/from16 v15, p2

    move-object v12, v4

    invoke-static {v1, v7, v2, v15}, Lcom/google/android/gms/internal/ads/zzfqi;->zze(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfpr;)Lcom/google/android/gms/internal/ads/zzfqi;

    move-result-object v16

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzawm;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzawm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavy;)V

    new-instance v14, Lg/gxv;

    move-object/from16 v18, v0

    move-object/from16 v17, v4

    move-object/from16 v22, v12

    invoke-direct/range {v14 .. v22}, Lg/gxv;-><init>(Lcom/google/android/gms/internal/ads/zzfpr;Lcom/google/android/gms/internal/ads/zzfqi;Lcom/google/android/gms/internal/ads/zzawm;Lcom/google/android/gms/internal/ads/zzavy;Lcom/google/android/gms/internal/ads/zzavi;Lcom/google/android/gms/internal/ads/zzawo;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzavx;)V

    move-object/from16 v12, v22

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpp;)I

    move-result v9

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfpk;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfre;

    invoke-direct {v4, v1, v9}, Lcom/google/android/gms/internal/ads/zzfre;-><init>(Landroid/content/Context;I)V

    move-object v5, v4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfrl;

    new-instance v6, Lg/dcq;

    const/16 v10, 0x1a

    invoke-direct {v6, v10, v2}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbcn;->zzcv:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v4, v1, v9, v6, v3}, Lcom/google/android/gms/internal/ads/zzfrl;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfqs;Z)V

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-direct {v5, v1, v14, v2, v8}, Lcom/google/android/gms/internal/ads/zzfrn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfro;Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfpk;)V

    move-object v6, v14

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzauu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfre;Lcom/google/android/gms/internal/ads/zzfrl;Lcom/google/android/gms/internal/ads/zzfrn;Lg/gxv;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfpk;ILcom/google/android/gms/internal/ads/zzawo;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzavx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauu;->a:Lcom/google/android/gms/internal/ads/zzauu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauu;->v()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzauu;->a:Lcom/google/android/gms/internal/ads/zzauu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauu;->zzp()V

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauu;->a:Lcom/google/android/gms/internal/ads/zzauu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzarj;Z)Lcom/google/android/gms/internal/ads/zzauu;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzauu;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpr;->zzc()Lcom/google/android/gms/internal/ads/zzfpq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarj;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfpq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfpq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarj;->zzi()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfpq;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfpq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpq;->zzh()Lcom/google/android/gms/internal/ads/zzfpr;

    move-result-object p1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzauu;->t(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzfpr;Z)Lcom/google/android/gms/internal/ads/zzauu;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final u()Lcom/google/android/gms/internal/ads/zzfrd;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->p:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqr;->zza(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzct:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->g:Lcom/google/android/gms/internal/ads/zzfrl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrl;->zzc(I)Lcom/google/android/gms/internal/ads/zzfrd;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->n:Lcom/google/android/gms/internal/ads/zzfre;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfre;->zzc(I)Lcom/google/android/gms/internal/ads/zzfrd;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized v()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauu;->u()Lcom/google/android/gms/internal/ads/zzfrd;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfrn;->zzc(Lcom/google/android/gms/internal/ads/zzfrd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v0, 0xfad

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzauu;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauu;->f:Lcom/google/android/gms/internal/ads/zzawo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzh()V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzcL:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauu;->i:Lcom/google/android/gms/internal/ads/zzawg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzi()V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauu;->zzp()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfrn;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfps;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v12, v1, v8

    const/4 v15, 0x0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    const/16 v11, 0x1388

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzfpp;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lg/ci;

    return-object v14

    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->f:Lcom/google/android/gms/internal/ads/zzawo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzh()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcL:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->i:Lcom/google/android/gms/internal/ads/zzawg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawg;->zzj()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauu;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrn;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzfps;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v6, v3, v1

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    const/16 v5, 0x1389

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfpp;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lg/ci;

    return-object v8

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "19"

    return-object p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->f:Lcom/google/android/gms/internal/ads/zzawo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzh()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcL:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->i:Lcom/google/android/gms/internal/ads/zzawg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawg;->zzk(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauu;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrn;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, p2, p3}, Lcom/google/android/gms/internal/ads/zzfps;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long v6, p1, v1

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    const/16 v5, 0x138a

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfpp;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lg/ci;

    return-object v8

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrn;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfps;->zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfrm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfrm;->zza()I

    move-result v0

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;

    :cond_0
    return-void
.end method

.method public final zzl(III)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzlG:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauu;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v3

    move/from16 v4, p2

    int-to-float v4, v4

    mul-float v10, v4, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v3, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzauu;->zzk(Landroid/view/MotionEvent;)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v2, v4

    mul-float v11, v3, v4

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzauu;->zzk(Landroid/view/MotionEvent;)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v4, p3

    int-to-long v6, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v1

    mul-float v10, v3, v1

    const/16 v16, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzauu;->zzk(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->h:Lcom/google/android/gms/internal/ads/zzavx;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavx;->zzb(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->k:Lg/gxv;

    iget-object v0, v0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawm;->p(Landroid/view/View;)V

    return-void
.end method

.method public final zzp()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzauu;->e:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzauu;->q:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauu;->j:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfrn;->zzb()Lcom/google/android/gms/internal/ads/zzfrd;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfrd;->zzd(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzauu;->p:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfqr;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauu;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lg/dyn;

    const/16 v3, 0x17

    invoke-direct {v2, v3, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method public final declared-synchronized zzr()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
