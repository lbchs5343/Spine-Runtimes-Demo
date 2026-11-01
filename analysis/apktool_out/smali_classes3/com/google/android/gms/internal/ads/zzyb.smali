.class public final Lcom/google/android/gms/internal/ads/zzyb;
.super Lcom/google/android/gms/internal/ads/zzyg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlp;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzgaz;

.field public static final synthetic zzb:I


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzwx;

.field public final c:Z

.field public d:Lcom/google/android/gms/internal/ads/zzxp;

.field public final e:Lg/dxb;

.field public final f:Ljava/lang/Object;

.field public g:Lcom/google/android/gms/internal/ads/zzg;

.field public final zza:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxb;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgaz;->zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyb;->a:Lcom/google/android/gms/internal/ads/zzgaz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwx;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxp;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyg;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzyb;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->b:Lcom/google/android/gms/internal/ads/zzwx;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->g:Lcom/google/android/gms/internal/ads/zzg;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->c:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_4

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lg/dxb;

    invoke-static {v0}, Lg/grm;->h(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lg/dxb;->c:Ljava/lang/Object;

    invoke-static {v0}, Lg/grm;->e(Landroid/media/Spatializer;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v2, Lg/dxb;->b:Z

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxp;->zzM:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static final h(ILcom/google/android/gms/internal/ads/zzyf;[[[ILcom/google/android/gms/internal/ads/zzxv;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyf;->zzd(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v8

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzxv;->zza(ILcom/google/android/gms/internal/ads/zzbw;[I)Ljava/util/List;

    move-result-object v9

    iget v11, v8, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    :goto_2
    iget v13, v8, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v12, v13, :cond_5

    add-int/lit8 v13, v12, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/cbw;

    invoke-virtual {v14}, Lg/cbw;->s()I

    move-result v15

    aget-boolean v12, v11, v12

    if-nez v12, :cond_4

    if-nez v15, :cond_0

    goto :goto_5

    :cond_0
    const/4 v12, 0x1

    if-ne v15, v12, :cond_1

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v12

    goto :goto_4

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v13

    const/16 v16, 0x1

    :goto_3
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v12, v2, :cond_3

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cbw;

    invoke-virtual {v2}, Lg/cbw;->s()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {v14, v2}, Lg/cbw;->t(Lg/cbw;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-boolean v16, v11, v12

    :cond_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object v12, v15

    :goto_4
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_5
    move-object/from16 v0, p1

    move v12, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cbw;

    iget v3, v3, Lg/cbw;->v:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cbw;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v4, v0, Lg/cbw;->y:Lcom/google/android/gms/internal/ads/zzbw;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzyc;-><init>(Lcom/google/android/gms/internal/ads/zzbw;[II)V

    iget v0, v0, Lg/cbw;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/String;Z)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyb;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzyb;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget p2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzad;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzxp;->zzM:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->c:Z

    if-nez v1, :cond_5

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "audio/eac3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v6, "audio/ac4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v6, "audio/ac3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v6, "audio/eac3-joc"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v7, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v1, v4, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    if-eqz v1, :cond_5

    iget-boolean v1, v1, Lg/dxb;->b:Z

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v1, v4, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lg/dxb;->b:Z

    if-eqz v3, :cond_4

    iget-object v1, v1, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v1, Landroid/media/Spatializer;

    invoke-static {v1}, Lg/grm;->i(Landroid/media/Spatializer;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    iget-object v1, v1, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v1, Landroid/media/Spatializer;

    invoke-static {v1}, Lg/grm;->k(Landroid/media/Spatializer;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyb;->g:Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {v1, p1, p0}, Lg/dxb;->e(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzg;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v0

    return v2

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzxp;->zzM:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->c:Z

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lg/dxb;->b:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyj;->m:Lcom/google/android/gms/internal/ads/zzyi;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyi;->zzj()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzyf;[[[I[I)Landroid/util/Pair;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzxp;->zzM:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v7, 0x20

    if-lt v6, v7, :cond_1

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v6, Lg/dxb;->a:Ljava/lang/Object;

    check-cast v8, Lg/gky;

    if-nez v8, :cond_1

    iget-object v8, v6, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v8, Landroid/os/Handler;

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lg/gky;

    invoke-direct {v8, v1}, Lg/gky;-><init>(Lcom/google/android/gms/internal/ads/zzyb;)V

    iput-object v8, v6, Lg/dxb;->a:Ljava/lang/Object;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v6, Lg/dxb;->d:Ljava/lang/Object;

    iget-object v7, v6, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v7, Landroid/media/Spatializer;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzxr;

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzxr;-><init>(Landroid/os/Handler;)V

    iget-object v6, v6, Lg/dxb;->a:Ljava/lang/Object;

    check-cast v6, Lg/gky;

    invoke-static {v7, v9, v6}, Lg/grm;->d(Landroid/media/Spatializer;Lcom/google/android/gms/internal/ads/zzxr;Lg/gky;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_28

    :cond_1
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/zzyc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzxh;

    invoke-direct {v7, v5, v3}, Lcom/google/android/gms/internal/ads/zzxh;-><init>(Lcom/google/android/gms/internal/ads/zzxp;[I)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzxi;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzxi;-><init>()V

    invoke-static {v4, v0, v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzyb;->h(ILcom/google/android/gms/internal/ads/zzyf;[[[ILcom/google/android/gms/internal/ads/zzxv;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    const/4 v8, 0x4

    if-nez v7, :cond_2

    new-instance v10, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v10, v5}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(Lcom/google/android/gms/internal/ads/zzxp;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzxe;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzxe;-><init>()V

    invoke-static {v8, v0, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzyb;->h(ILcom/google/android/gms/internal/ads/zzyf;[[[ILcom/google/android/gms/internal/ads/zzxv;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v10

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzyc;

    aput-object v10, v6, v7

    :cond_3
    :goto_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_3

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzyc;

    aput-object v7, v6, v10

    goto :goto_2

    :goto_3
    const/4 v10, 0x1

    if-ge v7, v4, :cond_6

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result v12

    if-ne v12, v4, :cond_5

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyf;->zzd(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v12

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-lez v12, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_4
    new-instance v12, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-direct {v12, v1, v5, v7, v3}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzxp;Z[I)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzxg;-><init>()V

    invoke-static {v10, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzyb;->h(ILcom/google/android/gms/internal/ads/zzyf;[[[ILcom/google/android/gms/internal/ads/zzxv;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v12, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzyc;

    aput-object v12, v6, v7

    :cond_7
    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzyc;->zzb:[I

    aget v3, v3, v11

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    :goto_5
    new-instance v7, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-direct {v7, v5, v3}, Lcom/google/android/gms/internal/ads/zzxj;-><init>(Lcom/google/android/gms/internal/ads/zzxp;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzxk;-><init>()V

    const/4 v12, 0x3

    invoke-static {v12, v0, v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzyb;->h(ILcom/google/android/gms/internal/ads/zzyf;[[[ILcom/google/android/gms/internal/ads/zzxv;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzyc;

    aput-object v3, v6, v7

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_10

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result v7

    if-eq v7, v4, :cond_f

    if-eq v7, v10, :cond_f

    if-eq v7, v12, :cond_f

    if-eq v7, v8, :cond_f

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyf;->zzd(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v7

    aget-object v13, v2, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_7
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-ge v14, v8, :cond_d

    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v8

    aget-object v19, v13, v14

    move-object/from16 v9, v17

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_8
    iget v10, v8, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v12, v10, :cond_c

    aget v10, v19, v12

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzxp;->zzN:Z

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v4

    new-instance v10, Lg/fp;

    aget v11, v19, v12

    invoke-direct {v10, v11, v4}, Lg/fp;-><init>(ILcom/google/android/gms/internal/ads/zzad;)V

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzd;->zzj()Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v4

    iget-boolean v11, v10, Lg/fp;->b:Z

    iget-boolean v2, v9, Lg/fp;->b:Z

    invoke-virtual {v4, v11, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v2

    iget-boolean v4, v10, Lg/fp;->a:Z

    iget-boolean v11, v9, Lg/fp;->a:Z

    invoke-virtual {v2, v4, v11}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zza()I

    move-result v2

    if-lez v2, :cond_b

    :cond_a
    move-object v15, v8

    move-object v9, v10

    move/from16 v16, v12

    :cond_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    const/4 v4, 0x2

    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v17, v9

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x3

    goto :goto_7

    :cond_d
    const/16 v17, 0x0

    if-nez v15, :cond_e

    move-object/from16 v2, v17

    goto :goto_9

    :cond_e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyc;

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v2, v15, v4, v7}, Lcom/google/android/gms/internal/ads/zzyc;-><init>(Lcom/google/android/gms/internal/ads/zzbw;[II)V

    :goto_9
    aput-object v2, v6, v3

    goto :goto_a

    :cond_f
    const/16 v17, 0x0

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    const/4 v4, 0x2

    const/4 v8, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x3

    goto/16 :goto_6

    :cond_10
    const/16 v17, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_b
    const/4 v3, 0x2

    if-ge v7, v3, :cond_13

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyf;->zzd(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v3

    const/4 v4, 0x0

    :goto_c
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-ge v4, v8, :cond_12

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/zzcb;->zzA:Lcom/google/android/gms/internal/ads/zzfzr;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzfzr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzbx;

    if-nez v8, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_11
    throw v17

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyf;->zze()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v3

    const/4 v7, 0x0

    :goto_d
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-ge v7, v4, :cond_15

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v4

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzcb;->zzA:Lcom/google/android/gms/internal/ads/zzfzr;

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzfzr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbx;

    if-nez v4, :cond_14

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_14
    throw v17

    :cond_15
    const/4 v3, 0x2

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v3, :cond_17

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbx;

    if-nez v4, :cond_16

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_16
    throw v17

    :cond_17
    const/4 v7, 0x0

    :goto_f
    if-ge v7, v3, :cond_1a

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyf;->zzd(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Lcom/google/android/gms/internal/ads/zzxp;->zzg(ILcom/google/android/gms/internal/ads/zzwr;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v5, v7, v2}, Lcom/google/android/gms/internal/ads/zzxp;->zze(ILcom/google/android/gms/internal/ads/zzwr;)Lcom/google/android/gms/internal/ads/zzxq;

    move-result-object v2

    if-nez v2, :cond_19

    aput-object v17, v6, v7

    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    goto :goto_f

    :cond_19
    throw v17

    :cond_1a
    const/4 v7, 0x0

    :goto_11
    if-ge v7, v3, :cond_1d

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result v2

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzxp;->zzf(I)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzcb;->zzB:Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfzj;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    aput-object v17, v6, v7

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    goto :goto_11

    :cond_1d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyb;->b:Lcom/google/android/gms/internal/ads/zzwx;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzyj;->n:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_12
    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v7, v10, :cond_1f

    aget-object v10, v6, v7

    if-eqz v10, :cond_1e

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzyc;->zzb:[I

    array-length v10, v10

    if-le v10, v11, :cond_1e

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzww;

    invoke-direct {v11, v8, v9, v8, v9}, Lcom/google/android/gms/internal/ads/zzww;-><init>(JJ)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1e
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1f
    new-array v7, v10, [[J

    const/4 v12, 0x0

    :goto_14
    const-wide/16 v13, -0x1

    if-ge v12, v10, :cond_23

    aget-object v15, v6, v12

    if-nez v15, :cond_20

    new-array v13, v4, [J

    aput-object v13, v7, v12

    const/16 p2, 0x0

    goto :goto_16

    :cond_20
    const/16 p2, 0x0

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzyc;->zzb:[I

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v7, v12

    const/4 v4, 0x0

    :goto_15
    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzyc;->zzb:[I

    array-length v9, v8

    if-ge v4, v9, :cond_22

    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzbw;

    aget v8, v8, v4

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    int-to-long v8, v8

    aget-object v16, v7, v12

    cmp-long v20, v8, v13

    if-nez v20, :cond_21

    const-wide/16 v8, 0x0

    :cond_21
    aput-wide v8, v16, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_22
    aget-object v4, v7, v12

    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    :goto_16
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    goto :goto_14

    :cond_23
    const/16 p2, 0x0

    new-array v4, v10, [I

    new-array v8, v10, [J

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v10, :cond_25

    aget-object v12, v7, v9

    array-length v15, v12

    if-nez v15, :cond_24

    const-wide/16 v15, 0x0

    goto :goto_18

    :cond_24
    aget-wide v15, v12, p2

    :goto_18
    aput-wide v15, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_25
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzwy;->a(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgau;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgas;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzgas;->zzb(I)Lcom/google/android/gms/internal/ads/zzgaq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgaq;->zza()Lcom/google/android/gms/internal/ads/zzfzz;

    move-result-object v9

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v10, :cond_2b

    aget-object v15, v7, v12

    array-length v15, v15

    if-gt v15, v11, :cond_26

    move-object v10, v2

    move-wide/from16 v18, v13

    const/16 p3, 0x1

    goto :goto_1e

    :cond_26
    const/16 p3, 0x1

    new-array v11, v15, [D

    move-wide/from16 v18, v13

    const/4 v13, 0x0

    :goto_1a
    aget-object v14, v7, v12

    array-length v10, v14

    const-wide/16 v20, 0x0

    if-ge v13, v10, :cond_28

    move-object v10, v2

    aget-wide v1, v14, v13

    cmp-long v14, v1, v18

    if-nez v14, :cond_27

    goto :goto_1b

    :cond_27
    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v20

    :goto_1b
    aput-wide v20, v11, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v2, v10

    const/4 v10, 0x2

    goto :goto_1a

    :cond_28
    move-object v10, v2

    add-int/lit8 v15, v15, -0x1

    aget-wide v1, v11, v15

    aget-wide v13, v11, p2

    sub-double/2addr v1, v13

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v15, :cond_2a

    aget-wide v22, v11, v13

    add-int/lit8 v13, v13, 0x1

    aget-wide v24, v11, v13

    add-double v22, v22, v24

    cmpl-double v14, v1, v20

    if-nez v14, :cond_29

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    goto :goto_1d

    :cond_29
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    aget-wide v24, v11, p2

    sub-double v22, v22, v24

    div-double v22, v22, v1

    :goto_1d
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-wide/from16 v22, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v14, v1}, Lcom/google/android/gms/internal/ads/zzgam;->zzq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-wide/from16 v1, v22

    goto :goto_1c

    :cond_2a
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide/from16 v13, v18

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_19

    :cond_2b
    move-object v10, v2

    const/16 p3, 0x1

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzgam;->zzr()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v2, v9, :cond_2c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v11, v4, v9

    add-int/lit8 v11, v11, 0x1

    aput v11, v4, v9

    aget-object v12, v7, v9

    aget-wide v11, v12, v11

    aput-wide v11, v8, v9

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzwy;->a(Ljava/util/ArrayList;[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_20
    if-ge v1, v2, :cond_2e

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2d

    aget-wide v11, v8, v1

    add-long/2addr v11, v11

    aput-wide v11, v8, v1

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2e
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzwy;->a(Ljava/util/ArrayList;[J)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    const/4 v4, 0x0

    :goto_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_30

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfzl;

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    goto :goto_22

    :cond_2f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    :goto_22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Lcom/google/android/gms/internal/ads/zzyd;

    const/4 v7, 0x0

    :goto_23
    if-ge v7, v3, :cond_34

    aget-object v3, v6, v7

    if-eqz v3, :cond_31

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzyc;->zzb:[I

    array-length v8, v4

    if-nez v8, :cond_32

    :cond_31
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_25

    :cond_32
    const/4 v9, 0x1

    if-ne v8, v9, :cond_33

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzbw;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzye;

    const/4 v8, 0x0

    aget v13, v4, v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzye;-><init>(Lcom/google/android/gms/internal/ads/zzbw;IIILjava/lang/Object;)V

    goto :goto_24

    :cond_33
    const/4 v8, 0x0

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzbw;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzwy;

    invoke-direct {v12, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(Lcom/google/android/gms/internal/ads/zzbw;[II)V

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfzo;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-object v11, v12

    :goto_24
    aput-object v11, v2, v7

    :goto_25
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    goto :goto_23

    :cond_34
    const/4 v8, 0x0

    new-array v1, v3, [Lcom/google/android/gms/internal/ads/zzlr;

    const/4 v11, 0x0

    :goto_26
    if-ge v11, v3, :cond_38

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result v4

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzxp;->zzf(I)Z

    move-result v6

    if-nez v6, :cond_35

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzcb;->zzB:Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfzj;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_35
    move-object/from16 v4, v17

    goto :goto_27

    :cond_36
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result v4

    const/4 v6, -0x2

    if-eq v4, v6, :cond_37

    aget-object v4, v2, v11

    if-eqz v4, :cond_35

    :cond_37
    sget-object v4, Lcom/google/android/gms/internal/ads/zzlr;->zza:Lcom/google/android/gms/internal/ads/zzlr;

    :goto_27
    aput-object v4, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_38
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :goto_28
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzln;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxp;->zzQ:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzlp;
    .locals 0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzxp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzj()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->e:Lg/dxb;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lg/dxb;->a:Ljava/lang/Object;

    check-cast v2, Lg/gky;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v3, Landroid/media/Spatializer;

    invoke-static {v3, v2}, Lg/grm;->f(Landroid/media/Spatializer;Lg/gky;)V

    iget-object v2, v1, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, v1, Lg/dxb;->d:Ljava/lang/Object;

    iput-object v3, v1, Lg/dxb;->a:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzyj;->zzj()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->g:Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzg;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyb;->g:Lcom/google/android/gms/internal/ads/zzg;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyb;->k()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzxo;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzxp;-><init>(Lcom/google/android/gms/internal/ads/zzxo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyb;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzxp;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->d:Lcom/google/android/gms/internal/ads/zzxp;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzxp;->zzM:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyb;->zza:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyj;->m:Lcom/google/android/gms/internal/ads/zzyi;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyi;->zzj()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
