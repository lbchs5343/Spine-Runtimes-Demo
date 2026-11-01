.class public final Lcom/google/android/gms/internal/ads/zzaaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzch;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzzn;


# instance fields
.field public b:Lcom/google/android/gms/internal/ads/zzad;

.field public c:Landroid/util/Pair;

.field public final d:Lg/ddb;

.field public e:I

.field public final f:Lg/pn;

.field public final g:Landroid/content/Context;

.field public final h:Lcom/google/android/gms/internal/ads/zzdc;

.field public i:I

.field public j:Lcom/google/android/gms/internal/ads/zzaam;

.field public final k:Lg/aks;

.field public l:Lcom/google/android/gms/internal/ads/zzdm;

.field public final m:Lcom/google/android/gms/internal/ads/zzaap;

.field public final n:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaaa;->a:Lcom/google/android/gms/internal/ads/zzzn;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzp;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzzp;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->g:Landroid/content/Context;

    new-instance v1, Lg/aks;

    invoke-direct {v1, p0, v0}, Lg/aks;-><init>(Lcom/google/android/gms/internal/ads/zzaaa;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->k:Lg/aks;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzzp;->b:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->h:Lcom/google/android/gms/internal/ads/zzdc;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzzp;->e:Lcom/google/android/gms/internal/ads/zzaap;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzk(Lcom/google/android/gms/internal/ads/zzdc;)V

    new-instance v0, Lg/ddb;

    new-instance v3, Lg/gyf;

    invoke-direct {v3, p0}, Lg/gyf;-><init>(Lcom/google/android/gms/internal/ads/zzaaa;)V

    invoke-direct {v0, v3, v2}, Lg/ddb;-><init>(Lg/gyf;Lcom/google/android/gms/internal/ads/zzaap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->d:Lg/ddb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzzp;->a:Lg/pn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->f:Lg/pn;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->i:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static o(Lcom/google/android/gms/internal/ads/zzaaa;JJ)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaaa;->e:I

    if-nez v1, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->d:Lg/ddb;

    iget-object v1, v0, Lg/ddb;->d:Lcom/google/android/gms/internal/ads/zzaap;

    iget-object v2, v0, Lg/ddb;->h:Lg/gyf;

    iget-object v2, v2, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v3, v0, Lg/ddb;->c:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdv;->zzd()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lg/ddb;->b:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdv;->zza()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzc(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v0, Lg/ddb;->a:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lg/ddb;->a:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaap;->zzf()V

    :cond_0
    iget-object v5, v0, Lg/ddb;->d:Lcom/google/android/gms/internal/ads/zzaap;

    iget-wide v12, v0, Lg/ddb;->a:J

    const/4 v14, 0x0

    iget-object v15, v0, Lg/ddb;->g:Lcom/google/android/gms/internal/ads/zzaan;

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/gms/internal/ads/zzaap;->zza(JJJJZLcom/google/android/gms/internal/ads/zzaan;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3

    const/4 v1, 0x2

    if-eq v4, v1, :cond_1

    const/4 v1, 0x3

    if-eq v4, v1, :cond_1

    const/4 v1, 0x4

    if-eq v4, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iput-wide v6, v0, Lg/ddb;->f:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdv;->zzb()J

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzr;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzzr;->zzb(Lcom/google/android/gms/internal/ads/zzaaa;)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5

    :cond_3
    iput-wide v6, v0, Lg/ddb;->f:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdv;->zzb()J

    move-result-wide v7

    iget-object v3, v0, Lg/ddb;->i:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzc(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzci;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzci;->zza:Lcom/google/android/gms/internal/ads/zzci;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzci;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lg/ddb;->j:Lcom/google/android/gms/internal/ads/zzci;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzci;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v3, v0, Lg/ddb;->j:Lcom/google/android/gms/internal/ads/zzci;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzci;->zzb:I

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzci;->zzc:I

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    const-string v4, "video/raw"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->b:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzr;

    invoke-interface {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzzr;->zzc(Lcom/google/android/gms/internal/ads/zzaaa;Lcom/google/android/gms/internal/ads/zzci;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaap;->zzp()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->c:Landroid/util/Pair;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzr;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzzr;->zza(Lcom/google/android/gms/internal/ads/zzaaa;)V

    goto :goto_3

    :cond_6
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->j:Lcom/google/android/gms/internal/ads/zzaam;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->b:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    :cond_7
    move-object v11, v0

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzaaa;->j:Lcom/google/android/gms/internal/ads/zzaam;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaaa;->h:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzc()J

    move-result-wide v9

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzaam;->zza(JJLcom/google/android/gms/internal/ads/zzad;Landroid/media/MediaFormat;)V

    :cond_8
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5

    :cond_9
    :goto_4
    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzaaa;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->e:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->d:Lg/ddb;

    invoke-virtual {p0}, Lg/ddb;->k()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzh()Lcom/google/android/gms/internal/ads/zzabl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->k:Lg/aks;

    return-object v0
.end method

.method public final zzr()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zzb()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zza()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->c:Landroid/util/Pair;

    return-void
.end method

.method public final zzs()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->l:Lcom/google/android/gms/internal/ads/zzdm;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdm;->zze(Ljava/lang/Object;)V

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaaa;->c:Landroid/util/Pair;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->i:I

    return-void
.end method

.method public final zzt(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzee;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->c:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzee;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->c:Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzee;->zzb()I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzee;->zza()I

    return-void
.end method
