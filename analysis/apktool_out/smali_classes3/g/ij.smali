.class public final Lg/ij;
.super Lcom/google/android/gms/internal/ads/zzi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzir;


# static fields
.field public static final synthetic b:I


# instance fields
.field public final aa:Lcom/google/android/gms/internal/ads/zzyk;

.field public final ab:Lcom/google/android/gms/internal/ads/zzds;

.field public final ac:Lcom/google/android/gms/internal/ads/zzdc;

.field public ad:Lcom/google/android/gms/internal/ads/zzee;

.field public ae:I

.field public af:Lcom/google/android/gms/internal/ads/zzba;

.field public final ag:Lcom/google/android/gms/internal/ads/zzbl;

.field public ah:J

.field public ai:Z

.field public aj:Lcom/google/android/gms/internal/ads/zzba;

.field public final ak:Lcom/google/android/gms/internal/ads/zzyj;

.field public final al:Lg/gdw;

.field public c:Landroid/view/Surface;

.field public final d:Lcom/google/android/gms/internal/ads/zzdm;

.field public final e:Lcom/google/android/gms/internal/ads/zzbt;

.field public f:I

.field public final g:Landroid/os/Looper;

.field public h:Ljava/lang/Object;

.field public i:Lg/gzx;

.field public final j:Lcom/google/android/gms/internal/ads/zzlw;

.field public final k:Lcom/google/android/gms/internal/ads/zzdf;

.field public l:F

.field public final m:Ljava/util/ArrayList;

.field public final n:Lcom/google/android/gms/internal/ads/zzlu;

.field public o:I

.field public final p:Z

.field public q:Z

.field public r:Lcom/google/android/gms/internal/ads/zzwj;

.field public s:Z

.field public t:Lcom/google/android/gms/internal/ads/zzbl;

.field public final u:[Lcom/google/android/gms/internal/ads/zzln;

.field public final v:Lcom/google/android/gms/internal/ads/zzjd;

.field public final w:J

.field public final x:Lcom/google/android/gms/internal/ads/zzyv;

.field public final y:Z

.field public final z:Lcom/google/android/gms/internal/ads/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzax;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzip;Lcom/google/android/gms/internal/ads/zzlu;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "Init "

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdf;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzdf;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    iput-object v4, v1, Lg/ij;->k:Lcom/google/android/gms/internal/ads/zzdf;

    :try_start_0
    const-string v5, "ExoPlayerImpl"

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzen;->zze:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [AndroidXMedia3/1.5.0-alpha01] ["

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzip;->h:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzip;->j:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzip;->a:Lcom/google/android/gms/internal/ads/zzin;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzip;->n:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzfwh;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/google/android/gms/internal/ads/zzlw;

    iput-object v14, v1, Lg/ij;->j:Lcom/google/android/gms/internal/ads/zzlw;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzip;->o:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzip;->b:Lcom/google/android/gms/internal/ads/zzg;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzip;->f:I

    const/4 v10, 0x0

    iput-boolean v10, v1, Lg/ij;->q:Z

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzip;->k:J

    iput-wide v11, v1, Lg/ij;->w:J

    new-instance v11, Lg/eec;

    invoke-direct {v11, v1}, Lg/eec;-><init>(Lg/ij;)V

    new-instance v12, Lg/czd;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Landroid/os/Handler;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzip;->m:Landroid/os/Looper;

    invoke-direct {v13, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzip;->r:Lcom/google/android/gms/internal/ads/zzii;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzii;->zza:Lcom/google/android/gms/internal/ads/zzcep;

    move-object/from16 v18, v11

    move-object/from16 v19, v11

    move-object/from16 v20, v11

    move-object/from16 v17, v11

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzcep;->zza(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabg;Lcom/google/android/gms/internal/ads/zzpn;Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zztp;)[Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v11

    iput-object v11, v1, Lg/ij;->u:[Lcom/google/android/gms/internal/ads/zzln;

    array-length v13, v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzip;->g:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzyj;

    iput-object v13, v1, Lg/ij;->ak:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzip;->e:Lcom/google/android/gms/internal/ads/zzij;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzij;->zza:Landroid/content/Context;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzue;

    move-object/from16 v24, v4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzacl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzacl;-><init>()V

    invoke-direct {v10, v15, v4}, Lcom/google/android/gms/internal/ads/zzue;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacw;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzip;->s:Lcom/google/android/gms/internal/ads/zzim;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzim;->zza:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzyv;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyv;

    move-result-object v4

    iput-object v4, v1, Lg/ij;->x:Lcom/google/android/gms/internal/ads/zzyv;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzip;->l:Z

    iput-boolean v10, v1, Lg/ij;->y:Z

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzip;->d:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzip;->m:Landroid/os/Looper;

    iput-object v10, v1, Lg/ij;->g:Landroid/os/Looper;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzip;->n:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v4, v1, Lg/ij;->ac:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v2, v1, Lg/ij;->n:Lcom/google/android/gms/internal/ads/zzlu;

    move/from16 v25, v7

    new-instance v7, Lcom/google/android/gms/internal/ads/zzds;

    move-object/from16 v20, v8

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lg/ij;)V

    invoke-direct {v7, v10, v4, v8}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdc;Lcom/google/android/gms/internal/ads/zzdq;)V

    iput-object v7, v1, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    move-object/from16 v21, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lg/ij;->m:Ljava/util/ArrayList;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzwj;

    move/from16 v22, v9

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(I)V

    iput-object v8, v1, Lg/ij;->r:Lcom/google/android/gms/internal/ads/zzwj;

    sget-object v23, Lcom/google/android/gms/internal/ads/zziq;->zza:Lcom/google/android/gms/internal/ads/zziq;

    move-object v9, v11

    new-instance v11, Lcom/google/android/gms/internal/ads/zzyk;

    const/4 v8, 0x2

    move-object/from16 v26, v9

    new-array v9, v8, [Lcom/google/android/gms/internal/ads/zzlr;

    move-object/from16 v27, v12

    new-array v12, v8, [Lcom/google/android/gms/internal/ads/zzyd;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    move-object/from16 v28, v13

    const/4 v13, 0x0

    invoke-direct {v11, v9, v12, v8, v13}, Lcom/google/android/gms/internal/ads/zzyk;-><init>([Lcom/google/android/gms/internal/ads/zzlr;[Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;)V

    iput-object v11, v1, Lg/ij;->aa:Lcom/google/android/gms/internal/ads/zzyk;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzbt;-><init>()V

    iput-object v8, v1, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbk;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzbk;->zzc([I)Lcom/google/android/gms/internal/ads/zzbk;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzyj;->zzn()Z

    const/16 v9, 0x1d

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    const/16 v9, 0x17

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    const/16 v9, 0x19

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    const/16 v9, 0x21

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    const/16 v9, 0x1a

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    const/16 v9, 0x22

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbk;->zze()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v8

    iput-object v8, v1, Lg/ij;->ag:Lcom/google/android/gms/internal/ads/zzbl;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbk;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbk;->zzb(Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzbk;

    const/4 v8, 0x4

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbk;->zza(I)Lcom/google/android/gms/internal/ads/zzbk;

    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzbk;->zza(I)Lcom/google/android/gms/internal/ads/zzbk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbk;->zze()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v9

    iput-object v9, v1, Lg/ij;->t:Lcom/google/android/gms/internal/ads/zzbl;

    const/4 v9, 0x0

    invoke-interface {v4, v10, v9}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdm;

    move-result-object v9

    iput-object v9, v1, Lg/ij;->d:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzjd;-><init>(Lg/ij;)V

    iput-object v9, v1, Lg/ij;->v:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-static {v11}, Lg/gzx;->u(Lcom/google/android/gms/internal/ads/zzyk;)Lg/gzx;

    move-result-object v8

    iput-object v8, v1, Lg/ij;->i:Lg/gzx;

    invoke-interface {v14, v2, v10}, Lcom/google/android/gms/internal/ads/zzlw;->zzS(Lcom/google/android/gms/internal/ads/zzbp;Landroid/os/Looper;)V

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v8, 0x1f

    if-ge v2, v8, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzoj;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzoj;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzip;->p:Z

    invoke-static {v6, v1, v2, v5}, Lg/dli;->a(Landroid/content/Context;Lg/ij;ZLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzoj;

    move-result-object v2

    :goto_0
    new-instance v8, Lcom/google/android/gms/internal/ads/s;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzip;->i:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzkl;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzip;->q:Lcom/google/android/gms/internal/ads/zzia;

    move-object/from16 v29, v14

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzip;->c:J

    move/from16 p1, v22

    const/4 v0, 0x1

    move-object/from16 v22, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v12

    move-object v12, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v26

    move-object/from16 v26, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v17

    move-wide/from16 v17, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v29

    move-object/from16 v19, v10

    move-object/from16 v10, v28

    invoke-direct/range {v8 .. v23}, Lcom/google/android/gms/internal/ads/s;-><init>([Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzyj;Lcom/google/android/gms/internal/ads/zzyk;Lcom/google/android/gms/internal/ads/zzkl;Lcom/google/android/gms/internal/ads/zzyv;Lcom/google/android/gms/internal/ads/zzlw;Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzia;JLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdc;Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zziq;)V

    move-object v9, v8

    move-object/from16 v8, v19

    iput-object v9, v1, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v1, Lg/ij;->l:F

    sget-object v9, Lcom/google/android/gms/internal/ads/zzba;->zza:Lcom/google/android/gms/internal/ads/zzba;

    iput-object v9, v1, Lg/ij;->aj:Lcom/google/android/gms/internal/ads/zzba;

    iput-object v9, v1, Lg/ij;->af:Lcom/google/android/gms/internal/ads/zzba;

    const/4 v9, -0x1

    iput v9, v1, Lg/ij;->f:I

    const-string v11, "audio"

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    if-nez v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v6

    :goto_1
    sget v11, Lcom/google/android/gms/internal/ads/zzcu;->zza:I

    iput-boolean v0, v1, Lg/ij;->p:Z

    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/Object;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v13, v7, v14}, Lcom/google/android/gms/internal/ads/zzyr;->zzf(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzyq;)V

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance v5, Lg/ane;

    invoke-direct {v5, v2}, Lg/ane;-><init>(Landroid/os/Handler;)V

    new-instance v5, Lg/gdw;

    invoke-direct {v5, v3, v2, v4}, Lg/gdw;-><init>(Landroid/content/Context;Landroid/os/Handler;Lg/eec;)V

    iput-object v5, v1, Lg/ij;->al:Lg/gdw;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzq;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Lcom/google/android/gms/internal/ads/zzq;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzq;->zza()Lcom/google/android/gms/internal/ads/zzs;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzci;->zza:Lcom/google/android/gms/internal/ads/zzci;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzee;

    iput-object v2, v1, Lg/ij;->ad:Lcom/google/android/gms/internal/ads/zzee;

    move-object/from16 v2, v26

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzyj;->zzk(Lcom/google/android/gms/internal/ads/zzg;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v0, v4, v3}, Lg/ij;->an(IILjava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4, v3}, Lg/ij;->an(IILjava/lang/Object;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3, v2}, Lg/ij;->an(IILjava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v5, v3, v2}, Lg/ij;->an(IILjava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v5, v3, v2}, Lg/ij;->an(IILjava/lang/Object;)V

    iget-boolean v2, v1, Lg/ij;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v0, v3, v2}, Lg/ij;->an(IILjava/lang/Object;)V

    const/4 v0, 0x7

    move-object/from16 v2, v27

    invoke-virtual {v1, v5, v0, v2}, Lg/ij;->an(IILjava/lang/Object;)V

    const/4 v0, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3, v2}, Lg/ij;->an(IILjava/lang/Object;)V

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1, v9, v2, v0}, Lg/ij;->an(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzdf;->zze()Z

    return-void

    :goto_2
    iget-object v2, v1, Lg/ij;->k:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdf;->zze()Z

    throw v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static am(Lg/gzx;)J
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbt;-><init>()V

    iget-object v2, p0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v3, p0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget-wide v2, p0, Lg/gzx;->r:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object p0, p0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbu;->zzl:J

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final an(IILjava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lg/ij;->u:[Lcom/google/android/gms/internal/ads/zzln;

    array-length v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzln;->zzb()I

    move-result v4

    if-ne v4, p1, :cond_2

    :cond_0
    iget-object v4, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {p0, v4}, Lg/ij;->ar(Lg/gzx;)I

    move-result v4

    move v5, v4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v7, p0, Lg/ij;->i:Lg/gzx;

    iget-object v7, v7, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    if-ne v5, v3, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    iget-object v5, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/s;->t:Landroid/os/Looper;

    iget-object v9, p0, Lg/ij;->ac:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzli;Lcom/google/android/gms/internal/ads/zzbv;ILcom/google/android/gms/internal/ads/zzdc;Landroid/os/Looper;)V

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzlj;->zzf(I)Lcom/google/android/gms/internal/ads/zzlj;

    invoke-virtual {v4, p3}, Lcom/google/android/gms/internal/ads/zzlj;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzlj;->zzd()Lcom/google/android/gms/internal/ads/zzlj;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final ao(IIZ)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p1, p0, Lg/ij;->i:Lg/gzx;

    iget-boolean v2, p1, Lg/gzx;->g:Z

    if-ne v2, p3, :cond_2

    iget v2, p1, Lg/gzx;->e:I

    if-ne v2, v0, :cond_2

    iget v2, p1, Lg/gzx;->m:I

    if-ne v2, p2, :cond_2

    return-void

    :cond_2
    iget v2, p0, Lg/ij;->ae:I

    add-int/2addr v2, v1

    iput v2, p0, Lg/ij;->ae:I

    invoke-virtual {p1, p2, v0, p3}, Lg/gzx;->ab(IIZ)Lg/gzx;

    move-result-object v4

    iget-object p1, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s;->ah:Lcom/google/android/gms/internal/ads/zzdm;

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr p2, v0

    invoke-interface {p1, v1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdm;->zzd(III)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdl;->zza()V

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lg/ij;->ap(Lg/gzx;IZIJI)V

    return-void
.end method

.method public final ap(Lg/gzx;IZIJI)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lg/ij;->i:Lg/gzx;

    iput-object v1, v0, Lg/ij;->i:Lg/gzx;

    iget-object v6, v5, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v7, v1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbv;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v8, v1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v9

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move v3, v2

    move/from16 v2, p3

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v3

    if-eq v9, v3, :cond_1

    new-instance v7, Landroid/util/Pair;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v7, v3, v9}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {v7, v3, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbu;->zzb:Ljava/lang/Object;

    iget-object v7, v1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {v8, v7, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzbu;->zzb:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p3, :cond_3

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_4

    if-ne v2, v14, :cond_4

    move v3, v4

    const/4 v4, 0x2

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    const/4 v4, 0x3

    :goto_2
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v31, v3

    move v3, v2

    move/from16 v2, v31

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    if-eqz p3, :cond_9

    if-nez v2, :cond_8

    iget-object v2, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-object v7, v1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    cmp-long v9, v2, v7

    if-gez v9, :cond_7

    new-instance v7, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    move v3, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    move v3, v2

    const/4 v2, 0x0

    :goto_3
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v4, :cond_b

    iget-object v9, v1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v8, v1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v14, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v9, v8, v14}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v9, v1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {v9, v8, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzbu;->zzd:Lcom/google/android/gms/internal/ads/zzaw;

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    sget-object v9, Lcom/google/android/gms/internal/ads/zzba;->zza:Lcom/google/android/gms/internal/ads/zzba;

    iput-object v9, v0, Lg/ij;->af:Lcom/google/android/gms/internal/ads/zzba;

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    if-nez v4, :cond_c

    iget-object v9, v5, Lg/gzx;->p:Ljava/util/List;

    iget-object v14, v1, Lg/gzx;->p:Ljava/util/List;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    :cond_c
    iget-object v9, v0, Lg/ij;->af:Lcom/google/android/gms/internal/ads/zzba;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzba;->zza()Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v9

    iget-object v14, v1, Lg/gzx;->p:Ljava/util/List;

    :goto_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_e

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbd;->zza()I

    move-result v12

    if-ge v10, v12, :cond_d

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v12

    invoke-interface {v12, v9}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v12, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzay;->zzu()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v9

    iput-object v9, v0, Lg/ij;->af:Lcom/google/android/gms/internal/ads/zzba;

    :cond_f
    invoke-virtual {v0}, Lg/ij;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v9, v0, Lg/ij;->af:Lcom/google/android/gms/internal/ads/zzba;

    goto :goto_9

    :cond_10
    invoke-virtual {v0}, Lg/ij;->zzd()I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzbu;->zzd:Lcom/google/android/gms/internal/ads/zzaw;

    iget-object v10, v0, Lg/ij;->af:Lcom/google/android/gms/internal/ads/zzba;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzba;->zza()Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v10

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaw;->zzd:Lcom/google/android/gms/internal/ads/zzba;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzay;->zzb(Lcom/google/android/gms/internal/ads/zzba;)Lcom/google/android/gms/internal/ads/zzay;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzay;->zzu()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v9

    :goto_9
    iget-object v10, v0, Lg/ij;->aj:Lcom/google/android/gms/internal/ads/zzba;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzba;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-object v9, v0, Lg/ij;->aj:Lcom/google/android/gms/internal/ads/zzba;

    iget-boolean v9, v5, Lg/gzx;->g:Z

    iget-boolean v11, v1, Lg/gzx;->g:Z

    if-eq v9, v11, :cond_11

    const/4 v9, 0x1

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    :goto_a
    iget v11, v5, Lg/gzx;->h:I

    iget v12, v1, Lg/gzx;->h:I

    if-eq v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    :goto_b
    if-nez v11, :cond_13

    if-eqz v9, :cond_15

    :cond_13
    invoke-virtual {v0}, Lg/ij;->zzf()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_14

    const/4 v13, 0x3

    if-eq v12, v13, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v0}, Lg/ij;->at()V

    iget-object v12, v0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lg/ij;->zzu()Z

    invoke-virtual {v0}, Lg/ij;->zzu()Z

    :cond_15
    :goto_c
    iget-boolean v12, v5, Lg/gzx;->s:Z

    iget-boolean v13, v1, Lg/gzx;->s:Z

    if-eq v12, v13, :cond_16

    const/4 v12, 0x1

    goto :goto_d

    :cond_16
    const/4 v12, 0x0

    :goto_d
    if-nez v6, :cond_17

    iget-object v6, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzis;

    move/from16 v14, p2

    invoke-direct {v13, v1, v14}, Lcom/google/android/gms/internal/ads/zzis;-><init>(Lg/gzx;I)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v13}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_17
    if-eqz v2, :cond_1f

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbt;-><init>()V

    iget-object v13, v5, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v13

    if-nez v13, :cond_18

    iget-object v13, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v14, v5, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v14, v13, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v15, v5, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v15

    iget-object v6, v5, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    move/from16 p4, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    move/from16 v18, v9

    move/from16 v17, v10

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v14, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbu;->zzb:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbu;->zzd:Lcom/google/android/gms/internal/ads/zzaw;

    move-object/from16 v20, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v13

    move/from16 v21, v14

    move/from16 v24, v15

    goto :goto_e

    :cond_18
    move/from16 p4, v4

    move/from16 v18, v9

    move/from16 v17, v10

    move/from16 v21, p7

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    :goto_e
    if-nez v3, :cond_1b

    iget-object v4, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzbt;->zzf(II)J

    move-result-wide v9

    invoke-static {v5}, Lg/ij;->am(Lg/gzx;)J

    move-result-wide v13

    goto :goto_10

    :cond_19
    iget-object v4, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1a

    iget-object v2, v0, Lg/ij;->i:Lg/gzx;

    invoke-static {v2}, Lg/ij;->am(Lg/gzx;)J

    move-result-wide v9

    :goto_f
    move-wide v13, v9

    goto :goto_10

    :cond_1a
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzd:J

    goto :goto_f

    :cond_1b
    iget-object v2, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-wide v9, v5, Lg/gzx;->t:J

    invoke-static {v5}, Lg/ij;->am(Lg/gzx;)J

    move-result-wide v13

    goto :goto_10

    :cond_1c
    iget-wide v9, v5, Lg/gzx;->t:J

    goto :goto_f

    :goto_10
    new-instance v19, Lcom/google/android/gms/internal/ads/zzbn;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v2, v5, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v25

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v27

    move/from16 v30, v2

    move/from16 v29, v4

    invoke-direct/range {v19 .. v30}, Lcom/google/android/gms/internal/ads/zzbn;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzaw;Ljava/lang/Object;IJJII)V

    move-object/from16 v2, v19

    invoke-virtual {v0}, Lg/ij;->zzd()I

    move-result v4

    iget-object v6, v0, Lg/ij;->i:Lg/gzx;

    iget-object v6, v6, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, v0, Lg/ij;->i:Lg/gzx;

    iget-object v9, v6, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v6, v6, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v10, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget-object v6, v0, Lg/ij;->i:Lg/gzx;

    iget-object v6, v6, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v6

    iget-object v10, v0, Lg/ij;->i:Lg/gzx;

    iget-object v10, v10, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v4, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzbu;->zzb:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzbu;->zzd:Lcom/google/android/gms/internal/ads/zzaw;

    move/from16 v24, v6

    move-object/from16 v23, v9

    move-object/from16 v20, v10

    move-object/from16 v22, v13

    goto :goto_11

    :cond_1d
    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    :goto_11
    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v25

    new-instance v19, Lcom/google/android/gms/internal/ads/zzbn;

    iget-object v6, v0, Lg/ij;->i:Lg/gzx;

    iget-object v6, v6, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, v0, Lg/ij;->i:Lg/gzx;

    invoke-static {v6}, Lg/ij;->am(Lg/gzx;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v9

    move-wide/from16 v27, v9

    goto :goto_12

    :cond_1e
    move-wide/from16 v27, v25

    :goto_12
    iget-object v6, v0, Lg/ij;->i:Lg/gzx;

    iget-object v6, v6, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    move/from16 v21, v4

    move/from16 v30, v6

    move/from16 v29, v9

    invoke-direct/range {v19 .. v30}, Lcom/google/android/gms/internal/ads/zzbn;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzaw;Ljava/lang/Object;IJJII)V

    move-object/from16 v4, v19

    iget-object v6, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzji;

    invoke-direct {v9, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzji;-><init>(ILcom/google/android/gms/internal/ads/zzbn;Lcom/google/android/gms/internal/ads/zzbn;)V

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v9}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    goto :goto_13

    :cond_1f
    move/from16 p4, v4

    move/from16 v18, v9

    move/from16 v17, v10

    :goto_13
    if-eqz p4, :cond_20

    iget-object v2, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjj;

    invoke-direct {v3, v8, v7}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(Lcom/google/android/gms/internal/ads/zzaw;I)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    goto :goto_14

    :cond_20
    const/4 v14, 0x1

    :goto_14
    iget-object v2, v5, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v3, v1, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    const/16 v4, 0xa

    if-eq v2, v3, :cond_21

    iget-object v2, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjk;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjk;-><init>(Lg/gzx;)V

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    iget-object v2, v1, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    if-eqz v2, :cond_21

    iget-object v2, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjl;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Lg/gzx;)V

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_21
    iget-object v2, v5, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v3, v1, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    if-eq v2, v3, :cond_22

    iget-object v2, v0, Lg/ij;->ak:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzyk;->zze:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzyj;->zzp(Ljava/lang/Object;)V

    iget-object v2, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(Lg/gzx;)V

    const/4 v13, 0x2

    invoke-virtual {v2, v13, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_22
    if-nez v17, :cond_23

    iget-object v2, v0, Lg/ij;->aj:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v3, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzit;-><init>(Lcom/google/android/gms/internal/ads/zzba;)V

    const/16 v2, 0xe

    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_23
    if-eqz v12, :cond_24

    iget-object v2, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v3, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zziu;-><init>(Lg/gzx;)V

    const/4 v13, 0x3

    invoke-virtual {v2, v13, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_24
    if-nez v11, :cond_25

    if-eqz v18, :cond_26

    :cond_25
    iget-object v2, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v3, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Lg/gzx;)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_26
    const/4 v2, 0x4

    if-eqz v11, :cond_27

    iget-object v3, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v6, Lcom/google/android/gms/internal/ads/zziw;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zziw;-><init>(Lg/gzx;)V

    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_27
    const/4 v3, 0x5

    if-nez v18, :cond_28

    iget v6, v5, Lg/gzx;->m:I

    iget v7, v1, Lg/gzx;->m:I

    if-eq v6, v7, :cond_29

    :cond_28
    iget-object v6, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(Lg/gzx;)V

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_29
    iget v6, v5, Lg/gzx;->e:I

    iget v7, v1, Lg/gzx;->e:I

    const/4 v8, 0x6

    if-eq v6, v7, :cond_2a

    iget-object v6, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjf;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(Lg/gzx;)V

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_2a
    invoke-virtual {v5}, Lg/gzx;->v()Z

    move-result v6

    invoke-virtual {v1}, Lg/gzx;->v()Z

    move-result v7

    const/4 v9, 0x7

    if-eq v6, v7, :cond_2b

    iget-object v6, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(Lg/gzx;)V

    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_2b
    iget-object v5, v5, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    iget-object v6, v1, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbj;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xc

    if-nez v5, :cond_2c

    iget-object v5, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjh;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzjh;-><init>(Lg/gzx;)V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_2c
    iget-object v1, v0, Lg/ij;->t:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v5, v0, Lg/ij;->n:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v7, v0, Lg/ij;->ag:Lcom/google/android/gms/internal/ads/zzbl;

    sget v10, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzw()Z

    move-result v10

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v12

    if-nez v12, :cond_2d

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzd()I

    move-result v12

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v11

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzbu;->zzh:Z

    if-eqz v11, :cond_2d

    const/4 v14, 0x1

    goto :goto_15

    :cond_2d
    const/4 v14, 0x0

    :goto_15
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v12

    if-eqz v12, :cond_2f

    const/4 v12, -0x1

    const/4 v13, 0x0

    :cond_2e
    const/16 v16, 0x0

    goto :goto_16

    :cond_2f
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzd()I

    move-result v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzh()I

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzv()Z

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zzk(IIZ)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2e

    const/16 v16, 0x1

    :goto_16
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v15

    if-eqz v15, :cond_31

    :cond_30
    const/4 v11, 0x0

    goto :goto_17

    :cond_31
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzd()I

    move-result v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzh()I

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzv()Z

    invoke-virtual {v11, v15, v13, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zzj(IIZ)I

    move-result v11

    if-eq v11, v12, :cond_30

    const/4 v11, 0x1

    :goto_17
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v15

    if-nez v15, :cond_33

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzd()I

    move-result v15

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    move/from16 p1, v10

    const-wide/16 v9, 0x0

    invoke-virtual {v12, v15, v13, v9, v10}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzbu;->zzb()Z

    move-result v12

    if-eqz v12, :cond_32

    const/4 v12, 0x1

    goto :goto_19

    :cond_32
    :goto_18
    const/4 v12, 0x0

    goto :goto_19

    :cond_33
    move/from16 p1, v10

    const-wide/16 v9, 0x0

    goto :goto_18

    :goto_19
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v15

    if-nez v15, :cond_34

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzd()I

    move-result v15

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {v13, v15, v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v6

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzbu;->zzi:Z

    if-eqz v6, :cond_34

    const/4 v6, 0x1

    goto :goto_1a

    :cond_34
    const/4 v6, 0x0

    :goto_1a
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v5

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbk;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzbk;->zzb(Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzbk;

    xor-int/lit8 v7, p1, 0x1

    invoke-virtual {v9, v2, v7}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    if-eqz v14, :cond_35

    if-nez p1, :cond_35

    const/4 v2, 0x1

    goto :goto_1b

    :cond_35
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    if-eqz v16, :cond_36

    if-nez p1, :cond_36

    const/4 v2, 0x1

    goto :goto_1c

    :cond_36
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {v9, v8, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    if-nez v5, :cond_37

    if-nez v16, :cond_38

    if-eqz v12, :cond_38

    if-eqz v14, :cond_37

    goto :goto_1e

    :cond_37
    const/4 v2, 0x0

    :goto_1d
    const/4 v3, 0x7

    goto :goto_1f

    :cond_38
    :goto_1e
    if-nez p1, :cond_37

    const/4 v2, 0x1

    goto :goto_1d

    :goto_1f
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    if-eqz v11, :cond_39

    if-nez p1, :cond_39

    const/4 v2, 0x1

    goto :goto_20

    :cond_39
    const/4 v2, 0x0

    :goto_20
    const/16 v3, 0x8

    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    if-nez v5, :cond_3a

    if-nez v11, :cond_3b

    if-eqz v12, :cond_3a

    if-eqz v6, :cond_3a

    goto :goto_21

    :cond_3a
    const/4 v2, 0x0

    goto :goto_22

    :cond_3b
    :goto_21
    if-nez p1, :cond_3a

    const/4 v2, 0x1

    :goto_22
    const/16 v3, 0x9

    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    invoke-virtual {v9, v4, v7}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    if-eqz v14, :cond_3c

    if-nez p1, :cond_3c

    const/4 v2, 0x1

    :goto_23
    const/16 v3, 0xb

    goto :goto_24

    :cond_3c
    const/4 v2, 0x0

    goto :goto_23

    :goto_24
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    if-eqz v14, :cond_3d

    if-nez p1, :cond_3d

    const/16 v2, 0xc

    const/4 v14, 0x1

    goto :goto_25

    :cond_3d
    const/16 v2, 0xc

    const/4 v14, 0x0

    :goto_25
    invoke-virtual {v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzbk;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbk;->zze()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v2

    iput-object v2, v0, Lg/ij;->t:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lg/ij;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    :cond_3e
    iget-object v1, v0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzds;->zzc()V

    return-void
.end method

.method public final aq(Lcom/google/android/gms/internal/ads/zzbv;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lg/ij;->f:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lg/ij;->ah:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbv;->zzc()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbv;->zzg(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzbu;->zzl:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object v2, p0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbv;->zzl(Lcom/google/android/gms/internal/ads/zzbu;Lcom/google/android/gms/internal/ads/zzbt;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final ar(Lg/gzx;)I
    .locals 2

    iget-object v0, p1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lg/ij;->f:I

    return p1

    :cond_0
    iget-object v0, p1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object p1, p1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    return p1
.end method

.method public final as(Lg/gzx;Lcom/google/android/gms/internal/ads/zzbv;Landroid/util/Pair;)Lg/gzx;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual/range {p0 .. p1}, Lg/ij;->av(Lg/gzx;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, Lg/gzx;->z(Lcom/google/android/gms/internal/ads/zzbv;)Lg/gzx;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v10, Lg/gzx;->a:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v1, v0, Lg/ij;->ah:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v11

    iget-object v1, v0, Lg/ij;->aa:Lcom/google/android/gms/internal/ads/zzyk;

    sget-object v19, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v21

    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v20, v1

    invoke-virtual/range {v9 .. v21}, Lg/gzx;->aa(Lcom/google/android/gms/internal/ads/zzur;JJJJLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;)Lg/gzx;

    move-result-object v1

    invoke-virtual {v1, v10}, Lg/gzx;->y(Lcom/google/android/gms/internal/ads/zzur;)Lg/gzx;

    move-result-object v1

    iget-wide v2, v1, Lg/gzx;->t:J

    iput-wide v2, v1, Lg/gzx;->l:J

    return-object v1

    :cond_2
    iget-object v3, v9, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    sget v10, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v11, Lcom/google/android/gms/internal/ads/zzur;

    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-wide/16 v13, -0x1

    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_3
    iget-object v11, v9, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    :goto_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    :cond_4
    if-eqz v10, :cond_5

    cmp-long v2, v12, v7

    if-gez v2, :cond_6

    :cond_5
    move v1, v10

    move-object v10, v11

    move-wide v11, v12

    goto/16 :goto_5

    :cond_6
    if-nez v2, :cond_a

    iget-object v2, v9, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v3, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v4, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    if-eq v2, v3, :cond_7

    goto :goto_2

    :cond_7
    return-object v9

    :cond_8
    :goto_2
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    iget v2, v11, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbt;->zzf(II)J

    move-result-wide v1

    :goto_3
    move-object v10, v11

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzbt;->zzd:J

    goto :goto_3

    :goto_4
    iget-wide v11, v9, Lg/gzx;->t:J

    iget-wide v13, v9, Lg/gzx;->t:J

    iget-wide v3, v9, Lg/gzx;->f:J

    iget-wide v5, v9, Lg/gzx;->t:J

    sub-long v17, v1, v5

    iget-object v5, v9, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v6, v9, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v7, v9, Lg/gzx;->p:Ljava/util/List;

    move-wide v15, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v9 .. v21}, Lg/gzx;->aa(Lcom/google/android/gms/internal/ads/zzur;JJJJLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;)Lg/gzx;

    move-result-object v3

    invoke-virtual {v3, v10}, Lg/gzx;->y(Lcom/google/android/gms/internal/ads/zzur;)Lg/gzx;

    move-result-object v3

    iput-wide v1, v3, Lg/gzx;->l:J

    return-object v3

    :cond_a
    move-object v10, v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-wide v1, v9, Lg/gzx;->q:J

    sub-long v3, v12, v7

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v1, v9, Lg/gzx;->l:J

    iget-object v3, v9, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v4, v9, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzur;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-long v1, v12, v17

    :cond_b
    iget-object v3, v9, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v4, v9, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v5, v9, Lg/gzx;->p:Ljava/util/List;

    move-wide v11, v12

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v9 .. v21}, Lg/gzx;->aa(Lcom/google/android/gms/internal/ads/zzur;JJJJLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;)Lg/gzx;

    move-result-object v3

    iput-wide v1, v3, Lg/gzx;->l:J

    return-object v3

    :goto_5
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    if-nez v1, :cond_c

    sget-object v2, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    :goto_6
    move-object/from16 v19, v2

    goto :goto_7

    :cond_c
    iget-object v2, v9, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    goto :goto_6

    :goto_7
    if-nez v1, :cond_d

    iget-object v2, v0, Lg/ij;->aa:Lcom/google/android/gms/internal/ads/zzyk;

    :goto_8
    move-object/from16 v20, v2

    goto :goto_9

    :cond_d
    iget-object v2, v9, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    goto :goto_8

    :goto_9
    if-nez v1, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    :goto_a
    move-object/from16 v21, v1

    goto :goto_b

    :cond_e
    iget-object v1, v9, Lg/gzx;->p:Ljava/util/List;

    goto :goto_a

    :goto_b
    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    invoke-virtual/range {v9 .. v21}, Lg/gzx;->aa(Lcom/google/android/gms/internal/ads/zzur;JJJJLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;)Lg/gzx;

    move-result-object v1

    invoke-virtual {v1, v10}, Lg/gzx;->y(Lcom/google/android/gms/internal/ads/zzur;)Lg/gzx;

    move-result-object v1

    iput-wide v11, v1, Lg/gzx;->l:J

    return-object v1
.end method

.method public final at()V
    .locals 5

    iget-object v0, p0, Lg/ij;->k:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zzb()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lg/ij;->g:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "\'\nExpected thread: \'"

    const-string v3, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    const-string v4, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    invoke-static {v4, v0, v2, v1, v3}, Lg/tn;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lg/ij;->p:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lg/ij;->ai:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ij;->ai:Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final au(Landroid/view/Surface;)V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/ij;->u:[Lcom/google/android/gms/internal/ads/zzln;

    array-length v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    aget-object v8, v1, v3

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzln;->zzb()I

    move-result v6

    if-ne v6, v4, :cond_1

    iget-object v4, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {p0, v4}, Lg/ij;->ar(Lg/gzx;)I

    move-result v4

    new-instance v6, Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v7, p0, Lg/ij;->i:Lg/gzx;

    iget-object v9, v7, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    move v10, v4

    :goto_1
    iget-object v7, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    iget-object v12, v7, Lcom/google/android/gms/internal/ads/s;->t:Landroid/os/Looper;

    iget-object v11, p0, Lg/ij;->ac:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzli;Lcom/google/android/gms/internal/ads/zzbv;ILcom/google/android/gms/internal/ads/zzdc;Landroid/os/Looper;)V

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzlj;->zzf(I)Lcom/google/android/gms/internal/ads/zzlj;

    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzlj;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzlj;->zzd()Lcom/google/android/gms/internal/ads/zzlj;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lg/ij;->h:Ljava/lang/Object;

    if-eqz v1, :cond_4

    if-eq v1, p1, :cond_4

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlj;

    iget-wide v3, p0, Lg/ij;->w:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzlj;->zzi(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    const/4 v2, 0x1

    goto :goto_3

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    :goto_3
    iget-object v0, p0, Lg/ij;->h:Ljava/lang/Object;

    iget-object v1, p0, Lg/ij;->c:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/ij;->c:Landroid/view/Surface;

    :cond_4
    iput-object p1, p0, Lg/ij;->h:Ljava/lang/Object;

    if-eqz v2, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/ads/zzki;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzki;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzig;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ij;->aw(Lcom/google/android/gms/internal/ads/zzig;)V

    :cond_5
    return-void
.end method

.method public final av(Lg/gzx;)J
    .locals 8

    iget-object v0, p1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v1, p1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget-wide v2, p1, Lg/gzx;->r:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lg/ij;->ar(Lg/gzx;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {v1, p1, v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzbu;->zzl:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    invoke-virtual {p0, p1}, Lg/ij;->ax(Lg/gzx;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final aw(Lcom/google/android/gms/internal/ads/zzig;)V
    .locals 10

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v0, v1}, Lg/gzx;->y(Lcom/google/android/gms/internal/ads/zzur;)Lg/gzx;

    move-result-object v0

    iget-wide v1, v0, Lg/gzx;->t:J

    iput-wide v1, v0, Lg/gzx;->l:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lg/gzx;->q:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/gzx;->x(I)Lg/gzx;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lg/gzx;->w(Lcom/google/android/gms/internal/ads/zzig;)Lg/gzx;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Lg/ij;->ae:I

    add-int/2addr p1, v1

    iput p1, p0, Lg/ij;->ae:I

    iget-object p1, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s;->ah:Lcom/google/android/gms/internal/ads/zzdm;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzb(I)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdl;->zza()V

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lg/ij;->ap(Lg/gzx;IZIJI)V

    return-void
.end method

.method public final ax(Lg/gzx;)J
    .locals 4

    iget-object v0, p1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lg/ij;->ah:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p1, Lg/gzx;->t:J

    iget-object v2, p1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    iget-object v2, p1, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object p1, p1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    return-wide v0
.end method

.method public final ay(II)V
    .locals 3

    iget-object v0, p0, Lg/ij;->ad:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zzb()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lg/ij;->ad:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zza()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzee;-><init>(II)V

    iput-object v0, p0, Lg/ij;->ad:Lcom/google/android/gms/internal/ads/zzee;

    new-instance v0, Lcom/google/android/gms/internal/ads/zziy;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziy;-><init>(II)V

    iget-object v1, p0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzds;->zzc()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzee;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, p1, p2, v0}, Lg/ij;->an(IILjava/lang/Object;)V

    return-void
.end method

.method public final zzA(Lcom/google/android/gms/internal/ads/zzlz;)V
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->j:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->zzR(Lcom/google/android/gms/internal/ads/zzlz;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/internal/ads/zzut;)V
    .locals 12

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v2, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {p0, v2}, Lg/ij;->ar(Lg/gzx;)I

    invoke-virtual {p0}, Lg/ij;->zzk()J

    iget v2, p0, Lg/ij;->ae:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lg/ij;->ae:I

    iget-object v2, p0, Lg/ij;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    :goto_0
    if-ltz v6, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lg/ij;->r:Lcom/google/android/gms/internal/ads/zzwj;

    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzwj;->zzh(II)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object v4

    iput-object v4, p0, Lg/ij;->r:Lcom/google/android/gms/internal/ads/zzwj;

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    new-instance v6, Lg/iw;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzut;

    iget-boolean v9, p0, Lg/ij;->y:Z

    invoke-direct {v6, v8, v9}, Lg/iw;-><init>(Lcom/google/android/gms/internal/ads/zzut;Z)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lg/dty;

    iget-object v9, v6, Lg/iw;->d:Ljava/lang/Object;

    iget-object v6, v6, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    invoke-direct {v8, v9, v6}, Lg/dty;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzum;)V

    invoke-virtual {v2, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lg/ij;->r:Lcom/google/android/gms/internal/ads/zzwj;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzwj;->zzg(II)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object v1

    iput-object v1, p0, Lg/ij;->r:Lcom/google/android/gms/internal/ads/zzwj;

    new-instance v1, Lg/aqw;

    iget-object v4, p0, Lg/ij;->r:Lcom/google/android/gms/internal/ads/zzwj;

    invoke-direct {v1, v2, v4}, Lg/aqw;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v2

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    iget v6, v1, Lg/aqw;->q:I

    if-nez v2, :cond_4

    if-ltz v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzah;

    invoke-direct {v2, v1, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzah;-><init>(Lcom/google/android/gms/internal/ads/zzbv;IJ)V

    throw v2

    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzhn;->zzg(Z)I

    move-result v2

    iget-object v10, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {p0, v1, v2, v8, v9}, Lg/ij;->aq(Lcom/google/android/gms/internal/ads/zzbv;IJ)Landroid/util/Pair;

    move-result-object v11

    invoke-virtual {p0, v10, v1, v11}, Lg/ij;->as(Lg/gzx;Lcom/google/android/gms/internal/ads/zzbv;Landroid/util/Pair;)Lg/gzx;

    move-result-object v10

    iget v11, v10, Lg/gzx;->h:I

    if-eq v2, v4, :cond_6

    if-eq v11, v3, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v1

    const/4 v11, 0x4

    if-nez v1, :cond_6

    if-lt v2, v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x2

    :cond_6
    :goto_3
    invoke-virtual {v10, v11}, Lg/gzx;->x(I)Lg/gzx;

    move-result-object v1

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v10

    iget-object v8, p0, Lg/ij;->r:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v4, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/bna;

    move v9, v2

    invoke-direct/range {v6 .. v11}, Lg/bna;-><init>(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzwj;IJ)V

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/s;->ah:Lcom/google/android/gms/internal/ads/zzdm;

    const/16 v4, 0x11

    invoke-interface {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzdm;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdl;->zza()V

    iget-object v2, p0, Lg/ij;->i:Lg/gzx;

    iget-object v2, v2, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v4, v1, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lg/ij;->i:Lg/gzx;

    iget-object v2, v2, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0, v1}, Lg/ij;->ax(Lg/gzx;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lg/ij;->ap(Lg/gzx;IZIJI)V

    return-void
.end method

.method public final zza(IJIZ)V
    .locals 10

    invoke-virtual {p0}, Lg/ij;->at()V

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p4, 0x1

    if-ltz p1, :cond_1

    const/4 p5, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iget-object p5, p0, Lg/ij;->i:Lg/gzx;

    iget-object p5, p5, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbv;->zzc()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    iget-object v0, p0, Lg/ij;->j:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlw;->zzu()V

    iget v0, p0, Lg/ij;->ae:I

    add-int/2addr v0, p4

    iput v0, p0, Lg/ij;->ae:I

    invoke-virtual {p0}, Lg/ij;->zzw()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzke;

    iget-object p2, p0, Lg/ij;->i:Lg/gzx;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzke;-><init>(Lg/gzx;)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzke;->zza(I)V

    iget-object p2, p0, Lg/ij;->v:Lcom/google/android/gms/internal/ads/zzjd;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzjd;->zza:Lg/ij;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzja;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzja;-><init>(Lg/ij;Lcom/google/android/gms/internal/ads/zzke;)V

    iget-object p1, p2, Lg/ij;->d:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    iget-object p4, p0, Lg/ij;->i:Lg/gzx;

    iget v0, p4, Lg/gzx;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p4, p0, Lg/ij;->i:Lg/gzx;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lg/gzx;->x(I)Lg/gzx;

    move-result-object p4

    :cond_6
    invoke-virtual {p0}, Lg/ij;->zzd()I

    move-result v9

    invoke-virtual {p0, p5, p1, p2, p3}, Lg/ij;->aq(Lcom/google/android/gms/internal/ads/zzbv;IJ)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p4, p5, v0}, Lg/ij;->as(Lg/gzx;Lcom/google/android/gms/internal/ads/zzbv;Landroid/util/Pair;)Lg/gzx;

    move-result-object v3

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide p2

    iget-object p4, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/cuu;

    invoke-direct {v0, p5, p1, p2, p3}, Lg/cuu;-><init>(Lcom/google/android/gms/internal/ads/zzbv;IJ)V

    iget-object p1, p4, Lcom/google/android/gms/internal/ads/s;->ah:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdl;->zza()V

    invoke-virtual {p0, v3}, Lg/ij;->ax(Lg/gzx;)J

    move-result-wide v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lg/ij;->ap(Lg/gzx;IZIJI)V

    return-void
.end method

.method public final zzb()I
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0}, Lg/ij;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzc()I
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0}, Lg/ij;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzd()I
    .locals 2

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {p0, v0}, Lg/ij;->ar(Lg/gzx;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final zze()I
    .locals 2

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v0, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget v0, v0, Lg/gzx;->h:I

    return v0
.end method

.method public final zzg()I
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget v0, v0, Lg/gzx;->e:I

    return v0
.end method

.method public final zzh()I
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()J
    .locals 8

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0}, Lg/ij;->zzw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzur;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-wide v0, v0, Lg/gzx;->l:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lg/ij;->zzl()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lg/ij;->ah:J

    return-wide v0

    :cond_2
    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-object v3, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    iget-object v0, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {p0}, Lg/ij;->zzd()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbu;->zzm:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0

    :cond_3
    iget-wide v0, v0, Lg/gzx;->l:J

    iget-object v2, p0, Lg/ij;->i:Lg/gzx;

    iget-object v2, v2, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v0, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v0

    iget-object v1, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v1, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbt;->zzg(I)J

    goto :goto_0

    :cond_4
    move-wide v5, v0

    :goto_0
    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v0, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzj()J
    .locals 2

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {p0, v0}, Lg/ij;->av(Lg/gzx;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {p0, v0}, Lg/ij;->ax(Lg/gzx;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 5

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0}, Lg/ij;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/ij;->zzn()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lg/ij;->zzd()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzi;->a:Lcom/google/android/gms/internal/ads/zzbu;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbu;->zzm:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v1, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbt;->zzf(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 2

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-wide v0, v0, Lg/gzx;->q:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzbv;
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzcd;
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzyk;->zzd:Lcom/google/android/gms/internal/ads/zzcd;

    return-object v0
.end method

.method public final zzp()V
    .locals 11

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0}, Lg/ij;->zzu()Z

    move-result v0

    iget-object v1, p0, Lg/ij;->al:Lg/gdw;

    invoke-virtual {v1}, Lg/gdw;->f()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/gdw;->h(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lg/ij;->ao(IIZ)V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget v2, v0, Lg/gzx;->h:I

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/gzx;->w(Lcom/google/android/gms/internal/ads/zzig;)Lg/gzx;

    move-result-object v0

    iget-object v2, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Lg/gzx;->x(I)Lg/gzx;

    move-result-object v4

    iget v0, p0, Lg/ij;->ae:I

    add-int/2addr v0, v1

    iput v0, p0, Lg/ij;->ae:I

    iget-object v0, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/s;->ah:Lcom/google/android/gms/internal/ads/zzdm;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdm;->zzb(I)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdl;->zza()V

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lg/ij;->ap(Lg/gzx;IZIJI)V

    return-void
.end method

.method public final zzq(Z)V
    .locals 2

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0}, Lg/ij;->zzf()I

    iget-object v0, p0, Lg/ij;->al:Lg/gdw;

    invoke-virtual {v0}, Lg/gdw;->f()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gdw;->h(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p1}, Lg/ij;->ao(IIZ)V

    return-void
.end method

.method public final zzr(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Lg/ij;->at()V

    invoke-virtual {p0, p1}, Lg/ij;->au(Landroid/view/Surface;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1, p1}, Lg/ij;->ay(II)V

    return-void
.end method

.method public final zzs(F)V
    .locals 3

    invoke-virtual {p0}, Lg/ij;->at()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lg/ij;->l:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lg/ij;->l:F

    iget-object v0, p0, Lg/ij;->al:Lg/gdw;

    iget v0, v0, Lg/gdw;->b:F

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lg/ij;->an(IILjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzix;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzix;-><init>(F)V

    iget-object p1, p0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzds;->zzc()V

    return-void
.end method

.method public final zzt()V
    .locals 3

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->al:Lg/gdw;

    invoke-virtual {p0}, Lg/ij;->zzu()Z

    invoke-virtual {v0}, Lg/gdw;->f()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gdw;->h(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/ij;->aw(Lcom/google/android/gms/internal/ads/zzig;)V

    sget v0, Lcom/google/android/gms/internal/ads/zzcu;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    iget-object v1, p0, Lg/ij;->i:Lg/gzx;

    iget-wide v1, v1, Lg/gzx;->t:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfzo;

    return-void
.end method

.method public final zzu()Z
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-boolean v0, v0, Lg/gzx;->g:Z

    return v0
.end method

.method public final zzv()Z
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzw()Z
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzx()I
    .locals 1

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->u:[Lcom/google/android/gms/internal/ads/zzln;

    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzlz;)V
    .locals 1

    iget-object v0, p0, Lg/ij;->j:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->zzt(Lcom/google/android/gms/internal/ads/zzlz;)V

    return-void
.end method

.method public final zzz()V
    .locals 6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zze:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzax;->zza()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Release "

    const-string v4, " [AndroidXMedia3/1.5.0-alpha01] ["

    const-string v5, "] ["

    invoke-static {v3, v0, v4, v1, v5}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/ij;->at()V

    iget-object v0, p0, Lg/ij;->al:Lg/gdw;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/gdw;->e:Lg/eec;

    invoke-virtual {v0}, Lg/gdw;->f()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/gdw;->h(I)V

    iget-object v0, p0, Lg/ij;->z:Lcom/google/android/gms/internal/ads/s;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/s;->am:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s;->t:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s;->ah:Lcom/google/android/gms/internal/ads/zzdm;

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzdm;->zzi(I)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjw;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzjw;-><init>(Lcom/google/android/gms/internal/ads/s;)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/s;->f:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/s;->az(Lcom/google/android/gms/internal/ads/zzjw;J)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/s;->am:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    new-instance v2, Lcom/google/android/gms/internal/ads/zziz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zziz;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzds;->zzd(ILcom/google/android/gms/internal/ads/zzdp;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzds;->zzc()V

    :cond_2
    iget-object v0, p0, Lg/ij;->ab:Lcom/google/android/gms/internal/ads/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzds;->zze()V

    iget-object v0, p0, Lg/ij;->d:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdm;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/ij;->x:Lcom/google/android/gms/internal/ads/zzyv;

    iget-object v2, p0, Lg/ij;->j:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzyr;->zzg(Lcom/google/android/gms/internal/ads/zzyq;)V

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    invoke-virtual {v0, v3}, Lg/gzx;->x(I)Lg/gzx;

    move-result-object v0

    iput-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-object v2, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v0, v2}, Lg/gzx;->y(Lcom/google/android/gms/internal/ads/zzur;)Lg/gzx;

    move-result-object v0

    iput-object v0, p0, Lg/ij;->i:Lg/gzx;

    iget-wide v2, v0, Lg/gzx;->t:J

    iput-wide v2, v0, Lg/gzx;->l:J

    iget-object v0, p0, Lg/ij;->i:Lg/gzx;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lg/gzx;->q:J

    iget-object v0, p0, Lg/ij;->j:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlw;->zzQ()V

    iget-object v0, p0, Lg/ij;->ak:Lcom/google/android/gms/internal/ads/zzyj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyj;->zzj()V

    iget-object v0, p0, Lg/ij;->c:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lg/ij;->c:Landroid/view/Surface;

    :cond_3
    sget v0, Lcom/google/android/gms/internal/ads/zzcu;->zza:I

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
