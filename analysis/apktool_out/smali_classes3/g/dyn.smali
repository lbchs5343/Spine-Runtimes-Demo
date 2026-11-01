.class public final Lg/dyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lg/dyn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/dyn;->a:I

    iput-object p2, p0, Lg/dyn;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/cqj;Lg/gqc;)V
    .locals 0

    const/16 p1, 0x15

    iput p1, p0, Lg/dyn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dyn;->b:Ljava/lang/Object;

    return-void
.end method

.method private final c()V
    .locals 5

    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzauu;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzauu;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzauu;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzauu;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzauu;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzauu;->s(Lcom/google/android/gms/internal/ads/zzauu;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzauu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzauu;->r:Lcom/google/android/gms/internal/ads/zzfpp;

    const/16 v2, 0x7e7

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;

    :goto_0
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauu;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauu;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauu;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzauu;->e:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private final d()V
    .locals 6

    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzauw;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauw;->c:Landroid/os/ConditionVariable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzauw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzauw;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzcE:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    nop

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_2
    iget-object v3, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzauw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzauw;->d:Lcom/google/android/gms/internal/ads/zzawf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzawf;->h:Landroid/content/Context;

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfrr;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfrr;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzauw;->a:Lcom/google/android/gms/internal/ads/zzfrr;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v1, v2

    :catchall_1
    :try_start_3
    iget-object v2, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzauw;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzauw;->e:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzauw;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/fes;

    iget-object v0, v0, Lg/fes;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lg/fes;

    iget-boolean v2, v1, Lg/fes;->e:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lg/fes;->f:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/fes;->e:Z

    const-string v1, "App went background"

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lg/fes;

    iget-object v1, v1, Lg/fes;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzazf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzazf;->zza(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, ""

    invoke-static {v4, v3}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v1, "App is still foreground"

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lg/dyn;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/aaa;

    iget-object v1, v0, Lg/aaa;->b:Lg/tq;

    invoke-virtual {v1, v3}, Lg/tq;->ai(I)V

    sget-object v2, Lg/hm;->zzx:Lg/hm;

    sget-object v3, Lg/edc;->b:Lg/ejd;

    invoke-virtual {v1, v3, v2}, Lg/tq;->bc(Lg/ejd;Lg/hm;)V

    invoke-virtual {v0, v3}, Lg/aaa;->g(Lg/ejd;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbat;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->g(Lcom/google/android/gms/internal/ads/zzbat;)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lg/dyn;->e()V

    return-void

    :pswitch_2
    const-string v0, "UTF-8"

    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaxs;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaxs;->c:Lcom/google/android/gms/internal/ads/zzawf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawf;->zzi()Ldalvik/system/DexClassLoader;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawf;->zzu()[B

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaxs;->e:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaxs;->c:Lcom/google/android/gms/internal/ads/zzawf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawf;->zze()Lcom/google/android/gms/internal/ads/zzavk;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzavk;->zzb([BLjava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaxs;->c:Lcom/google/android/gms/internal/ads/zzawf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzawf;->zzu()[B

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaxs;->f:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaxs;->c:Lcom/google/android/gms/internal/ads/zzawf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawf;->zze()Lcom/google/android/gms/internal/ads/zzavk;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzavk;->zzb([BLjava/lang/String;)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaxs;->b:[Ljava/lang/Class;

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaxs;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaxs;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catch_0
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaxs;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzawm;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->r()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lg/dyn;->d()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lg/dyn;->c()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/bgf;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-virtual {v0}, Lg/bgf;->zza()V

    return-void

    :pswitch_7
    throw v1

    :pswitch_8
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/aan;

    iget-object v0, v0, Lg/aan;->b:Lg/axs;

    new-instance v1, Lg/nk;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lg/nk;-><init>(I)V

    invoke-virtual {v0, v1}, Lg/axs;->l(Lg/nk;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/evf;

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/fbd;

    iget-object v0, v0, Lg/fbd;->l:Lg/cqh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/cqh;->disconnect(Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/fbd;

    invoke-virtual {v0}, Lg/fbd;->t()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    :try_start_1
    new-instance v1, Lg/emr;

    const/16 v4, 0x16

    invoke-direct {v1, v4}, Lg/emr;-><init>(I)V

    iput-object v0, v1, Lg/emr;->n:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    :catch_1
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    :goto_1
    :try_start_3
    invoke-virtual {v1, v2}, Lg/emr;->af(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-static {}, Lg/gs;->af()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lg/emk;->b(Landroid/os/Handler;)Lg/emk;

    move-result-object v0

    invoke-virtual {v0}, Lg/emk;->c()V

    goto :goto_3

    :catchall_1
    :try_start_4
    sget-object v0, Lg/eca;->c:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :goto_3
    return-void

    :catchall_2
    move-exception v0

    invoke-static {}, Lg/gs;->af()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lg/emk;->b(Landroid/os/Handler;)Lg/emk;

    move-result-object v1

    invoke-virtual {v1}, Lg/emk;->c()V

    throw v0

    :pswitch_c
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/aah;

    iput-boolean v3, v0, Lg/aah;->b:Z

    return-void

    :pswitch_d
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/cpx;

    invoke-virtual {v0}, Lg/cpx;->invalidateSelf()V

    return-void

    :pswitch_e
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/cyh;

    iget-object v0, v0, Lg/cyh;->b:Lg/caa;

    if-nez v0, :cond_3

    goto :goto_6

    :cond_3
    iget-object v1, v0, Lg/caa;->a:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/cyh;

    monitor-enter v2

    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v2, Lg/cyh;->c:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gao;

    invoke-interface {v3, v1}, Lg/gao;->dq(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_4
    monitor-exit v2

    goto :goto_6

    :goto_5
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_5
    iget-object v1, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v1, Lg/cyh;

    iget-object v0, v0, Lg/caa;->b:Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lg/cyh;->f(Lg/cyh;Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :pswitch_f
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/aqi;

    const-string v1, "https://apmplus.volces.com/monitor/collect/c/session?device_platform=android&version_code=137&iid=iid&aid="

    sget-object v4, Lg/eca;->e:Lg/dzh;

    invoke-virtual {v4}, Lg/dzh;->ag()Ljava/util/Map;

    move-result-object v4

    :try_start_7
    invoke-static {v4}, Lg/cro;->y(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "aid"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    sget-object v4, Lg/gxc;->d:Lg/gxc;

    invoke-static {v1, v5, v4, v2}, Lg/eg;->j(Ljava/lang/String;[BLg/gxc;Z)Lg/cyl;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v1

    :try_start_9
    sget-object v4, Lg/eca;->c:Landroid/content/Context;

    new-instance v4, Lg/cyl;

    invoke-direct {v4, v1}, Lg/cyl;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v4

    :goto_7
    iget v1, v1, Lg/cyl;->e:I

    if-nez v1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0, v2}, Lg/aqi;->dq(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    return-void

    :pswitch_10
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/gjp;

    iget-object v1, v0, Lg/gjp;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, v0, Lg/gjp;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    sget-object v1, Lg/eca;->e:Lg/dzh;

    invoke-virtual {v1}, Lg/dzh;->ag()Ljava/util/Map;

    const-string v1, "https://apmplus.volces.com/apm/collect/crash"

    :try_start_a
    const-string v3, "upload_scene"

    const-string v4, "direct"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_9

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lg/eg;->y(Ljava/lang/String;Ljava/lang/String;Z)Lg/cyl;

    return-void

    :pswitch_12
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/fde;

    invoke-static {v0}, Lg/fde;->no(Lg/fde;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lg/cdf;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_7

    invoke-static {v0}, Lg/agk;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lg/agk;->w(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    invoke-static {v0}, Lg/agk;->m(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_7
    return-void

    :pswitch_13
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/bugly/proguard/au;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Lcom/tencent/bugly/proguard/au;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ag;->c(Ljava/util/List;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lc/a/a;

    const v1, 0x7f09030f

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120586

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lg/dij;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x2

    const v5, 0x7f120272

    invoke-static {v1, v2, v4, v5, v3}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    move-result-object v1

    iput-object v1, v0, Lc/a/a;->i:Lg/sd;

    return-void

    :pswitch_16
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/cc;

    iget-object v0, v0, Lg/cc;->b:Landroid/content/DialogInterface$OnClickListener;

    check-cast v0, Lg/ddp;

    iget-object v1, v0, Lg/ddp;->b:Lc/a/a;

    sget-object v2, Lc/a/a;->d:Ljava/lang/String;

    iget-object v1, v1, Lg/eib;->bc:Lg/eib;

    invoke-static {v1}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lg/ddp;->b:Lc/a/a;

    iget-object v1, v1, Lg/eib;->bc:Lg/eib;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v1, v2}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v0, Lg/ddp;->b:Lc/a/a;

    invoke-virtual {v0}, Lc/a/a;->z()V

    goto :goto_a

    :cond_8
    iget-object v0, v0, Lg/ddp;->b:Lc/a/a;

    iget-object v1, v0, Lc/a/a;->r:Lg/drp;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lc/a/a;->y()V

    :cond_9
    :goto_a
    return-void

    :pswitch_17
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, La/v/SlidableViewPager;

    invoke-virtual {v0, v3}, Lg/ezn;->setScrollState(I)V

    invoke-virtual {v0}, Lg/ezn;->populate()V

    return-void

    :pswitch_18
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/bfa;

    invoke-virtual {v0, v3}, Lg/bfa;->setScrollState(I)V

    invoke-virtual {v0}, Lg/bfa;->bm()V

    return-void

    :pswitch_19
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/dfv;

    invoke-virtual {v0, v3}, Lg/dfv;->z(I)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lg/bbp;

    iget-object v2, v0, Lg/bbp;->f:Landroid/view/Window$Callback;

    invoke-virtual {v0}, Lg/bbp;->n()Landroid/view/Menu;

    move-result-object v0

    instance-of v4, v0, Lg/ftn;

    if-eqz v4, :cond_a

    move-object v4, v0

    check-cast v4, Lg/ftn;

    goto :goto_b

    :cond_a
    move-object v4, v1

    :goto_b
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lg/ftn;->aj()V

    :cond_b
    :try_start_b
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-interface {v2, v3, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2, v3, v1, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_c

    :catchall_6
    move-exception v0

    goto :goto_d

    :cond_c
    :goto_c
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lg/ftn;->ai()V

    :cond_e
    return-void

    :goto_d
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lg/ftn;->ai()V

    :cond_f
    throw v0

    :pswitch_1b
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->bd()Z

    return-void

    :pswitch_1c
    iget-object v0, p0, Lg/dyn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Lg/zq;

    iget-object v0, v0, Lg/zq;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
