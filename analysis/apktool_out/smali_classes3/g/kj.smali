.class public abstract Lg/kj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lg/kf;

.field public static d:Z

.field public static e:Ljava/lang/ClassLoader;

.field public static f:Ljava/lang/Thread;

.field public static final g:Lg/aqn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/aqn;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lg/aqn;-><init>(I)V

    sput-object v0, Lg/kj;->g:Lg/aqn;

    return-void
.end method

.method public static final aa(Lg/boj;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lg/dwm;->o:Lg/dwm;

    invoke-interface {p0, v0}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p0

    check-cast p0, Lg/dta;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static ab(Lcom/google/android/gms/internal/ads/zzec;)V
    .locals 12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    return-void

    :cond_0
    const/16 v3, 0x10

    const/4 v4, 0x5

    const/16 v5, 0x8

    invoke-static {p0, v4, v5, v3}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/4 v7, 0x7

    if-ne v1, v6, :cond_1

    mul-int/lit8 v3, v3, 0x7

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    return-void

    :cond_1
    if-ne v1, v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    if-eq v6, v1, :cond_2

    const/4 v8, 0x5

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    :goto_0
    if-eq v6, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x7

    :goto_1
    if-eq v6, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v9

    const/16 v10, 0xb4

    if-eqz v9, :cond_5

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    const/4 v11, 0x3

    if-ne v9, v11, :cond_6

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    mul-int v9, v9, v8

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    mul-int v9, v9, v8

    if-eqz v9, :cond_7

    if-eq v9, v10, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    :goto_4
    if-eqz v9, :cond_8

    if-eq v9, v10, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/2addr v5, v6

    goto :goto_3

    :cond_9
    return-void
.end method

.method public static final ac(Lg/fjs;Lg/bfl;ZLg/w;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lg/etw;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lg/etw;

    iget v1, v0, Lg/etw;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/etw;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/etw;

    invoke-direct {v0, p3}, Lg/w;-><init>(Lg/bdp;)V

    :goto_0
    iget-object p3, v0, Lg/etw;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/etw;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_2

    iget-boolean p2, v0, Lg/etw;->Z$0:Z

    iget-object p0, v0, Lg/etw;->L$2:Ljava/lang/Object;

    check-cast p0, Lg/blg;

    iget-object p1, v0, Lg/etw;->L$1:Ljava/lang/Object;

    check-cast p1, Lg/biu;

    iget-object v2, v0, Lg/etw;->L$0:Ljava/lang/Object;

    check-cast v2, Lg/fjs;

    :try_start_0
    invoke-static {p3}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, Lg/etw;->Z$0:Z

    iget-object p0, v0, Lg/etw;->L$2:Ljava/lang/Object;

    check-cast p0, Lg/blg;

    iget-object p1, v0, Lg/etw;->L$1:Ljava/lang/Object;

    check-cast p1, Lg/biu;

    iget-object v2, v0, Lg/etw;->L$0:Ljava/lang/Object;

    check-cast v2, Lg/fjs;

    :try_start_1
    invoke-static {p3}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lg/eg;->k(Ljava/lang/Object;)V

    :try_start_2
    invoke-interface {p1}, Lg/biu;->iterator()Lg/blg;

    move-result-object p3

    :goto_1
    iput-object p0, v0, Lg/etw;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lg/etw;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lg/etw;->L$2:Ljava/lang/Object;

    iput-boolean p2, v0, Lg/etw;->Z$0:Z

    iput v5, v0, Lg/etw;->label:I

    invoke-virtual {p3, v0}, Lg/blg;->e(Lg/w;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v6

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lg/blg;->f()Ljava/lang/Object;

    move-result-object p3

    iput-object v2, v0, Lg/etw;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lg/etw;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lg/etw;->L$2:Ljava/lang/Object;

    iput-boolean p2, v0, Lg/etw;->Z$0:Z

    iput v4, v0, Lg/etw;->label:I

    invoke-interface {v2, p3, v0}, Lg/fjs;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    :goto_3
    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p1, v3}, Lg/biu;->_bi(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    sget-object p0, Lg/dgi;->a:Lg/dgi;

    return-object p0

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_a

    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_8

    move-object v3, p0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_8
    if-nez v3, :cond_9

    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string p2, "Channel was consumed, consumer had failed"

    invoke-direct {v3, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_9
    invoke-interface {p1, v3}, Lg/biu;->_bi(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    throw p3
.end method

.method public static declared-synchronized ad()Ljava/lang/ClassLoader;
    .locals 11

    const-class v0, Lg/kj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/kj;->e:Ljava/lang/ClassLoader;

    if-nez v1, :cond_8

    sget-object v1, Lg/kj;->f:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    goto/16 :goto_8

    :cond_0
    const-class v3, Ljava/lang/Void;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    new-array v5, v4, [Ljava/lang/ThreadGroup;

    invoke-virtual {v1, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v8, v5, v7

    const-string v9, "dynamiteLoader"

    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_9

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_2
    move-object v8, v2

    :goto_1
    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/ThreadGroup;

    const-string v4, "dynamiteLoader"

    invoke-direct {v8, v1, v4}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    new-array v4, v1, [Ljava/lang/Thread;

    invoke-virtual {v8, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    :goto_2
    if-ge v6, v1, :cond_5

    aget-object v5, v4, v6

    const-string v7, "GmsDynamite"

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_3
    if-nez v5, :cond_6

    :try_start_2
    new-instance v1, Lg/gzk;

    const-string v4, "GmsDynamite"

    invoke-direct {v1, v8, v4}, Lg/gzk;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v1

    goto :goto_7

    :catch_1
    move-exception v4

    move-object v5, v1

    goto :goto_6

    :goto_4
    move-object v4, v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_4

    :goto_5
    move-object v4, v1

    move-object v5, v2

    :goto_6
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v5

    :goto_8
    :try_start_5
    sput-object v1, Lg/kj;->f:Ljava/lang/Thread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v1, :cond_7

    goto :goto_b

    :catchall_1
    move-exception v1

    goto :goto_e

    :goto_9
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    :cond_7
    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget-object v3, Lg/kj;->f:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v2

    goto :goto_c

    :catch_3
    move-exception v3

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_a
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_b
    :try_start_a
    sput-object v2, Lg/kj;->e:Ljava/lang/ClassLoader;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_d

    :goto_c
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2

    :cond_8
    :goto_d
    sget-object v1, Lg/kj;->e:Ljava/lang/ClassLoader;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_e
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v1
.end method

.method public static final h(Lg/boj;)V
    .locals 1

    sget-object v0, Lg/dwm;->o:Lg/dwm;

    invoke-interface {p0, v0}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p0

    check-cast p0, Lg/dta;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lg/dta;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lg/fyw;

    invoke-virtual {p0}, Lg/fyw;->ar()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final i(Ljava/lang/Throwable;Lg/boj;)V
    .locals 3

    :try_start_0
    sget-object v0, Lg/dwm;->j:Lg/dwm;

    invoke-interface {p1, v0}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v0

    check-cast v0, Lg/gxh;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lg/gxh;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lg/gs;->d(Ljava/lang/Throwable;Lg/boj;)V

    return-void

    :goto_0
    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p0}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_1
    invoke-static {p0, p1}, Lg/gs;->d(Ljava/lang/Throwable;Lg/boj;)V

    return-void
.end method

.method public static j(Landroid/view/View;Lg/ddm;)V
    .locals 2

    iget-object v0, p1, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->p:Lg/gid;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg/gid;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    add-float/2addr v0, v1

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lg/ddm;->ds:Lg/dwo;

    iget v1, p0, Lg/dwo;->k:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lg/dwo;->k:F

    invoke-virtual {p1}, Lg/ddm;->ek()V

    :cond_1
    return-void
.end method

.method public static k(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lg/dgd;->v(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lg/dgd;->v(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lg/agk;->k(Landroid/graphics/Typeface;)I

    move-result v0

    invoke-static {p0}, Lg/dgd;->v(Landroid/content/res/Configuration;)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lg/dzm;->af(III)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    invoke-static {p1, p0, v0}, Lg/agk;->u(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lg/hed;)V
    .locals 8

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    const/4 v2, 0x0

    iput-object v2, v1, Lg/fza;->i:Ljava/util/BitSet;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    iget-object v3, v2, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    iget-object v4, v2, Lg/fza;->ab:Lg/fza;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    :goto_1
    if-eq v5, v4, :cond_2

    iget-object v6, v5, Lg/fza;->i:Ljava/util/BitSet;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v6, v5, Lg/fza;->i:Ljava/util/BitSet;

    :cond_3
    iget v7, v2, Lg/fza;->x:I

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v5, Lg/fza;->ab:Lg/fza;

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v1, v0, Lg/fza;->i:Ljava/util/BitSet;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_6
    sget-object v1, Lg/giu;->a:Lg/giu;

    iput-object v1, v0, Lg/fza;->i:Ljava/util/BitSet;

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static m(Lg/dta;ZLg/aov;I)Lg/edw;
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    instance-of p3, p0, Lg/fyw;

    if-eqz p3, :cond_2

    check-cast p0, Lg/fyw;

    invoke-virtual {p0, p1, v1, p2}, Lg/fyw;->ag(ZZLg/era;)Lg/edw;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v2, Lg/ahm;

    const-string v7, "invoke(Ljava/lang/Throwable;)V"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lg/era;

    const-string v6, "invoke"

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lg/gvf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast p0, Lg/fyw;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lg/bht;

    invoke-direct {p2, v2}, Lg/bht;-><init>(Lg/and;)V

    invoke-virtual {p0, p1, v1, p2}, Lg/fyw;->ag(ZZLg/era;)Lg/edw;

    move-result-object p0

    return-object p0
.end method

.method public static n(I)Lg/afo;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance p0, Lg/eeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lg/gki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lg/eeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public static o(Lcom/google/android/gms/internal/ads/zzec;III)I
    .locals 5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    shl-int v0, v2, p1

    shl-int v1, v2, p2

    const/4 v3, -0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgck;->zza(II)I

    move-result v4

    shl-int/2addr v2, p3

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzgck;->zza(II)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v2

    if-ge v2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v0

    if-ge v0, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result p2

    add-int/2addr p1, p2

    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result p2

    if-ge p2, p3, :cond_3

    :goto_1
    return v3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_4
    return p1
.end method

.method public static p(Landroid/content/Context;)Lg/dxw;
    .locals 2

    :try_start_0
    sget-object v0, Lg/dxw;->j:Lg/bli;

    const-string v1, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v0, v1}, Lg/dxw;->t(Landroid/content/Context;Lg/ere;Ljava/lang/String;)Lg/dxw;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lg/eof;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static q(Lcom/google/android/gms/internal/ads/zzec;)V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_1
    return-void
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    sget-object p0, Lg/ftc;->dq:Lg/ftc;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object p0, Lg/ftc;->s:Lg/ftc;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lg/ftc;->d:Lg/ftc;

    goto :goto_1

    :pswitch_1
    sget-object p0, Lg/ftc;->iw:Lg/ftc;

    goto :goto_1

    :pswitch_2
    sget-object p0, Lg/ftc;->p:Lg/ftc;

    goto :goto_1

    :cond_3
    sget-object p0, Lg/ftc;->d:Lg/ftc;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p0, Lg/ftc;->dq:Lg/ftc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    sget-object p0, Lg/ftc;->d:Lg/ftc;

    :goto_1
    :try_start_1
    sget-object v1, Lg/zj;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    goto :goto_2

    :cond_5
    const-string p0, "mobile"

    goto :goto_3

    :cond_6
    const-string p0, "4g"

    goto :goto_3

    :cond_7
    const-string p0, "3g"

    goto :goto_3

    :cond_8
    const-string p0, "2g"

    goto :goto_3

    :cond_9
    const-string p0, "wifi"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    const-string p0, ""

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic s(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    if-eqz p3, :cond_4

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :try_start_0
    invoke-virtual {p1, v0, v1}, Lg/cqo;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_2

    invoke-static {p0}, Lg/cnf;->e(Landroid/app/FragmentManager;)Z

    move-result p0

    if-nez p0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static u(IZ)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lg/cbd;->d(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    const/16 p1, 0x370

    const/16 v0, 0x2e

    if-ge p0, p1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eq p0, v0, :cond_2

    const/16 p1, 0x2d

    if-ne p0, p1, :cond_3

    :cond_2
    :goto_0
    sget-object p1, Lg/cbd;->a:Ljava/util/regex/Pattern;

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static v(Ljava/io/RandomAccessFile;)Lg/bgk;
    .locals 8

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    const-wide/32 v6, 0x10016

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    const v0, 0x6054b50

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    new-instance v0, Lg/bgk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, v0, Lg/bgk;->b:J

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    int-to-long v1, p0

    and-long/2addr v1, v3

    iput-wide v1, v0, Lg/bgk;->a:J

    return-object v0

    :cond_1
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "End Of Central Directory signature not found"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File too short to be a zip file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Ljava/util/ArrayList;Ljava/util/function/Function;)[Lg/fza;
    .locals 12

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lg/fza;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    invoke-interface {p1, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    iget v10, v9, Lg/fza;->x:I

    aget-object v11, v1, v10

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_2
    const/4 v10, -0x1

    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    iget v7, v7, Lg/fza;->x:I

    if-ne v7, v10, :cond_4

    goto :goto_2

    :cond_4
    aget-object v8, v1, v7

    if-eqz v8, :cond_3

    iget v8, v9, Lg/fza;->x:I

    :cond_5
    if-eq v7, v8, :cond_7

    :goto_3
    if-le v7, v8, :cond_6

    aget-object v7, v1, v7

    iget v7, v7, Lg/fza;->x:I

    goto :goto_3

    :cond_6
    :goto_4
    if-le v8, v7, :cond_5

    aget-object v8, v1, v8

    iget v8, v8, Lg/fza;->x:I

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    move-object v9, v7

    goto :goto_2

    :cond_8
    aget-object v6, v1, v5

    if-eq v6, v9, :cond_9

    aput-object v9, v1, v5

    const/4 v4, 0x1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    new-instance p0, Lg/gck;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No immediate dominator for block: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    return-object v1
.end method

.method public static x(Lcom/google/android/material/appbar/MaterialToolbar;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static y(Lg/bto;Lg/coh;Lg/coh;)V
    .locals 0

    :try_start_0
    check-cast p0, Lg/bry;

    invoke-virtual {p0, p1, p2}, Lg/bry;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p0

    invoke-static {p0}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p0

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    invoke-static {p1, p0}, Lg/baf;->ad(Ljava/lang/Object;Lg/bdp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/coh;->_z(Ljava/lang/Object;)V

    throw p0
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;Lg/evt;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/evt;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lg/eof;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract b(Lg/gea;Ljava/lang/Object;)V
.end method
