.class public final Lg/aks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabl;
.implements Lcom/google/android/gms/internal/ads/zzzr;


# instance fields
.field public a:Z

.field public b:Lcom/google/android/gms/internal/ads/zzabi;

.field public c:J

.field public d:Ljava/util/concurrent/Executor;

.field public e:J

.field public final f:Ljava/util/ArrayList;

.field public g:J

.field public final synthetic h:Lcom/google/android/gms/internal/ads/zzaaa;

.field public i:Z

.field public final j:Lcom/google/android/gms/internal/ads/zzaan;

.field public k:J

.field public l:Lcom/google/android/gms/internal/ads/zzad;

.field public m:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaaa;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzen;->zzK(Landroid/content/Context;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/aks;->f:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaan;-><init>()V

    iput-object p1, p0, Lg/aks;->j:Lcom/google/android/gms/internal/ads/zzaan;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lg/aks;->m:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzabi;->zzb:Lcom/google/android/gms/internal/ads/zzabi;

    iput-object p1, p0, Lg/aks;->b:Lcom/google/android/gms/internal/ads/zzabi;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaaa;->a:Lcom/google/android/gms/internal/ads/zzzn;

    iput-object p1, p0, Lg/aks;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 7

    iget-object v0, p0, Lg/aks;->l:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/aks;->f:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lg/aks;->l:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzad;->zzB:Lcom/google/android/gms/internal/ads/zzm;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    new-instance v5, Lcom/google/android/gms/internal/ads/zzae;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzaaa;->a:Lcom/google/android/gms/internal/ads/zzzn;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzm;->zzf()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzm;

    :cond_2
    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Lcom/google/android/gms/internal/ads/zzm;II)V

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzy:F

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzae;->zza(F)Lcom/google/android/gms/internal/ads/zzae;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzae;->zzb()Lcom/google/android/gms/internal/ads/zzag;

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaaa;)V
    .locals 2

    iget-object p1, p0, Lg/aks;->b:Lcom/google/android/gms/internal/ads/zzabi;

    iget-object v0, p0, Lg/aks;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzzx;-><init>(Lg/aks;Lcom/google/android/gms/internal/ads/zzabi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaaa;)V
    .locals 2

    iget-object p1, p0, Lg/aks;->b:Lcom/google/android/gms/internal/ads/zzabi;

    iget-object v0, p0, Lg/aks;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(Lg/aks;Lcom/google/android/gms/internal/ads/zzabi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaaa;Lcom/google/android/gms/internal/ads/zzci;)V
    .locals 2

    iget-object p1, p0, Lg/aks;->b:Lcom/google/android/gms/internal/ads/zzabi;

    iget-object v0, p0, Lg/aks;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzv;-><init>(Lg/aks;Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzci;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public final zze()V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzr()V

    return-void
.end method

.method public final zzf()V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzb()V

    return-void
.end method

.method public final zzg(Z)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/aks;->a:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lg/aks;->m:J

    iget-object v2, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaaa;->i:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaaa;->e:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzaaa;->e:I

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaaa;->d:Lg/ddb;

    invoke-virtual {v3}, Lg/ddb;->k()V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaaa;->l:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzzo;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzzo;-><init>(Lcom/google/android/gms/internal/ads/zzaaa;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzi()V

    :cond_1
    iput-wide v0, p0, Lg/aks;->k:J

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzad;)V
    .locals 10

    iget-object v4, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget v0, v4, Lcom/google/android/gms/internal/ads/zzaaa;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzB:Lcom/google/android/gms/internal/ads/zzm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzm;->zzf()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzm;

    :cond_2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzm;->zzd:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzm;->zzc()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzd(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    :cond_3
    move-object v2, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzaaa;->h:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdm;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/zzaaa;->l:Lcom/google/android/gms/internal/ads/zzdm;

    move-object v1, v0

    :try_start_0
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzaaa;->f:Lg/pn;

    move-object v3, v1

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzaaa;->g:Landroid/content/Context;

    move-object v5, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzp;->zza:Lcom/google/android/gms/internal/ads/zzp;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzzm;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzzm;-><init>(Lcom/google/android/gms/internal/ads/zzdm;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lg/pn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzm;Lcom/google/android/gms/internal/ads/zzp;Lcom/google/android/gms/internal/ads/zzch;Ljava/util/concurrent/Executor;Ljava/util/List;J)Lcom/google/android/gms/internal/ads/zzbr;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzaaa;->c:Landroid/util/Pair;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zzb()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zza()I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    throw v9
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzce; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzad;)V

    throw v1
.end method

.method public final zzi(Z)V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzc(Z)V

    return-void
.end method

.method public final zzj(ILcom/google/android/gms/internal/ads/zzad;)V
    .locals 5

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzad;->zzw:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaap;->zzl(F)V

    iput-object p2, p0, Lg/aks;->l:Lcom/google/android/gms/internal/ads/zzad;

    iget-boolean p2, p0, Lg/aks;->a:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lg/aks;->n()V

    iput-boolean v2, p0, Lg/aks;->a:Z

    iput-boolean p1, p0, Lg/aks;->i:Z

    iput-wide v0, p0, Lg/aks;->k:J

    return-void

    :cond_0
    iget-wide v3, p0, Lg/aks;->m:J

    cmp-long p2, v3, v0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-boolean v2, p0, Lg/aks;->i:Z

    iget-wide p1, p0, Lg/aks;->m:J

    iput-wide p1, p0, Lg/aks;->k:J

    return-void
.end method

.method public final zzk()V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzd()V

    return-void
.end method

.method public final zzl(Z)V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zze(Z)V

    return-void
.end method

.method public final zzm()V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzg()V

    return-void
.end method

.method public final zzn()V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzh()V

    return-void
.end method

.method public final zzo()V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzs()V

    return-void
.end method

.method public final zzp(JJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaaa;->o(Lcom/google/android/gms/internal/ads/zzaaa;JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzig; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabk;

    iget-object p3, p0, Lg/aks;->l:Lcom/google/android/gms/internal/ads/zzad;

    if-nez p3, :cond_0

    new-instance p3, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p3

    :cond_0
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzad;)V

    throw p2
.end method

.method public final zzq(I)V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzj(I)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzabi;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lg/aks;->b:Lcom/google/android/gms/internal/ads/zzabi;

    iput-object p2, p0, Lg/aks;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final zzs(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzee;)V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->zzt(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzee;)V

    return-void
.end method

.method public final zzt(F)V
    .locals 2

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->d:Lg/ddb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iget-object v0, v0, Lg/ddb;->d:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzn(F)V

    return-void
.end method

.method public final zzu(JJJJ)V
    .locals 0

    iput-wide p1, p0, Lg/aks;->c:J

    iput-wide p5, p0, Lg/aks;->e:J

    iput-wide p7, p0, Lg/aks;->g:J

    return-void
.end method

.method public final zzv(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lg/aks;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lg/aks;->n()V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzaam;)V
    .locals 1

    iget-object v0, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzaaa;->j:Lcom/google/android/gms/internal/ads/zzaam;

    return-void
.end method

.method public final zzx(JZJJLcom/google/android/gms/internal/ads/zzabj;)Z
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-wide v3, v1, Lg/aks;->e:J

    sub-long v6, p1, v3

    :try_start_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaaa;->m:Lcom/google/android/gms/internal/ads/zzaap;

    iget-wide v12, v1, Lg/aks;->c:J

    iget-object v15, v1, Lg/aks;->j:Lcom/google/android/gms/internal/ads/zzaan;

    move/from16 v14, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/gms/internal/ads/zzaap;->zza(JJJJZLcom/google/android/gms/internal/ads/zzaan;)I

    move-result v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzig; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, v1, Lg/aks;->g:J

    cmp-long v5, v6, v3

    if-gez v5, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    goto :goto_0

    :cond_2
    move-object/from16 v0, p8

    check-cast v0, Lg/gem;

    iget-object v2, v0, Lg/gem;->c:Lcom/google/android/gms/internal/ads/zzaai;

    iget-object v3, v0, Lg/gem;->a:Lcom/google/android/gms/internal/ads/zzsn;

    iget v0, v0, Lg/gem;->b:I

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzaai;->av(Lcom/google/android/gms/internal/ads/zzsn;I)V

    const/4 v0, 0x1

    return v0

    :goto_0
    invoke-virtual {v1, v8, v9, v10, v11}, Lg/aks;->zzp(JJ)V

    iget-boolean v3, v1, Lg/aks;->i:Z

    if-eqz v3, :cond_5

    iget-wide v3, v1, Lg/aks;->k:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaaa;->e:I

    if-nez v7, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->d:Lg/ddb;

    iget-wide v7, v0, Lg/ddb;->f:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3

    cmp-long v0, v7, v3

    if-gez v0, :cond_4

    :cond_3
    :goto_1
    return v2

    :cond_4
    invoke-virtual {v1}, Lg/aks;->n()V

    iput-boolean v2, v1, Lg/aks;->i:Z

    iput-wide v5, v1, Lg/aks;->k:J

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabk;

    iget-object v3, v1, Lg/aks;->l:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzad;)V

    throw v2
.end method

.method public final zzy(Z)Z
    .locals 1

    iget-object p1, p0, Lg/aks;->h:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaaa;->d:Lg/ddb;

    iget-object p1, p1, Lg/ddb;->d:Lcom/google/android/gms/internal/ads/zzaap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzo(Z)Z

    move-result p1

    return p1
.end method
