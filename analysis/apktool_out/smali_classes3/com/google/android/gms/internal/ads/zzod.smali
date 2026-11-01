.class public final Lcom/google/android/gms/internal/ads/zzod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoh;


# static fields
.field public static final a:Ljava/util/Random;

.field public static final zza:Lcom/google/android/gms/internal/ads/zzfxg;


# instance fields
.field public b:Lcom/google/android/gms/internal/ads/zzog;

.field public c:Lcom/google/android/gms/internal/ads/zzbv;

.field public final d:Lcom/google/android/gms/internal/ads/zzbu;

.field public e:Ljava/lang/String;

.field public final f:Lcom/google/android/gms/internal/ads/zzbt;

.field public final g:Ljava/util/HashMap;

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzob;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzob;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzfxg;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzod;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfxg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->d:Lcom/google/android/gms/internal/ads/zzbu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->f:Lcom/google/android/gms/internal/ads/zzbt;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->c:Lcom/google/android/gms/internal/ads/zzbv;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzod;->h:J

    return-void
.end method

.method public static zzd()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    sget-object v1, Lcom/google/android/gms/internal/ads/zzod;->a:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final i(ILcom/google/android/gms/internal/ads/zzur;)Lg/fef;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fef;

    iget-wide v9, v8, Lg/fef;->f:J

    iget-object v11, v8, Lg/fef;->a:Lcom/google/android/gms/internal/ads/zzur;

    const-wide/16 v12, -0x1

    cmp-long v14, v9, v12

    if-nez v14, :cond_2

    iget v9, v8, Lg/fef;->e:I

    if-ne v1, v9, :cond_2

    if-eqz v2, :cond_2

    iget-object v9, v8, Lg/fef;->g:Lcom/google/android/gms/internal/ads/zzod;

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    move-wide/from16 v16, v12

    iget-object v12, v9, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fef;

    if-eqz v10, :cond_1

    iget-wide v12, v10, Lg/fef;->f:J

    cmp-long v10, v12, v16

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v9, v9, Lcom/google/android/gms/internal/ads/zzod;->h:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v9

    :goto_1
    cmp-long v9, v14, v12

    if-ltz v9, :cond_3

    iput-wide v14, v8, Lg/fef;->f:J

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v12

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    iget v9, v8, Lg/fef;->e:I

    if-ne v1, v9, :cond_0

    goto :goto_3

    :cond_4
    if-nez v11, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v9

    if-nez v9, :cond_0

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-wide v12, v8, Lg/fef;->f:J

    cmp-long v14, v9, v12

    if-nez v14, :cond_0

    goto :goto_3

    :cond_5
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-wide v12, v11, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    cmp-long v14, v9, v12

    if-nez v14, :cond_0

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v10, v11, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    if-ne v9, v10, :cond_0

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    iget v10, v11, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    if-ne v9, v10, :cond_0

    :goto_3
    iget-wide v9, v8, Lg/fef;->f:J

    cmp-long v12, v9, v16

    if-eqz v12, :cond_7

    cmp-long v12, v9, v5

    if-gez v12, :cond_6

    goto :goto_4

    :cond_6
    if-nez v12, :cond_0

    sget v9, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v9, v7, Lg/fef;->a:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    move-object v7, v8

    goto/16 :goto_0

    :cond_7
    :goto_4
    move-object v7, v8

    move-wide v5, v9

    goto/16 :goto_0

    :cond_8
    if-nez v7, :cond_9

    const/16 v4, 0xc

    new-array v4, v4, [B

    sget-object v5, Lcom/google/android/gms/internal/ads/zzod;->a:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextBytes([B)V

    const/16 v5, 0xa

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lg/fef;

    invoke-direct {v5, v0, v4, v1, v2}, Lg/fef;-><init>(Lcom/google/android/gms/internal/ads/zzod;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzur;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :cond_9
    return-object v7
.end method

.method public final j(Lg/fef;)V
    .locals 4

    iget-wide v0, p1, Lg/fef;->f:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzod;->h:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzlx;)V
    .locals 6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fef;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzod;->j(Lg/fef;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fef;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzc:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzod;->i(ILcom/google/android/gms/internal/ads/zzur;)Lg/fef;

    move-result-object v1

    iget-object v1, v1, Lg/fef;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzod;->zzi(Lcom/google/android/gms/internal/ads/zzlx;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-wide v3, v0, Lg/fef;->f:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    iget-object v0, v0, Lg/fef;->a:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    if-ne v1, v3, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzur;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;J)V

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzc:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzod;->i(ILcom/google/android/gms/internal/ads/zzur;)Lg/fef;

    :cond_2
    return-void
.end method

.method public final declared-synchronized zze()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->f:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzod;->i(ILcom/google/android/gms/internal/ads/zzur;)Lg/fef;

    move-result-object p1

    iget-object p1, p1, Lg/fef;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzlx;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fef;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzod;->j(Lg/fef;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fef;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-boolean v2, v1, Lg/fef;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lg/fef;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzog;->zzd(Lcom/google/android/gms/internal/ads/zzlx;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    return-void
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/internal/ads/zzlx;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fef;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    iget-wide v4, v1, Lg/fef;->f:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzod;->h:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :goto_0
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fef;

    if-eqz v0, :cond_2

    iget-wide v4, v0, Lg/fef;->f:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    iget v0, v0, Lg/fef;->e:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzc:I

    if-ne v0, v1, :cond_6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzc:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzod;->i(ILcom/google/android/gms/internal/ads/zzur;)Lg/fef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lg/fef;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {v6, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;JI)V

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzc:I

    invoke-virtual {p0, v1, v6}, Lcom/google/android/gms/internal/ads/zzod;->i(ILcom/google/android/gms/internal/ads/zzur;)Lg/fef;

    move-result-object v1

    iget-boolean v3, v1, Lg/fef;->b:Z

    if-nez v3, :cond_4

    iput-boolean v2, v1, Lg/fef;->b:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzod;->f:Lcom/google/android/gms/internal/ads/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->f:Lcom/google/android/gms/internal/ads/zzbt;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbt;->zzg(I)J

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    :cond_4
    iget-boolean v1, v0, Lg/fef;->b:Z

    if-nez v1, :cond_5

    iput-boolean v2, v0, Lg/fef;->b:Z

    :cond_5
    iget-object v1, v0, Lg/fef;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lg/fef;->d:Z

    if-nez v1, :cond_6

    iput-boolean v2, v0, Lg/fef;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    iget-object v0, v0, Lg/fef;->c:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzog;->zzc(Lcom/google/android/gms/internal/ads/zzlx;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :cond_7
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/internal/ads/zzlx;I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fef;

    invoke-virtual {v1, p1}, Lg/fef;->h(Lcom/google/android/gms/internal/ads/zzlx;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-boolean v2, v1, Lg/fef;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lg/fef;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v4, v1, Lg/fef;->d:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzod;->j(Lg/fef;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    iget-object v1, v1, Lg/fef;->c:Ljava/lang/String;

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzog;->zzd(Lcom/google/android/gms/internal/ads/zzlx;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzod;->k(Lcom/google/android/gms/internal/ads/zzlx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/internal/ads/zzlx;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->c:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->c:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzod;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fef;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzod;->c:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v2, v0, v3}, Lg/fef;->i(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzbv;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lg/fef;->h(Lcom/google/android/gms/internal/ads/zzlx;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-boolean v3, v2, Lg/fef;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lg/fef;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzod;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzod;->j(Lg/fef;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzod;->b:Lcom/google/android/gms/internal/ads/zzog;

    iget-object v2, v2, Lg/fef;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzog;->zzd(Lcom/google/android/gms/internal/ads/zzlx;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzod;->k(Lcom/google/android/gms/internal/ads/zzlx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
