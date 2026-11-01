.class public final Lcom/google/android/gms/internal/ads/zzbqn;
.super Lcom/google/android/gms/internal/ads/zzbpu;
.source "SourceFile"


# instance fields
.field public final a:Lg/efo;


# direct methods
.method public constructor <init>(Lg/efo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    return-void
.end method


# virtual methods
.method public final zzA()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-boolean v0, v0, Lg/efo;->c:Z

    return v0
.end method

.method public final zzB()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-boolean v0, v0, Lg/efo;->i:Z

    return v0
.end method

.method public final zze()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->n:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final zzf()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzj()Lg/cbz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->l:Lg/hl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/hl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lg/hl;->b:Lg/cbz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzbfr;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzbfy;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->d:Lg/dqn;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-virtual {v0}, Lg/dqn;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lg/dqn;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lg/dqn;->getScale()D

    move-result-wide v4

    invoke-virtual {v0}, Lg/dqn;->zzb()I

    move-result v6

    invoke-virtual {v0}, Lg/dqn;->zza()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbfl;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Lg/bjq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzn()Lg/bjq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzo()Lg/bjq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final zzt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final zzu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final zzv()Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    iget-object v0, v0, Lg/efo;->k:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dqn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfl;

    invoke-virtual {v2}, Lg/dqn;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lg/dqn;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Lg/dqn;->getScale()D

    move-result-wide v6

    invoke-virtual {v2}, Lg/dqn;->zzb()I

    move-result v8

    invoke-virtual {v2}, Lg/dqn;->zza()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbfl;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public final zzw(Lg/bjq;)V
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final zzx()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final zzy(Lg/bjq;Lg/bjq;Lg/bjq;)V
    .locals 0

    invoke-static {p2}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    check-cast p2, Lg/fyz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lg/gwe;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final zzz(Lg/bjq;)V
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqn;->a:Lg/efo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
