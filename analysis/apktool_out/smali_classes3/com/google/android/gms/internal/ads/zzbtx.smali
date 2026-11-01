.class public final Lcom/google/android/gms/internal/ads/zzbtx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/zzbzh;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lg/bme;

.field public final e:Lg/qo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/bme;Lg/qo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtx;->d:Lg/bme;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtx;->e:Lg/qo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtx;->b:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzh;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzbtx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbtx;->a:Lcom/google/android/gms/internal/ads/zzbzh;

    if-nez v1, :cond_0

    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->e:Lg/ph;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/bun;

    invoke-direct {v1, p0, v2}, Lg/bun;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbzh;

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbtx;->a:Lcom/google/android/gms/internal/ads/zzbzh;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbtx;->a:Lcom/google/android/gms/internal/ads/zzbzh;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Lg/emg;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbtx;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbtx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzh;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v2, "Internal Error, query info generator is null."

    invoke-virtual {v1, v2}, Lg/emg;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v4, Lg/bpp;

    invoke-direct {v4, v2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbtx;->e:Lg/qo;

    if-nez v5, :cond_1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lg/ddh;->DEFAULT:Lg/ddh;

    invoke-virtual {v2}, Lg/ddh;->b()I

    move-result v28

    new-instance v2, Lg/aeh;

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object v5, v3

    const/16 v3, 0x8

    move-object v9, v4

    move-object v7, v5

    const-wide/16 v4, -0x1

    move-object v10, v7

    const/4 v7, -0x1

    move-object v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, -0x1

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move-object/from16 v20, v15

    const/4 v15, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v23, v20

    const/16 v20, 0x0

    move-object/from16 v24, v21

    const/16 v21, 0x0

    move-object/from16 v26, v24

    const/16 v24, 0x0

    move-object/from16 v31, v26

    const v26, 0xea60

    move-object/from16 v32, v23

    move/from16 v23, v10

    move-object/from16 v33, v31

    move-object/from16 v34, v32

    invoke-direct/range {v2 .. v30}, Lg/aeh;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    goto :goto_0

    :cond_1
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-wide/from16 v3, v29

    iput-wide v3, v5, Lg/qo;->h:J

    invoke-static {v2, v5}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzl;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbtx;->d:Lg/bme;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbtx;->b:Ljava/lang/String;

    invoke-direct {v3, v6, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzbzl;-><init>(Ljava/lang/String;Ljava/lang/String;Lg/eno;Lg/aeh;)V

    :try_start_0
    new-instance v2, Lg/xe;

    invoke-direct {v2, v1}, Lg/xe;-><init>(Lg/emg;)V

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    invoke-interface {v14, v15, v3, v2}, Lcom/google/android/gms/internal/ads/zzbzh;->zzf(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v2, "Internal Error."

    invoke-virtual {v1, v2}, Lg/emg;->d(Ljava/lang/String;)V

    return-void
.end method
