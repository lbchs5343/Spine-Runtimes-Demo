.class public final Lg/dee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Z

.field public final b:Lg/feh;

.field public c:J

.field public d:Lcom/google/android/gms/internal/ads/zzyk;

.field public e:Z

.field public f:Lg/dee;

.field public g:Z

.field public final h:Ljava/lang/Object;

.field public i:Lg/apg;

.field public j:Lcom/google/android/gms/internal/ads/zzwr;

.field public final k:[Lcom/google/android/gms/internal/ads/zzlq;

.field public final l:Ljava/lang/Object;

.field public final m:Lcom/google/android/gms/internal/ads/zzyj;

.field public final n:[Lcom/google/android/gms/internal/ads/zzwg;

.field public o:Z


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzlq;JLcom/google/android/gms/internal/ads/zzyj;Lcom/google/android/gms/internal/ads/zzys;Lg/feh;Lg/apg;Lcom/google/android/gms/internal/ads/zzyk;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dee;->k:[Lcom/google/android/gms/internal/ads/zzlq;

    iput-wide p2, p0, Lg/dee;->c:J

    iput-object p4, p0, Lg/dee;->m:Lcom/google/android/gms/internal/ads/zzyj;

    iput-object p6, p0, Lg/dee;->b:Lg/feh;

    iget-object p1, p7, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lg/dee;->l:Ljava/lang/Object;

    iput-object p7, p0, Lg/dee;->i:Lg/apg;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    iput-object p2, p0, Lg/dee;->j:Lcom/google/android/gms/internal/ads/zzwr;

    iput-object p8, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    const/4 p2, 0x2

    new-array p3, p2, [Lcom/google/android/gms/internal/ads/zzwg;

    iput-object p3, p0, Lg/dee;->n:[Lcom/google/android/gms/internal/ads/zzwg;

    new-array p2, p2, [Z

    iput-object p2, p0, Lg/dee;->a:[Z

    iget-wide p2, p7, Lg/apg;->f:J

    iget-wide v5, p7, Lg/apg;->b:J

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p4, Lg/aqw;->k:I

    iget-object p4, p1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    check-cast p4, Landroid/util/Pair;

    iget-object p7, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzur;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object p1

    iget-object p4, p6, Lg/feh;->c:Ljava/util/HashMap;

    invoke-virtual {p4, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/iw;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p7, p6, Lg/feh;->l:Ljava/util/HashSet;

    invoke-virtual {p7, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p7, p6, Lg/feh;->g:Ljava/util/HashMap;

    invoke-virtual {p7, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lg/gdd;

    if-eqz p7, :cond_0

    iget-object p8, p7, Lg/gdd;->a:Lcom/google/android/gms/internal/ads/zzut;

    iget-object p7, p7, Lg/gdd;->b:Lcom/google/android/gms/internal/ads/zzkv;

    invoke-interface {p8, p7}, Lcom/google/android/gms/internal/ads/zzut;->zzk(Lcom/google/android/gms/internal/ads/zzus;)V

    :cond_0
    iget-object p7, p4, Lg/iw;->e:Ljava/util/ArrayList;

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p7, p4, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {p7, p1, p5, p2, p3}, Lcom/google/android/gms/internal/ads/zzum;->zzH(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzys;J)Lcom/google/android/gms/internal/ads/zzuj;

    move-result-object v1

    iget-object p1, p6, Lg/feh;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v1, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Lg/feh;->w()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v5, p1

    if-eqz p3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zztv;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zztv;-><init>(Lcom/google/android/gms/internal/ads/zzup;ZJJ)V

    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lg/dee;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final p()V
    .locals 3

    invoke-virtual {p0}, Lg/dee;->q()V

    iget-object v0, p0, Lg/dee;->h:Ljava/lang/Object;

    :try_start_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zztv;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lg/dee;->b:Lg/feh;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/ads/zztv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztv;->zza:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v2, v0}, Lg/feh;->o(Lcom/google/android/gms/internal/ads/zzup;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lg/feh;->o(Lcom/google/android/gms/internal/ads/zzup;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lg/dee;->f:Lg/dee;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzyk;->zza:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzb(I)Z

    iget-object v1, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r()Lcom/google/android/gms/internal/ads/zzwr;
    .locals 1

    iget-object v0, p0, Lg/dee;->j:Lcom/google/android/gms/internal/ads/zzwr;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/internal/ads/zzyk;
    .locals 1

    iget-object v0, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    return-object v0
.end method

.method public final t(Lcom/google/android/gms/internal/ads/zzyk;JZ[Z)J
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzyk;->zza:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    if-nez p4, :cond_0

    iget-object v2, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Lcom/google/android/gms/internal/ads/zzyk;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v2, p0, Lg/dee;->a:[Z

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    iget-object v4, p0, Lg/dee;->k:[Lcom/google/android/gms/internal/ads/zzlq;

    if-ge v1, v2, :cond_2

    aget-object v2, v4, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzlq;->zzb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lg/dee;->q()V

    iput-object p1, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v1, p0, Lg/dee;->f:Lg/dee;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzyk;->zza:I

    if-ge v1, v6, :cond_3

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzyk;->zzb(I)Z

    iget-object v5, p0, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    aget-object v5, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    iget-object v7, p0, Lg/dee;->a:[Z

    iget-object v8, p0, Lg/dee;->n:[Lcom/google/android/gms/internal/ads/zzwg;

    iget-object v5, p0, Lg/dee;->h:Ljava/lang/Object;

    move-wide v10, p2

    move-object/from16 v9, p5

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzup;->zzf([Lcom/google/android/gms/internal/ads/zzyd;[Z[Lcom/google/android/gms/internal/ads/zzwg;[ZJ)J

    move-result-wide p2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v5, v4, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzlq;->zzb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iput-boolean v0, p0, Lg/dee;->g:Z

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_7

    iget-object v5, p0, Lg/dee;->n:[Lcom/google/android/gms/internal/ads/zzwg;

    aget-object v5, v5, v1

    if-eqz v5, :cond_5

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzyk;->zzb(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    aget-object v5, v4, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzlq;->zzb()I

    iput-boolean v3, p0, Lg/dee;->g:Z

    goto :goto_7

    :cond_5
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    aget-object v5, v5, v1

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-wide p2
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzbv;)Lcom/google/android/gms/internal/ads/zzyk;
    .locals 5

    iget-object v0, p0, Lg/dee;->j:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v1, p0, Lg/dee;->i:Lg/apg;

    iget-object v1, v1, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v2, p0, Lg/dee;->m:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v3, p0, Lg/dee;->k:[Lcom/google/android/gms/internal/ads/zzlq;

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzyj;->zzo([Lcom/google/android/gms/internal/ads/zzlq;Lcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzbv;)Lcom/google/android/gms/internal/ads/zzyk;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzyk;->zza:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzyk;->zzb(I)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    aget-object v2, v3, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzlq;->zzb()I

    const/4 v4, 0x0

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    goto :goto_2

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public final v()V
    .locals 6

    iget-object v0, p0, Lg/dee;->h:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zztv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/dee;->i:Lg/apg;

    iget-wide v1, v1, Lg/apg;->b:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zztv;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zztv;->zzn(JJ)V

    :cond_1
    return-void
.end method

.method public final w()J
    .locals 5

    iget-boolean v0, p0, Lg/dee;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dee;->i:Lg/apg;

    iget-wide v0, v0, Lg/apg;->f:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lg/dee;->g:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/dee;->h:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzup;->zzb()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/dee;->i:Lg/apg;

    iget-wide v0, v0, Lg/apg;->c:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final x()Z
    .locals 5

    iget-boolean v0, p0, Lg/dee;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/dee;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dee;->h:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzup;->zzb()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()J
    .locals 4

    iget-object v0, p0, Lg/dee;->i:Lg/apg;

    iget-wide v0, v0, Lg/apg;->f:J

    iget-wide v2, p0, Lg/dee;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final z(Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/dee;->e:Z

    iget-object v1, v0, Lg/dee;->h:Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzup;->zzh()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v1

    iput-object v1, v0, Lg/dee;->j:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-virtual/range {p0 .. p1}, Lg/dee;->u(Lcom/google/android/gms/internal/ads/zzbv;)Lcom/google/android/gms/internal/ads/zzyk;

    move-result-object v1

    iget-object v2, v0, Lg/dee;->i:Lg/apg;

    iget-wide v3, v2, Lg/apg;->f:J

    iget-wide v5, v2, Lg/apg;->c:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    cmp-long v2, v3, v5

    if-ltz v2, :cond_0

    const-wide/16 v2, -0x1

    add-long/2addr v5, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_0
    move-wide v2, v3

    const/4 v4, 0x2

    new-array v5, v4, [Z

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lg/dee;->t(Lcom/google/android/gms/internal/ads/zzyk;JZ[Z)J

    move-result-wide v8

    iget-wide v1, v0, Lg/dee;->c:J

    iget-object v3, v0, Lg/dee;->i:Lg/apg;

    iget-wide v4, v3, Lg/apg;->f:J

    sub-long v6, v4, v8

    add-long/2addr v6, v1

    iput-wide v6, v0, Lg/dee;->c:J

    cmp-long v1, v8, v4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, v3, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v10, v3, Lg/apg;->g:J

    iget-wide v12, v3, Lg/apg;->b:J

    iget-wide v14, v3, Lg/apg;->c:J

    iget-boolean v1, v3, Lg/apg;->e:Z

    iget-boolean v2, v3, Lg/apg;->h:Z

    iget-boolean v3, v3, Lg/apg;->a:Z

    new-instance v6, Lg/apg;

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v6 .. v18}, Lg/apg;-><init>(Lcom/google/android/gms/internal/ads/zzur;JJJJZZZ)V

    move-object v3, v6

    :goto_0
    iput-object v3, v0, Lg/dee;->i:Lg/apg;

    return-void
.end method
