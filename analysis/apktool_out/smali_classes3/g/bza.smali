.class public final Lg/bza;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/bza;

.field public static final b:Ljava/util/HashSet;


# instance fields
.field public c:Lg/apq;

.field public final d:Ljava/util/ArrayList;

.field public e:Z

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public h:Lg/bah;

.field public final i:Ljava/lang/Object;

.field public j:Lg/dzg;

.field public final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Lg/bme;

    sget-object v2, Lg/bme;->APP_OPEN_AD:Lg/bme;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/bme;->INTERSTITIAL:Lg/bme;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lg/bme;->REWARDED:Lg/bme;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lg/bza;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bza;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bza;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bza;->e:Z

    iput-boolean v0, p0, Lg/bza;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bza;->k:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lg/ddh;->DEFAULT:Lg/ddh;

    new-instance v2, Lg/bah;

    invoke-direct {v2, v0, v1}, Lg/bah;-><init>(Ljava/util/ArrayList;Lg/ddh;)V

    iput-object v2, p0, Lg/bza;->h:Lg/bah;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/bza;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static l()Lg/bza;
    .locals 2

    const-class v0, Lg/bza;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bza;->a:Lg/bza;

    if-nez v1, :cond_0

    new-instance v1, Lg/bza;

    invoke-direct {v1}, Lg/bza;-><init>()V

    sput-object v1, Lg/bza;->a:Lg/bza;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lg/bza;->a:Lg/bza;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static m(Lg/ghd;)Lj$/util/Optional;
    .locals 10

    iget-object v0, p0, Lg/ghd;->zza:Ljava/lang/String;

    iget v1, p0, Lg/ghd;->zzb:I

    invoke-static {v1}, Lg/bme;->b(I)Lg/bme;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, p0, Lg/ghd;->zzc:Lg/aeh;

    new-instance v3, Lg/dcq;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lg/dcq;-><init>(I)V

    iget-object v4, v3, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v4, Lg/gxk;

    iget-object v5, v2, Lg/aeh;->zze:Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Lg/gxk;->f:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, v2, Lg/aeh;->zzm:Landroid/os/Bundle;

    iget-object v6, v4, Lg/gxk;->j:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v5, v2, Lg/aeh;->zzn:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lg/aeh;->zzn:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Value "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " contains invalid character \',\' (comma). The server will parse it as a list of comma-separated values."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v8, v4, Lg/gxk;->e:Landroid/os/Bundle;

    invoke-virtual {v8, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v5, v2, Lg/aeh;->zzx:Ljava/lang/String;

    iput-object v5, v4, Lg/gxk;->d:Ljava/lang/String;

    iget-object v5, v2, Lg/aeh;->zzl:Ljava/lang/String;

    invoke-static {v5}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v5

    new-instance v6, Lg/bhf;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Lg/bhf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v5, v2, Lg/aeh;->zzv:Ljava/util/List;

    if-nez v5, :cond_4

    const-string v5, "neighboring content URLs list should not be null"

    invoke-static {v5}, Lg/agd;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v6, v4, Lg/gxk;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v7, "neighboring content URL should not be null or empty"

    invoke-static {v7}, Lg/agd;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v2, v2, Lg/aeh;->zzp:Ljava/lang/String;

    iput-object v2, v4, Lg/gxk;->i:Ljava/lang/String;

    new-instance v2, Lg/awn;

    invoke-direct {v2, v3}, Lg/awn;-><init>(Lg/dcq;)V

    new-instance v3, Lg/fkn;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lg/dcq;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lg/dcq;-><init>(I)V

    new-instance v5, Lg/awn;

    invoke-direct {v5, v4}, Lg/awn;-><init>(Lg/dcq;)V

    iput-object v5, v3, Lg/fkn;->a:Ljava/lang/Object;

    iput-object v0, v3, Lg/fkn;->c:Ljava/lang/Object;

    iput-object v1, v3, Lg/fkn;->d:Ljava/lang/Object;

    iput-object v2, v3, Lg/fkn;->a:Ljava/lang/Object;

    iget p0, p0, Lg/ghd;->zzd:I

    iput p0, v3, Lg/fkn;->b:I

    new-instance p0, Lg/cdr;

    invoke-direct {p0, v3}, Lg/cdr;-><init>(Lg/fkn;)V

    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbly;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzblp;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzblp;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzblx;

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzblp;->zzb:Z

    if-eqz v4, :cond_0

    sget-object v4, Lg/cvi;->READY:Lg/cvi;

    goto :goto_1

    :cond_0
    sget-object v4, Lg/cvi;->NOT_READY:Lg/cvi;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzblp;->zzd:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzblp;->zzc:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzblx;-><init>(Lg/cvi;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbly;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbly;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final o(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lg/bza;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/bza;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    iget-boolean v1, p0, Lg/bza;->g:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/bza;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, p1}, Lg/bza;->q(Landroid/content/Context;)V

    iget-object v2, p0, Lg/bza;->c:Lg/apq;

    new-instance v3, Lg/amg;

    invoke-direct {v3, v1, p0}, Lg/amg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Lg/apq;->zzs(Lcom/google/android/gms/internal/ads/zzblw;)V

    iget-object v2, p0, Lg/bza;->c:Lg/apq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-interface {v2, v3}, Lg/apq;->zzo(Lcom/google/android/gms/internal/ads/zzbpg;)V

    iget-object v2, p0, Lg/bza;->h:Lg/bah;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/bza;->h:Lg/bah;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_2
    sget-object v2, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbel;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzkO:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "Initializing on bg thread"

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    sget-object v1, Lg/ga;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lg/dtq;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lg/dtq;-><init>(Lg/bza;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzkO:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lg/ga;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lg/dtq;

    invoke-direct {v3, p0, p1, v1}, Lg/dtq;-><init>(Lg/bza;Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string v1, "Initializing on calling thread"

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg/bza;->p(Landroid/content/Context;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final p(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzboy;->zza()Lcom/google/android/gms/internal/ads/zzboy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzboy;->zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    iget-object p1, p0, Lg/bza;->c:Lg/apq;

    invoke-interface {p1}, Lg/apq;->zzk()V

    iget-object p1, p0, Lg/bza;->c:Lg/apq;

    new-instance v0, Lg/bpp;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v0}, Lg/apq;->zzl(Ljava/lang/String;Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final q(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lg/bza;->c:Lg/apq;

    if-nez v0, :cond_0

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->e:Lg/ph;

    new-instance v1, Lg/cow;

    invoke-direct {v1, v0, p1}, Lg/cow;-><init>(Lg/ph;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/apq;

    iput-object p1, p0, Lg/bza;->c:Lg/apq;

    :cond_0
    return-void
.end method
