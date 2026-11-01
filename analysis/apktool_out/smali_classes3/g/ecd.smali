.class public final Lg/ecd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field public static final b:Lcom/google/android/gms/common/api/Status;

.field public static c:Lg/ecd;

.field public static final d:Ljava/lang/Object;


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Lg/fdy;

.field public final g:Lj$/util/concurrent/ConcurrentHashMap;

.field public h:Lg/axe;

.field public final i:Lg/glm;

.field public final j:Lg/glm;

.field public k:Lg/boe;

.field public final l:Landroid/content/Context;

.field public m:J

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public o:Z

.field public volatile p:Z

.field public final q:Lg/dae;

.field public final r:Lg/awe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lg/ecd;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lg/ecd;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/ecd;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    sget-object v0, Lg/awe;->a:Lg/awe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lg/ecd;->m:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/ecd;->o:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lg/ecd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lg/ecd;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lg/glm;

    invoke-direct {v2, v1}, Lg/glm;-><init>(I)V

    iput-object v2, p0, Lg/ecd;->j:Lg/glm;

    new-instance v2, Lg/glm;

    invoke-direct {v2, v1}, Lg/glm;-><init>(I)V

    iput-object v2, p0, Lg/ecd;->i:Lg/glm;

    iput-boolean v3, p0, Lg/ecd;->p:Z

    iput-object p1, p0, Lg/ecd;->l:Landroid/content/Context;

    new-instance v2, Lg/dae;

    const/4 v4, 0x3

    invoke-direct {v2, p2, p0, v4}, Lg/dae;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object v2, p0, Lg/ecd;->q:Lg/dae;

    iput-object v0, p0, Lg/ecd;->r:Lg/awe;

    new-instance p2, Lg/fdy;

    const/16 v0, 0x13

    invoke-direct {p2, v0}, Lg/fdy;-><init>(I)V

    iput-object p2, p0, Lg/ecd;->f:Lg/fdy;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lg/awt;->i:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    invoke-static {}, Lg/dyd;->bj()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lg/awt;->i:Ljava/lang/Boolean;

    :cond_1
    sget-object p1, Lg/awt;->i:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lg/ecd;->p:Z

    :cond_2
    const/4 p1, 0x6

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static s(Landroid/content/Context;)Lg/ecd;
    .locals 4

    sget-object v0, Lg/ecd;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/ecd;->c:Lg/ecd;

    if-nez v1, :cond_0

    invoke-static {}, Lg/bxk;->k()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lg/ecd;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lg/awe;->b:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lg/ecd;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lg/ecd;->c:Lg/ecd;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lg/ecd;->c:Lg/ecd;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static t(Lg/dzu;Lg/nk;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lg/dzu;->c:Lg/akj;

    iget-object p0, p0, Lg/akj;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "API: "

    const-string v3, " is not available on this device. Connection failed with: "

    invoke-static {v2, p0, v3, v1}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lg/nk;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    const/4 v4, 0x2

    sget-object v5, Lg/boe;->a:Lg/akj;

    sget-object v6, Lg/gja;->b:Lg/gja;

    const-wide/32 v7, 0x493e0

    iget-object v9, v0, Lg/ecd;->l:Landroid/content/Context;

    const/4 v10, 0x0

    const/16 v11, 0x11

    const/4 v12, 0x0

    iget-object v13, v0, Lg/ecd;->q:Lg/dae;

    const/4 v14, 0x1

    iget-object v15, v0, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    packed-switch v2, :pswitch_data_0

    return v12

    :pswitch_0
    iput-boolean v12, v0, Lg/ecd;->o:Z

    return v14

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg/bkf;

    iget-wide v7, v1, Lg/bkf;->d:J

    iget-object v2, v1, Lg/bkf;->b:Lg/brg;

    iget v15, v1, Lg/bkf;->c:I

    const-wide/16 v16, 0x0

    cmp-long v18, v7, v16

    if-nez v18, :cond_1

    new-instance v1, Lg/axe;

    new-array v7, v14, [Lg/brg;

    aput-object v2, v7, v12

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Lg/axe;-><init>(ILjava/util/List;)V

    iget-object v2, v0, Lg/ecd;->k:Lg/boe;

    if-nez v2, :cond_0

    new-instance v2, Lg/boe;

    sget-object v7, Lg/cqe;->a:Lg/cqe;

    invoke-direct {v2, v9, v5, v6, v7}, Lg/bxx;-><init>(Landroid/content/Context;Lg/akj;Lg/ama;Lg/cqe;)V

    iput-object v2, v0, Lg/ecd;->k:Lg/boe;

    :cond_0
    iget-object v2, v0, Lg/ecd;->k:Lg/boe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lg/cpq;

    invoke-direct {v5, v4}, Lg/cpq;-><init>(I)V

    iput-boolean v14, v5, Lg/cpq;->e:Z

    iput v12, v5, Lg/cpq;->d:I

    new-array v6, v14, [Lg/cqg;

    sget-object v7, Lg/fkh;->a:Lg/cqg;

    aput-object v7, v6, v12

    iput-object v6, v5, Lg/cpq;->b:Ljava/lang/Object;

    iput-boolean v12, v5, Lg/cpq;->e:Z

    new-instance v7, Lg/fnq;

    invoke-direct {v7, v3, v1}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iput-object v7, v5, Lg/cpq;->a:Ljava/lang/Object;

    new-instance v1, Lg/cpq;

    invoke-direct {v1, v5, v6, v12, v12}, Lg/cpq;-><init>(Lg/cpq;[Lg/cqg;ZI)V

    invoke-virtual {v2, v4, v1}, Lg/bxx;->k(ILg/cpq;)Lg/chw;

    return v14

    :cond_1
    iget-object v7, v0, Lg/ecd;->h:Lg/axe;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lg/axe;->zab()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Lg/axe;->zaa()I

    move-result v7

    if-ne v7, v15, :cond_3

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    iget v8, v1, Lg/bkf;->a:I

    if-lt v7, v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lg/ecd;->h:Lg/axe;

    invoke-virtual {v3, v2}, Lg/axe;->zac(Lg/brg;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v13, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, v0, Lg/ecd;->h:Lg/axe;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lg/axe;->zaa()I

    move-result v8

    if-gtz v8, :cond_4

    invoke-virtual {v0}, Lg/ecd;->v()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    iget-object v8, v0, Lg/ecd;->k:Lg/boe;

    if-nez v8, :cond_5

    new-instance v8, Lg/boe;

    sget-object v11, Lg/cqe;->a:Lg/cqe;

    invoke-direct {v8, v9, v5, v6, v11}, Lg/bxx;-><init>(Landroid/content/Context;Lg/akj;Lg/ama;Lg/cqe;)V

    iput-object v8, v0, Lg/ecd;->k:Lg/boe;

    :cond_5
    iget-object v5, v0, Lg/ecd;->k:Lg/boe;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/cpq;

    invoke-direct {v6, v4}, Lg/cpq;-><init>(I)V

    iput-boolean v14, v6, Lg/cpq;->e:Z

    iput v12, v6, Lg/cpq;->d:I

    new-array v8, v14, [Lg/cqg;

    sget-object v9, Lg/fkh;->a:Lg/cqg;

    aput-object v9, v8, v12

    iput-object v8, v6, Lg/cpq;->b:Ljava/lang/Object;

    iput-boolean v12, v6, Lg/cpq;->e:Z

    new-instance v9, Lg/fnq;

    invoke-direct {v9, v3, v7}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iput-object v9, v6, Lg/cpq;->a:Ljava/lang/Object;

    new-instance v3, Lg/cpq;

    invoke-direct {v3, v6, v8, v12, v12}, Lg/cpq;-><init>(Lg/cpq;[Lg/cqg;ZI)V

    invoke-virtual {v5, v4, v3}, Lg/bxx;->k(ILg/cpq;)Lg/chw;

    :cond_6
    iput-object v10, v0, Lg/ecd;->h:Lg/axe;

    :cond_7
    :goto_1
    iget-object v3, v0, Lg/ecd;->h:Lg/axe;

    if-nez v3, :cond_1f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/axe;

    invoke-direct {v2, v15, v3}, Lg/axe;-><init>(ILjava/util/List;)V

    iput-object v2, v0, Lg/ecd;->h:Lg/axe;

    const/16 v2, 0x11

    invoke-virtual {v13, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, v1, Lg/bkf;->d:J

    invoke-virtual {v13, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v14

    :pswitch_2
    iget-object v1, v0, Lg/ecd;->h:Lg/axe;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lg/axe;->zaa()I

    move-result v2

    if-gtz v2, :cond_8

    invoke-virtual {v0}, Lg/ecd;->v()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, v0, Lg/ecd;->k:Lg/boe;

    if-nez v2, :cond_9

    new-instance v2, Lg/boe;

    sget-object v7, Lg/cqe;->a:Lg/cqe;

    invoke-direct {v2, v9, v5, v6, v7}, Lg/bxx;-><init>(Landroid/content/Context;Lg/akj;Lg/ama;Lg/cqe;)V

    iput-object v2, v0, Lg/ecd;->k:Lg/boe;

    :cond_9
    iget-object v2, v0, Lg/ecd;->k:Lg/boe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lg/cpq;

    invoke-direct {v5, v4}, Lg/cpq;-><init>(I)V

    iput-boolean v14, v5, Lg/cpq;->e:Z

    iput v12, v5, Lg/cpq;->d:I

    new-array v6, v14, [Lg/cqg;

    sget-object v7, Lg/fkh;->a:Lg/cqg;

    aput-object v7, v6, v12

    iput-object v6, v5, Lg/cpq;->b:Ljava/lang/Object;

    iput-boolean v12, v5, Lg/cpq;->e:Z

    new-instance v7, Lg/fnq;

    invoke-direct {v7, v3, v1}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iput-object v7, v5, Lg/cpq;->a:Ljava/lang/Object;

    new-instance v1, Lg/cpq;

    invoke-direct {v1, v5, v6, v12, v12}, Lg/cpq;-><init>(Lg/cpq;[Lg/cqg;ZI)V

    invoke-virtual {v2, v4, v1}, Lg/bxx;->k(ILg/cpq;)Lg/chw;

    :cond_a
    iput-object v10, v0, Lg/ecd;->h:Lg/axe;

    return v14

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg/ccg;

    iget-object v2, v1, Lg/ccg;->a:Lg/dzu;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lg/ccg;->a:Lg/dzu;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fbd;

    iget-object v3, v2, Lg/fbd;->c:Ljava/util/ArrayList;

    iget-object v4, v2, Lg/fbd;->m:Lg/ecd;

    iget-object v4, v4, Lg/ecd;->q:Lg/dae;

    iget-object v5, v2, Lg/fbd;->i:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v3, 0xf

    invoke-virtual {v4, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v3, 0x10

    invoke-virtual {v4, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v1, Lg/ccg;->b:Lg/cqg;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/alm;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v2}, Lg/alm;->g(Lg/fbd;)[Lg/cqg;

    move-result-object v7

    if-eqz v7, :cond_b

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_b

    aget-object v10, v7, v9

    invoke-static {v10, v1}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-ltz v9, :cond_b

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v12, v2, :cond_1f

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/alm;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v6, Lg/dkf;

    invoke-direct {v6, v1}, Lg/dkf;-><init>(Lg/cqg;)V

    invoke-virtual {v4, v6}, Lg/alm;->c(Ljava/lang/Exception;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg/ccg;

    iget-object v2, v1, Lg/ccg;->a:Lg/dzu;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lg/ccg;->a:Lg/dzu;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fbd;

    iget-object v3, v2, Lg/fbd;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_b

    :cond_e
    iget-boolean v1, v2, Lg/fbd;->k:Z

    if-nez v1, :cond_1f

    iget-object v1, v2, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v1}, Lg/cqh;->isConnected()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v2}, Lg/fbd;->z()V

    return v14

    :cond_f
    invoke-virtual {v2}, Lg/fbd;->r()V

    return v14

    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fbd;

    iget-object v2, v1, Lg/fbd;->m:Lg/ecd;

    iget-object v2, v2, Lg/ecd;->q:Lg/dae;

    invoke-static {v2}, Lg/ckd;->x(Landroid/os/Handler;)V

    iget-object v2, v1, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v2}, Lg/cqh;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v1, Lg/fbd;->n:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v1, Lg/fbd;->g:Lg/clx;

    iget-object v4, v3, Lg/clx;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v3, v3, Lg/clx;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    const-string v1, "Timing out service connection."

    invoke-interface {v2, v1}, Lg/cqh;->disconnect(Ljava/lang/String;)V

    return v14

    :cond_11
    :goto_5
    invoke-virtual {v1}, Lg/fbd;->ab()V

    :cond_12
    return v14

    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fbd;

    iget-object v2, v1, Lg/fbd;->m:Lg/ecd;

    iget-object v4, v2, Lg/ecd;->q:Lg/dae;

    invoke-static {v4}, Lg/ckd;->x(Landroid/os/Handler;)V

    iget-boolean v4, v1, Lg/fbd;->k:Z

    if-eqz v4, :cond_1f

    iget-object v5, v1, Lg/fbd;->d:Lg/dzu;

    iget-object v6, v1, Lg/fbd;->m:Lg/ecd;

    iget-object v6, v6, Lg/ecd;->q:Lg/dae;

    if-eqz v4, :cond_13

    const/16 v4, 0xb

    invoke-virtual {v6, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v4, 0x9

    invoke-virtual {v6, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v12, v1, Lg/fbd;->k:Z

    :cond_13
    iget-object v4, v2, Lg/ecd;->r:Lg/awe;

    iget-object v2, v2, Lg/ecd;->l:Landroid/content/Context;

    sget v5, Lg/gna;->h:I

    invoke-virtual {v4, v2, v5}, Lg/gna;->l(Landroid/content/Context;I)I

    move-result v2

    const/16 v4, 0x12

    if-ne v2, v4, :cond_14

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x15

    const-string v4, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_6

    :cond_14
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const-string v4, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {v1, v2}, Lg/fbd;->y(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, v1, Lg/fbd;->l:Lg/cqh;

    const-string v2, "Timing out connection while resuming."

    invoke-interface {v1, v2}, Lg/cqh;->disconnect(Ljava/lang/String;)V

    return v14

    :pswitch_8
    iget-object v1, v0, Lg/ecd;->i:Lg/glm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/hx;

    invoke-direct {v2, v1}, Lg/hx;-><init>(Lg/glm;)V

    :cond_15
    :goto_7
    invoke-virtual {v2}, Lg/hx;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lg/hx;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dzu;

    invoke-virtual {v15, v3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fbd;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lg/fbd;->q()V

    goto :goto_7

    :cond_16
    invoke-virtual {v1}, Lg/glm;->clear()V

    return v14

    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fbd;

    iget-object v2, v1, Lg/fbd;->m:Lg/ecd;

    iget-object v2, v2, Lg/ecd;->q:Lg/dae;

    invoke-static {v2}, Lg/ckd;->x(Landroid/os/Handler;)V

    iget-boolean v2, v1, Lg/fbd;->k:Z

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lg/fbd;->z()V

    return v14

    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg/bxx;

    invoke-virtual {v0, v1}, Lg/ecd;->u(Lg/bxx;)Lg/fbd;

    return v14

    :pswitch_b
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1f

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lg/cwv;->f(Landroid/app/Application;)V

    sget-object v1, Lg/cwv;->a:Lg/cwv;

    new-instance v2, Lg/efy;

    invoke-direct {v2, v0}, Lg/efy;-><init>(Lg/ecd;)V

    invoke-virtual {v1, v2}, Lg/cwv;->g(Lg/gxn;)V

    iget-object v2, v1, Lg/cwv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, v1, Lg/cwv;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_17

    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v3}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_17

    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-le v1, v3, :cond_17

    invoke-virtual {v2, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1f

    iput-wide v7, v0, Lg/ecd;->m:J

    return v14

    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg/nk;

    invoke-virtual {v15}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fbd;

    iget v5, v4, Lg/fbd;->b:I

    if-ne v5, v2, :cond_18

    move-object v10, v4

    :cond_19
    if-eqz v10, :cond_1b

    invoke-virtual {v1}, Lg/nk;->getErrorCode()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1a

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lg/nk;->getErrorCode()I

    move-result v3

    iget-object v4, v0, Lg/ecd;->r:Lg/awe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/evp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v3}, Lg/nk;->zza(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lg/nk;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Error resolution was canceled by the user, original error message: "

    const-string v5, ": "

    invoke-static {v4, v3, v5, v1}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v2}, Lg/fbd;->y(Lcom/google/android/gms/common/api/Status;)V

    return v14

    :cond_1a
    iget-object v2, v10, Lg/fbd;->d:Lg/dzu;

    invoke-static {v2, v1}, Lg/ecd;->t(Lg/dzu;Lg/nk;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v10, v1}, Lg/fbd;->y(Lcom/google/android/gms/common/api/Status;)V

    return v14

    :cond_1b
    const-string v1, "Could not find API instance "

    const-string v3, " while trying to fail enqueued calls."

    invoke-static {v2, v1, v3}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiManager"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v14

    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg/clf;

    iget-object v2, v1, Lg/clf;->c:Lg/bxx;

    iget-object v3, v1, Lg/clf;->a:Lg/fdb;

    iget-object v2, v2, Lg/bxx;->f:Lg/dzu;

    invoke-virtual {v15, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fbd;

    if-nez v2, :cond_1c

    iget-object v2, v1, Lg/clf;->c:Lg/bxx;

    invoke-virtual {v0, v2}, Lg/ecd;->u(Lg/bxx;)Lg/fbd;

    move-result-object v2

    :cond_1c
    iget-object v4, v2, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v4}, Lg/cqh;->requiresSignIn()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lg/ecd;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v1, v1, Lg/clf;->b:I

    if-eq v4, v1, :cond_1d

    sget-object v1, Lg/ecd;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v1}, Lg/fdb;->h(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v2}, Lg/fbd;->q()V

    return v14

    :cond_1d
    invoke-virtual {v2, v3}, Lg/fbd;->p(Lg/alm;)V

    return v14

    :pswitch_e
    invoke-virtual {v15}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fbd;

    iget-object v3, v2, Lg/fbd;->m:Lg/ecd;

    iget-object v3, v3, Lg/ecd;->q:Lg/dae;

    invoke-static {v3}, Lg/ckd;->x(Landroid/os/Handler;)V

    iput-object v10, v2, Lg/fbd;->f:Lg/nk;

    invoke-virtual {v2}, Lg/fbd;->z()V

    goto :goto_8

    :pswitch_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v14, v1, :cond_1e

    goto :goto_9

    :cond_1e
    const-wide/16 v7, 0x2710

    :goto_9
    iput-wide v7, v0, Lg/ecd;->m:J

    const/16 v1, 0xc

    invoke-virtual {v13, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v15}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dzu;

    invoke-virtual {v13, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, v0, Lg/ecd;->m:J

    invoke-virtual {v13, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_1f
    :goto_b
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Lg/bxx;)Lg/fbd;
    .locals 3

    iget-object v0, p1, Lg/bxx;->f:Lg/dzu;

    iget-object v1, p0, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fbd;

    if-nez v2, :cond_0

    new-instance v2, Lg/fbd;

    invoke-direct {v2, p0, p1}, Lg/fbd;-><init>(Lg/ecd;Lg/bxx;)V

    invoke-virtual {v1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lg/fbd;->l:Lg/cqh;

    invoke-interface {p1}, Lg/cqh;->requiresSignIn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/ecd;->i:Lg/glm;

    invoke-virtual {p1, v0}, Lg/glm;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lg/fbd;->z()V

    return-object v2
.end method

.method public final v()Z
    .locals 3

    iget-boolean v0, p0, Lg/ecd;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/cbn;->d()Lg/cbn;

    move-result-object v0

    iget-object v0, v0, Lg/cbn;->c:Lg/fzo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/fzo;->getMethodInvocationTelemetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lg/ecd;->f:Lg/fdy;

    iget-object v0, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const v1, 0xc1fa340

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final w(Lg/nk;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lg/ecd;->x(Lg/nk;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lg/ecd;->q:Lg/dae;

    invoke-virtual {v2, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final x(Lg/nk;I)Z
    .locals 7

    iget-object v0, p0, Lg/ecd;->r:Lg/awe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/ecd;->l:Landroid/content/Context;

    invoke-static {v1}, Lg/ckd;->bd(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lg/nk;->hasResolution()Z

    move-result v2

    const/high16 v4, 0x8000000

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lg/nk;->getResolution()Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/nk;->getErrorCode()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lg/gna;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v5

    goto :goto_0

    :cond_2
    sget v5, Lg/dr;->a:I

    or-int/2addr v5, v4

    invoke-static {v1, v3, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lg/nk;->getErrorCode()I

    move-result p1

    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pending_intent"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "failing_client_id"

    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notify_manager"

    const/4 v2, 0x1

    invoke-virtual {v5, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p2, Lg/alo;->a:I

    or-int/2addr p2, v4

    invoke-static {v1, v3, v5, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lg/awe;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v2

    :cond_3
    :goto_1
    return v3
.end method
