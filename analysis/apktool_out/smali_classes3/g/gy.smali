.class public final Lg/gy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public aa:J

.field public ab:J

.field public ac:Landroid/media/AudioTrack;

.field public ad:J

.field public ae:J

.field public af:Z

.field public ag:J

.field public b:J

.field public c:J

.field public d:Z

.field public e:J

.field public f:Lcom/google/android/gms/internal/ads/zzdc;

.field public g:J

.field public h:I

.field public i:J

.field public j:J

.field public k:Lg/crj;

.field public final l:Lg/ccp;

.field public m:J

.field public n:Z

.field public o:J

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:Z

.field public u:Ljava/lang/reflect/Method;

.field public v:F

.field public final w:[J

.field public x:Z

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lg/ccp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gy;->l:Lg/ccp;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lg/gy;->u:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lg/gy;->w:[J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object p1, p0, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method


# virtual methods
.method public final ah()J
    .locals 11

    iget-object v0, p0, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    iget-wide v2, p0, Lg/gy;->ae:J

    const/4 v4, 0x2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    iget-object v2, p0, Lg/gy;->ac:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-wide v0, p0, Lg/gy;->a:J

    return-wide v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lg/gy;->ae:J

    sub-long/2addr v0, v2

    iget v2, p0, Lg/gy;->v:F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzq(JF)J

    move-result-wide v0

    iget v2, p0, Lg/gy;->r:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzp(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lg/gy;->z:J

    iget-wide v4, p0, Lg/gy;->a:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lg/gy;->ag:J

    sub-long v2, v0, v2

    const-wide/16 v7, 0x5

    cmp-long v9, v2, v7

    if-ltz v9, :cond_b

    iget-object v2, p0, Lg/gy;->ac:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v7, v2

    iget-boolean v2, p0, Lg/gy;->af:Z

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_5

    if-ne v3, v4, :cond_3

    cmp-long v2, v7, v9

    if-nez v2, :cond_4

    iget-wide v2, p0, Lg/gy;->s:J

    iput-wide v2, p0, Lg/gy;->m:J

    goto :goto_0

    :cond_3
    move v4, v3

    :cond_4
    :goto_0
    iget-wide v2, p0, Lg/gy;->m:J

    add-long/2addr v7, v2

    move v3, v4

    :cond_5
    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v4, 0x1d

    if-gt v2, v4, :cond_8

    cmp-long v2, v7, v9

    if-nez v2, :cond_6

    iget-wide v7, p0, Lg/gy;->s:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_7

    const/4 v2, 0x3

    if-ne v3, v2, :cond_7

    iget-wide v2, p0, Lg/gy;->e:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_a

    iput-wide v0, p0, Lg/gy;->e:J

    goto :goto_1

    :cond_6
    move-wide v9, v7

    :cond_7
    iput-wide v5, p0, Lg/gy;->e:J

    move-wide v7, v9

    :cond_8
    iget-wide v2, p0, Lg/gy;->s:J

    cmp-long v4, v2, v7

    if-lez v4, :cond_9

    iget-wide v2, p0, Lg/gy;->aa:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lg/gy;->aa:J

    :cond_9
    iput-wide v7, p0, Lg/gy;->s:J

    :cond_a
    :goto_1
    iput-wide v0, p0, Lg/gy;->ag:J

    :cond_b
    iget-wide v0, p0, Lg/gy;->s:J

    iget-wide v2, p0, Lg/gy;->aa:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final ai(Z)J
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/gy;->ac:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    iget-object v2, v0, Lg/gy;->l:Lg/ccp;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const-wide/16 v16, 0x3e8

    const/4 v3, 0x3

    if-ne v1, v3, :cond_17

    iget-object v1, v0, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzc()J

    move-result-wide v4

    div-long v7, v4, v16

    iget-wide v4, v0, Lg/gy;->j:J

    sub-long v4, v7, v4

    const-wide/16 v9, 0x7530

    cmp-long v1, v4, v9

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Lg/gy;->ah()J

    move-result-wide v4

    iget v1, v0, Lg/gy;->r:I

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v4

    cmp-long v1, v4, v13

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v1, v0, Lg/gy;->p:I

    iget v6, v0, Lg/gy;->v:F

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzr(JF)J

    move-result-wide v4

    sub-long/2addr v4, v7

    iget-object v6, v0, Lg/gy;->w:[J

    aput-wide v4, v6, v1

    iget v1, v0, Lg/gy;->p:I

    add-int/2addr v1, v15

    const/16 v4, 0xa

    rem-int/2addr v1, v4

    iput v1, v0, Lg/gy;->p:I

    iget v1, v0, Lg/gy;->q:I

    if-ge v1, v4, :cond_1

    add-int/2addr v1, v15

    iput v1, v0, Lg/gy;->q:I

    :cond_1
    iput-wide v7, v0, Lg/gy;->j:J

    iput-wide v13, v0, Lg/gy;->c:J

    const/4 v1, 0x0

    :goto_0
    iget v4, v0, Lg/gy;->q:I

    if-ge v1, v4, :cond_2

    iget-wide v9, v0, Lg/gy;->c:J

    int-to-long v4, v4

    aget-wide v18, v6, v1

    div-long v18, v18, v4

    add-long v4, v18, v9

    iput-wide v4, v0, Lg/gy;->c:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lg/gy;->af:Z

    if-nez v1, :cond_17

    iget-object v1, v0, Lg/gy;->k:Lg/crj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lg/crj;->c:Lg/dxp;

    iget-wide v5, v1, Lg/crj;->b:J

    sub-long v5, v7, v5

    iget-wide v9, v1, Lg/crj;->a:J

    const-wide/32 v18, 0x7a120

    cmp-long v20, v5, v9

    if-gez v20, :cond_3

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_3
    iput-wide v7, v1, Lg/crj;->b:J

    iget-object v5, v4, Lg/dxp;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/AudioTrack;

    iget-object v6, v4, Lg/dxp;->b:Ljava/lang/Object;

    check-cast v6, Landroid/media/AudioTimestamp;

    invoke-virtual {v5, v6}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-wide v9, v6, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v13, v4, Lg/dxp;->d:J

    cmp-long v21, v13, v9

    if-lez v21, :cond_4

    iget-wide v13, v4, Lg/dxp;->c:J

    const-wide/16 v21, 0x1

    add-long v13, v13, v21

    iput-wide v13, v4, Lg/dxp;->c:J

    :cond_4
    iput-wide v9, v4, Lg/dxp;->d:J

    iget-wide v13, v4, Lg/dxp;->c:J

    const/16 v21, 0x20

    shl-long v13, v13, v21

    add-long/2addr v9, v13

    iput-wide v9, v4, Lg/dxp;->e:J

    :cond_5
    iget v9, v1, Lg/crj;->e:I

    if-eqz v9, :cond_d

    if-eq v9, v15, :cond_a

    if-eq v9, v11, :cond_8

    if-eq v9, v3, :cond_6

    goto :goto_4

    :cond_6
    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v12}, Lg/crj;->g(I)V

    :goto_2
    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    :goto_3
    goto :goto_2

    :cond_9
    invoke-virtual {v1, v12}, Lg/crj;->g(I)V

    goto :goto_1

    :cond_a
    if-eqz v5, :cond_c

    iget-wide v5, v4, Lg/dxp;->e:J

    iget-wide v9, v1, Lg/crj;->d:J

    cmp-long v3, v5, v9

    if-gtz v3, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v11}, Lg/crj;->g(I)V

    goto :goto_2

    :cond_c
    invoke-virtual {v1, v12}, Lg/crj;->g(I)V

    goto :goto_1

    :cond_d
    if-eqz v5, :cond_f

    iget-wide v5, v6, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v5, v5, v16

    iget-wide v9, v1, Lg/crj;->f:J

    cmp-long v3, v5, v9

    if-gez v3, :cond_e

    goto :goto_1

    :cond_e
    iget-wide v5, v4, Lg/dxp;->e:J

    iput-wide v5, v1, Lg/crj;->d:J

    invoke-virtual {v1, v15}, Lg/crj;->g(I)V

    goto :goto_2

    :cond_f
    iget-wide v5, v1, Lg/crj;->f:J

    sub-long v5, v7, v5

    cmp-long v9, v5, v18

    if-gtz v9, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v1, v3}, Lg/crj;->g(I)V

    goto :goto_1

    :goto_4
    if-nez v5, :cond_11

    const-wide/32 v21, 0x4c4b40

    goto :goto_5

    :cond_11
    iget-object v3, v4, Lg/dxp;->b:Ljava/lang/Object;

    check-cast v3, Landroid/media/AudioTimestamp;

    iget-wide v5, v3, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v5, v5, v16

    iget-wide v3, v4, Lg/dxp;->e:J

    invoke-virtual {v0}, Lg/gy;->ah()J

    move-result-wide v9

    const-wide/32 v21, 0x4c4b40

    iget v13, v0, Lg/gy;->r:I

    invoke-static {v9, v10, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v9

    sub-long v13, v5, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const/4 v15, 0x4

    cmp-long v23, v13, v21

    if-lez v23, :cond_12

    invoke-virtual/range {v2 .. v10}, Lg/ccp;->zzd(JJJJ)V

    invoke-virtual {v1, v15}, Lg/crj;->g(I)V

    goto :goto_5

    :cond_12
    iget v13, v0, Lg/gy;->r:I

    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v23, v13, v21

    if-lez v23, :cond_13

    invoke-virtual/range {v2 .. v10}, Lg/ccp;->zzc(JJJJ)V

    invoke-virtual {v1, v15}, Lg/crj;->g(I)V

    goto :goto_5

    :cond_13
    iget v3, v1, Lg/crj;->e:I

    if-ne v3, v15, :cond_14

    invoke-virtual {v1, v12}, Lg/crj;->g(I)V

    :cond_14
    :goto_5
    iget-boolean v1, v0, Lg/gy;->t:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lg/gy;->u:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_17

    iget-wide v3, v0, Lg/gy;->y:J

    sub-long v3, v7, v3

    cmp-long v5, v3, v18

    if-ltz v5, :cond_17

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v0, Lg/gy;->ac:Landroid/media/AudioTrack;

    if-eqz v4, :cond_15

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget v4, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    mul-long v4, v4, v16

    iget-wide v9, v0, Lg/gy;->b:J

    sub-long/2addr v4, v9

    iput-wide v4, v0, Lg/gy;->g:J

    const-wide/16 v9, 0x0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lg/gy;->g:J

    cmp-long v1, v4, v21

    if-lez v1, :cond_16

    invoke-virtual {v2, v4, v5}, Lg/ccp;->zza(J)V

    iput-wide v9, v0, Lg/gy;->g:J

    goto :goto_6

    :cond_15
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v3, v0, Lg/gy;->u:Ljava/lang/reflect/Method;

    :cond_16
    :goto_6
    iput-wide v7, v0, Lg/gy;->y:J

    :cond_17
    :goto_7
    iget-object v1, v0, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzc()J

    move-result-wide v3

    div-long v3, v3, v16

    iget-object v1, v0, Lg/gy;->k:Lg/crj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lg/crj;->c:Lg/dxp;

    iget v1, v1, Lg/crj;->e:I

    if-ne v1, v11, :cond_18

    const/4 v12, 0x1

    :cond_18
    if-eqz v12, :cond_19

    iget-wide v6, v5, Lg/dxp;->e:J

    iget v1, v0, Lg/gy;->r:I

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v6

    iget-object v1, v5, Lg/dxp;->b:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioTimestamp;

    iget-wide v8, v1, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v8, v8, v16

    sub-long v8, v3, v8

    iget v1, v0, Lg/gy;->v:F

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzq(JF)J

    move-result-wide v8

    add-long/2addr v8, v6

    goto :goto_a

    :cond_19
    iget v1, v0, Lg/gy;->q:I

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lg/gy;->ah()J

    move-result-wide v5

    iget v1, v0, Lg/gy;->r:I

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v5

    :goto_8
    move-wide v8, v5

    goto :goto_9

    :cond_1a
    iget-wide v5, v0, Lg/gy;->c:J

    add-long/2addr v5, v3

    iget v1, v0, Lg/gy;->v:F

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzq(JF)J

    move-result-wide v5

    goto :goto_8

    :goto_9
    if-nez p1, :cond_1b

    iget-wide v5, v0, Lg/gy;->g:J

    sub-long/2addr v8, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_1b
    :goto_a
    iget-boolean v1, v0, Lg/gy;->n:Z

    if-eq v1, v12, :cond_1c

    iget-wide v5, v0, Lg/gy;->o:J

    iput-wide v5, v0, Lg/gy;->ab:J

    iget-wide v5, v0, Lg/gy;->i:J

    iput-wide v5, v0, Lg/gy;->ad:J

    :cond_1c
    iget-wide v5, v0, Lg/gy;->ab:J

    sub-long v5, v3, v5

    const-wide/32 v10, 0xf4240

    cmp-long v1, v5, v10

    if-gez v1, :cond_1d

    iget-wide v13, v0, Lg/gy;->ad:J

    iget v1, v0, Lg/gy;->v:F

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzq(JF)J

    move-result-wide v18

    add-long v18, v18, v13

    mul-long v5, v5, v16

    div-long/2addr v5, v10

    mul-long v8, v8, v5

    sub-long v5, v16, v5

    mul-long v5, v5, v18

    add-long/2addr v5, v8

    div-long v8, v5, v16

    :cond_1d
    iget-boolean v1, v0, Lg/gy;->x:Z

    if-nez v1, :cond_1e

    iget-wide v5, v0, Lg/gy;->i:J

    cmp-long v1, v8, v5

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/gy;->x:Z

    sub-long v5, v8, v5

    iget v1, v0, Lg/gy;->v:F

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzr(JF)J

    move-result-wide v5

    iget-object v1, v0, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zza()J

    move-result-wide v10

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v5

    sub-long/2addr v10, v5

    invoke-virtual {v2, v10, v11}, Lg/ccp;->zzb(J)V

    :cond_1e
    iput-wide v3, v0, Lg/gy;->o:J

    iput-wide v8, v0, Lg/gy;->i:J

    iput-boolean v12, v0, Lg/gy;->n:Z

    return-wide v8
.end method

.method public final aj(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    iput-object p1, p0, Lg/gy;->ac:Landroid/media/AudioTrack;

    iput p5, p0, Lg/gy;->h:I

    new-instance v0, Lg/crj;

    invoke-direct {v0, p1}, Lg/crj;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lg/gy;->k:Lg/crj;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lg/gy;->r:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    sget p2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_0

    const/4 p2, 0x5

    const/4 v0, 0x1

    if-eq p3, p2, :cond_1

    const/4 p2, 0x6

    if-ne p3, p2, :cond_0

    const/4 p3, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lg/gy;->af:Z

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzen;->zzJ(I)Z

    move-result p2

    iput-boolean p2, p0, Lg/gy;->t:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_2

    div-int/2addr p5, p4

    int-to-long p2, p5

    iget p4, p0, Lg/gy;->r:I

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide p2

    goto :goto_1

    :cond_2
    move-wide p2, v0

    :goto_1
    iput-wide p2, p0, Lg/gy;->b:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lg/gy;->s:J

    iput-wide p2, p0, Lg/gy;->aa:J

    iput-wide p2, p0, Lg/gy;->m:J

    iput-boolean p1, p0, Lg/gy;->d:Z

    iput-wide v0, p0, Lg/gy;->ae:J

    iput-wide v0, p0, Lg/gy;->e:J

    iput-wide p2, p0, Lg/gy;->y:J

    iput-wide p2, p0, Lg/gy;->g:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lg/gy;->v:F

    return-void
.end method

.method public final ak(J)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/gy;->ai(Z)J

    move-result-wide v1

    iget v3, p0, Lg/gy;->r:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzp(JI)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    iget-boolean p1, p0, Lg/gy;->af:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/gy;->ac:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lg/gy;->ah()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
