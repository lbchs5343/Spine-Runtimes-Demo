.class public final Lg/cwq;
.super Lg/haz;
.source "SourceFile"


# static fields
.field public static a:Lg/cwq;

.field public static b:Lg/cwz;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lg/sr;

.field public e:Z


# direct methods
.method public static f(Lg/cms;)Lg/cwq;
    .locals 3

    sget-object v0, Lg/cwq;->a:Lg/cwq;

    if-nez v0, :cond_1

    const-class v0, Lg/cwq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/cwq;->a:Lg/cwq;

    if-nez v1, :cond_0

    new-instance v1, Lg/cwq;

    invoke-direct {v1, p0}, Lg/haz;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/cwq;->e:Z

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lg/haz;->o:Ljava/util/HashMap;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/haz;->p:Z

    sput-object v1, Lg/cwq;->a:Lg/cwq;

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object p0

    sput-object p0, Lg/cwq;->b:Lg/cwz;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lg/cwq;->a:Lg/cwq;

    return-object p0
.end method


# virtual methods
.method public final g(Lg/gqc;IZ)V
    .locals 1

    iget-object p2, p0, Lg/haz;->v:Landroid/content/Context;

    iget-object p3, p0, Lg/cwq;->c:Ljava/lang/String;

    invoke-static {p2, p3}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lg/haz;->w:Z

    invoke-virtual {p1, p3}, Lg/gqc;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lg/haz;->w:Z

    invoke-virtual {p1, p3}, Lg/gqc;->a(Lg/dkp;)V

    return-void
.end method

.method public final h(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 3

    iget-boolean v0, p0, Lg/cwq;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lg/cwq;->j(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-class p2, Lg/haz;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lg/cwq;->b:Lg/cwz;

    invoke-virtual {v0, p1, v1}, Lg/cwz;->c(Ljava/lang/String;Z)Lg/auj;

    move-result-object p1

    iget-object v0, p0, Lg/haz;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dgx;

    iget-object v2, v1, Lg/dgx;->a:Lg/bsx;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lg/bsx;->i(Lg/auj;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, p3}, Lg/haz;->z(Lg/dgx;Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i()V
    .locals 4

    invoke-super {p0}, Lg/haz;->i()V

    iget-object v0, p0, Lg/haz;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lg/sr;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/cwq;->d:Lg/sr;

    iget-object v0, p0, Lg/haz;->v:Landroid/content/Context;

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/cwq;->d:Lg/sr;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "window_state_changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/cwq;->b:Lg/cwz;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg/cwz;->c(Ljava/lang/String;Z)Lg/auj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
