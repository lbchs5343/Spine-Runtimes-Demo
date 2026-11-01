.class public final Lg/fbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fwr;
.implements Lg/dko;


# instance fields
.field public final a:Lg/aan;

.field public final b:I

.field public final c:Ljava/util/ArrayList;

.field public final d:Lg/dzu;

.field public e:I

.field public f:Lg/nk;

.field public final g:Lg/clx;

.field public final h:Ljava/util/HashSet;

.field public final i:Ljava/util/LinkedList;

.field public k:Z

.field public final l:Lg/cqh;

.field public final synthetic m:Lg/ecd;

.field public final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lg/ecd;Lg/bxx;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fbd;->m:Lg/ecd;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg/fbd;->i:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/fbd;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/fbd;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/fbd;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fbd;->f:Lg/nk;

    const/4 v1, 0x0

    iput v1, p0, Lg/fbd;->e:I

    iget-object v1, p1, Lg/ecd;->q:Lg/dae;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p2}, Lg/bxx;->j()Lg/fpd;

    move-result-object v2

    new-instance v5, Lg/daw;

    iget-object v3, v2, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v3, Lg/glm;

    iget-object v6, v2, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v2, v2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v6, v2, v3}, Lg/daw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    iget-object v2, p2, Lg/bxx;->d:Lg/akj;

    iget-object v2, v2, Lg/akj;->h:Ljava/lang/Object;

    check-cast v2, Lg/egh;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v6, p2, Lg/bxx;->e:Lg/ama;

    iget-object v3, p2, Lg/bxx;->g:Landroid/content/Context;

    move-object v8, p0

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Lg/egh;->bk(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Ljava/lang/Object;Lg/fwr;Lg/dko;)Lg/cqh;

    move-result-object v2

    iget-object v3, p2, Lg/bxx;->h:Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v4, v2, Lg/adw;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lg/adw;

    invoke-virtual {v4, v3}, Lg/adw;->setAttributionTag(Ljava/lang/String;)V

    :cond_0
    if-eqz v3, :cond_2

    instance-of v3, v2, Lg/gtq;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lg/awf;->e(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    iput-object v2, v7, Lg/fbd;->l:Lg/cqh;

    iget-object v3, p2, Lg/bxx;->f:Lg/dzu;

    iput-object v3, v7, Lg/fbd;->d:Lg/dzu;

    new-instance v3, Lg/clx;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lg/clx;-><init>(I)V

    iput-object v3, v7, Lg/fbd;->g:Lg/clx;

    iget v3, p2, Lg/bxx;->i:I

    iput v3, v7, Lg/fbd;->b:I

    invoke-interface {v2}, Lg/cqh;->requiresSignIn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lg/ecd;->l:Landroid/content/Context;

    new-instance v0, Lg/aan;

    invoke-virtual {p2}, Lg/bxx;->j()Lg/fpd;

    move-result-object p2

    new-instance v2, Lg/daw;

    iget-object v3, p2, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v3, Lg/glm;

    iget-object v4, p2, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object p2, p2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v2, v4, p2, v3}, Lg/daw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-direct {v0, p1, v1, v2}, Lg/aan;-><init>(Landroid/content/Context;Lg/dae;Lg/daw;)V

    iput-object v0, v7, Lg/fbd;->a:Lg/aan;

    return-void

    :cond_3
    iput-object v0, v7, Lg/fbd;->a:Lg/aan;

    return-void
.end method


# virtual methods
.method public final aa(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0}, Lg/ckd;->x(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lg/fbd;->i:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/alm;

    if-eqz p3, :cond_3

    iget v2, v1, Lg/alm;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lg/alm;->h(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p2}, Lg/alm;->c(Ljava/lang/Exception;)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ab()V
    .locals 5

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v1, v0, Lg/ecd;->q:Lg/dae;

    const/16 v2, 0xc

    iget-object v3, p0, Lg/fbd;->d:Lg/dzu;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, v0, Lg/ecd;->m:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v1, v1, Lg/ecd;->q:Lg/dae;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lg/fbd;->t()V

    return-void

    :cond_0
    new-instance v0, Lg/dyn;

    const/16 v2, 0x12

    invoke-direct {v0, v2, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o(Lg/alm;)Z
    .locals 14

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Lg/alm;->g(Lg/fbd;)[Lg/cqg;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    array-length v5, v2

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v5}, Lg/cqh;->getAvailableFeatures()[Lg/cqg;

    move-result-object v5

    if-nez v5, :cond_1

    new-array v5, v3, [Lg/cqg;

    :cond_1
    new-instance v6, Lg/tl;

    array-length v7, v5

    invoke-direct {v6, v7}, Lg/bcp;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lg/cqg;->getVersion()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    array-length v5, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v2, v7

    invoke-virtual {v8}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, Lg/cqg;->getVersion()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v8, v4

    :cond_5
    :goto_3
    if-nez v8, :cond_6

    iget-object v2, p0, Lg/fbd;->g:Lg/clx;

    iget-object v3, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v3}, Lg/cqh;->requiresSignIn()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lg/alm;->f(Lg/clx;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lg/alm;->d(Lg/fbd;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    invoke-virtual {p0, v1}, Lg/fbd;->onConnectionSuspended(I)V

    invoke-interface {v3, v0}, Lg/cqh;->disconnect(Ljava/lang/String;)V

    return v1

    :cond_6
    iget-object v0, p0, Lg/fbd;->l:Lg/cqh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lg/cqg;->getName()Ljava/lang/String;

    invoke-virtual {v8}, Lg/cqg;->getVersion()J

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-boolean v0, v0, Lg/ecd;->p:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1, p0}, Lg/alm;->e(Lg/fbd;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lg/fbd;->d:Lg/dzu;

    new-instance v0, Lg/ccg;

    invoke-direct {v0, p1, v8}, Lg/ccg;-><init>(Lg/dzu;Lg/cqg;)V

    iget-object p1, p0, Lg/fbd;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-wide/16 v1, 0x1388

    const/16 v5, 0xf

    if-ltz p1, :cond_7

    iget-object v0, p0, Lg/fbd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ccg;

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lg/fbd;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/fbd;->m:Lg/ecd;

    iget-object p1, p1, Lg/ecd;->q:Lg/dae;

    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lg/fbd;->m:Lg/ecd;

    iget-object p1, p1, Lg/ecd;->q:Lg/dae;

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lg/nk;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v4}, Lg/nk;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lg/fbd;->x(Lg/nk;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget v1, p0, Lg/fbd;->b:I

    invoke-virtual {v0, p1, v1}, Lg/ecd;->x(Lg/nk;I)Z

    :cond_8
    :goto_4
    return v3

    :cond_9
    new-instance v0, Lg/dkf;

    invoke-direct {v0, v8}, Lg/dkf;-><init>(Lg/cqg;)V

    invoke-virtual {p1, v0}, Lg/alm;->c(Ljava/lang/Exception;)V

    return v1

    :cond_a
    iget-object v2, p0, Lg/fbd;->g:Lg/clx;

    iget-object v3, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v3}, Lg/cqh;->requiresSignIn()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lg/alm;->f(Lg/clx;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lg/alm;->d(Lg/fbd;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    invoke-virtual {p0, v1}, Lg/fbd;->onConnectionSuspended(I)V

    invoke-interface {v3, v0}, Lg/cqh;->disconnect(Ljava/lang/String;)V

    return v1
.end method

.method public final onConnectionFailed(Lg/nk;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v1, v1, Lg/ecd;->q:Lg/dae;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lg/fbd;->v(I)V

    return-void

    :cond_0
    new-instance v0, Lg/dj;

    const/4 v2, 0x7

    invoke-direct {v0, p0, p1, v2}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(Lg/alm;)V
    .locals 2

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0}, Lg/ckd;->x(Landroid/os/Handler;)V

    iget-object v0, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v0}, Lg/cqh;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lg/fbd;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lg/fbd;->o(Lg/alm;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/fbd;->ab()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/fbd;->f:Lg/nk;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lg/nk;->hasResolution()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/fbd;->f:Lg/nk;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lg/fbd;->z()V

    return-void
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0}, Lg/ckd;->x(Landroid/os/Handler;)V

    sget-object v0, Lg/ecd;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lg/fbd;->y(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lg/fbd;->g:Lg/clx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lg/clx;->l(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lg/fbd;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lg/gnp;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gnp;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v3, Lg/azs;

    new-instance v4, Lg/eeo;

    invoke-direct {v4}, Lg/eeo;-><init>()V

    invoke-direct {v3, v4}, Lg/azs;-><init>(Lg/eeo;)V

    invoke-virtual {p0, v3}, Lg/fbd;->p(Lg/alm;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lg/nk;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/nk;-><init>(I)V

    invoke-virtual {p0, v0}, Lg/fbd;->u(Lg/nk;)V

    iget-object v0, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v0}, Lg/cqh;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lg/evf;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lg/cqh;->onUserSignOut(Lg/bsf;)V

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/fbd;->i:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/alm;

    iget-object v5, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v5}, Lg/cqh;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lg/fbd;->o(Lg/alm;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final s(Lg/nk;Ljava/lang/RuntimeException;)V
    .locals 6

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0}, Lg/ckd;->x(Landroid/os/Handler;)V

    iget-object v0, p0, Lg/fbd;->a:Lg/aan;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/aan;->d:Lg/cdq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/cqh;->disconnect()V

    :cond_0
    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0}, Lg/ckd;->x(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fbd;->f:Lg/nk;

    iget-object v1, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v1, v1, Lg/ecd;->f:Lg/fdy;

    iget-object v1, v1, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lg/fbd;->u(Lg/nk;)V

    iget-object v1, p0, Lg/fbd;->l:Lg/cqh;

    instance-of v1, v1, Lg/aka;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lg/nk;->getErrorCode()I

    move-result v1

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lg/fbd;->m:Lg/ecd;

    iput-boolean v2, v1, Lg/ecd;->o:Z

    iget-object v1, v1, Lg/ecd;->q:Lg/dae;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-virtual {p1}, Lg/nk;->getErrorCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    sget-object p1, Lg/ecd;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lg/fbd;->y(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v1, p0, Lg/fbd;->i:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lg/fbd;->f:Lg/nk;

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lg/fbd;->m:Lg/ecd;

    iget-object p1, p1, Lg/ecd;->q:Lg/dae;

    invoke-static {p1}, Lg/ckd;->x(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lg/fbd;->aa(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lg/fbd;->m:Lg/ecd;

    iget-boolean p2, p2, Lg/ecd;->p:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lg/fbd;->d:Lg/dzu;

    invoke-static {p2, p1}, Lg/ecd;->t(Lg/dzu;Lg/nk;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v2}, Lg/fbd;->aa(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lg/fbd;->i:Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lg/fbd;->x(Lg/nk;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lg/fbd;->m:Lg/ecd;

    iget v0, p0, Lg/fbd;->b:I

    invoke-virtual {p2, p1, v0}, Lg/ecd;->x(Lg/nk;I)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lg/nk;->getErrorCode()I

    move-result p2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_6

    iput-boolean v2, p0, Lg/fbd;->k:Z

    :cond_6
    iget-boolean p2, p0, Lg/fbd;->k:Z

    if-eqz p2, :cond_7

    iget-object p1, p0, Lg/fbd;->m:Lg/ecd;

    iget-object p2, p0, Lg/fbd;->d:Lg/dzu;

    iget-object p1, p1, Lg/ecd;->q:Lg/dae;

    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    iget-object p2, p0, Lg/fbd;->d:Lg/dzu;

    invoke-static {p2, p1}, Lg/ecd;->t(Lg/dzu;Lg/nk;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fbd;->y(Lcom/google/android/gms/common/api/Status;)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    iget-object p2, p0, Lg/fbd;->d:Lg/dzu;

    invoke-static {p2, p1}, Lg/ecd;->t(Lg/dzu;Lg/nk;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fbd;->y(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v1, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v1}, Lg/ckd;->x(Landroid/os/Handler;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lg/fbd;->f:Lg/nk;

    sget-object v1, Lg/nk;->RESULT_SUCCESS:Lg/nk;

    invoke-virtual {p0, v1}, Lg/fbd;->u(Lg/nk;)V

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    iget-boolean v1, p0, Lg/fbd;->k:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    iget-object v2, p0, Lg/fbd;->d:Lg/dzu;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fbd;->k:Z

    :cond_0
    iget-object v0, p0, Lg/fbd;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lg/fbd;->r()V

    invoke-virtual {p0}, Lg/fbd;->ab()V

    return-void

    :cond_1
    invoke-static {v0}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method

.method public final u(Lg/nk;)V
    .locals 3

    iget-object v0, p0, Lg/fbd;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lg/nk;->RESULT_SUCCESS:Lg/nk;

    invoke-static {p1, v0}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {p1}, Lg/cqh;->getEndpointPackageName()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final v(I)V
    .locals 7

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v1, v0, Lg/ecd;->q:Lg/dae;

    iget-object v2, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v2}, Lg/ckd;->x(Landroid/os/Handler;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lg/fbd;->f:Lg/nk;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lg/fbd;->k:Z

    iget-object v3, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v3}, Lg/cqh;->getLastDisconnectMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/fbd;->g:Lg/clx;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The connection to Google Play services was lost"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v2, :cond_0

    const-string p1, " due to service disconnection."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    const-string p1, " due to dead object exception."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v5, 0x14

    invoke-direct {v3, v5, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lg/clx;->l(ZLcom/google/android/gms/common/api/Status;)V

    const/16 p1, 0x9

    iget-object v2, p0, Lg/fbd;->d:Lg/dzu;

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 p1, 0xb

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, v0, Lg/ecd;->f:Lg/fdy;

    iget-object p1, p1, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Lg/fbd;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final w(Lg/nk;)V
    .locals 5

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0}, Lg/ckd;->x(Landroid/os/Handler;)V

    iget-object v0, p0, Lg/fbd;->l:Lg/cqh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSignInFailed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/cqh;->disconnect(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final x(Lg/nk;)Z
    .locals 1

    sget-object p1, Lg/ecd;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final y(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v0}, Lg/ckd;->x(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lg/fbd;->aa(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final z()V
    .locals 11

    iget-object v0, p0, Lg/fbd;->m:Lg/ecd;

    iget-object v1, v0, Lg/ecd;->q:Lg/dae;

    invoke-static {v1}, Lg/ckd;->x(Landroid/os/Handler;)V

    iget-object v1, p0, Lg/fbd;->l:Lg/cqh;

    invoke-interface {v1}, Lg/cqh;->isConnected()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v1}, Lg/cqh;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    iget-object v3, v0, Lg/ecd;->f:Lg/fdy;

    iget-object v4, v0, Lg/ecd;->l:Landroid/content/Context;

    iget-object v5, v3, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseIntArray;

    invoke-static {v4}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-interface {v1}, Lg/cqh;->requiresGooglePlayServices()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lg/cqh;->getMinApkVersion()I

    move-result v6

    iget-object v8, v3, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v8, Landroid/util/SparseIntArray;

    const/4 v9, -0x1

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eq v8, v9, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_4

    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    if-le v10, v6, :cond_3

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, -0x1

    :goto_1
    if-ne v7, v9, :cond_5

    iget-object v3, v3, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v3, Lg/awe;

    invoke-virtual {v3, v4, v6}, Lg/gna;->l(Landroid/content/Context;I)I

    move-result v3

    move v7, v3

    :cond_5
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v7, :cond_6

    new-instance v0, Lg/nk;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lg/nk;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lg/nk;->toString()Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_6
    new-instance v3, Lg/axs;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lg/axs;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v3, Lg/axs;->e:Ljava/lang/Object;

    iput-object v0, v3, Lg/axs;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v3, Lg/axs;->g:Z

    iput-object v1, v3, Lg/axs;->a:Ljava/lang/Object;

    iget-object v0, p0, Lg/fbd;->d:Lg/dzu;

    iput-object v0, v3, Lg/axs;->d:Ljava/lang/Object;

    invoke-interface {v1}, Lg/cqh;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v9, p0, Lg/fbd;->a:Lg/aan;

    invoke-static {v9}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v9, Lg/aan;->e:Landroid/os/Handler;

    iget-object v7, v9, Lg/aan;->i:Lg/daw;

    iget-object v4, v9, Lg/aan;->d:Lg/cdq;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lg/cqh;->disconnect()V

    :cond_7
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v7, Lg/daw;->g:Ljava/lang/Object;

    iget-object v4, v9, Lg/aan;->f:Lg/gzt;

    iget-object v5, v9, Lg/aan;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v8, v7, Lg/daw;->d:Ljava/lang/Object;

    check-cast v8, Lg/axa;

    move-object v10, v9

    invoke-virtual/range {v4 .. v10}, Lg/gzt;->bk(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Ljava/lang/Object;Lg/fwr;Lg/dko;)Lg/cqh;

    move-result-object v4

    check-cast v4, Lg/cdq;

    iput-object v4, v9, Lg/aan;->d:Lg/cdq;

    iput-object v3, v9, Lg/aan;->b:Lg/axs;

    iget-object v4, v9, Lg/aan;->g:Ljava/util/Set;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, v9, Lg/aan;->d:Lg/cdq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg/dcq;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Lg/adw;->connect(Lg/fnt;)V

    goto :goto_4

    :cond_9
    :goto_3
    new-instance v4, Lg/dyn;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v9}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_4
    :try_start_1
    invoke-interface {v1, v3}, Lg/cqh;->connect(Lg/fnt;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lg/nk;

    invoke-direct {v1, v2}, Lg/nk;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V

    return-void

    :goto_5
    new-instance v1, Lg/nk;

    invoke-direct {v1, v2}, Lg/nk;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V

    :cond_b
    :goto_6
    return-void
.end method
