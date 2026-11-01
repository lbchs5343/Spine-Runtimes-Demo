.class public abstract Lg/ka;
.super Lg/ghz;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static a:Z

.field public static b:Ljava/util/ArrayList;

.field public static c:Ljava/lang/String;


# instance fields
.field public d:Landroid/view/View;

.field public e:J

.field public f:Landroid/view/View;

.field public volatile g:Z

.field public h:Landroid/view/View;

.field public i:Landroid/view/WindowManager;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public k:Landroid/view/View;

.field public l:Lg/axs;

.field public m:Lg/bar;

.field public n:Landroid/view/View;

.field public o:I

.field public p:Lg/ka;

.field public q:Landroid/view/View;

.field public r:Lg/eqi;

.field public s:Lg/sr;

.field public t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public u:Lg/dbv;

.field public v:Landroid/view/View;


# direct methods
.method public static w(I)Lg/he;
    .locals 1

    sget-object v0, Lg/ka;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lg/ka;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/he;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Lg/he;)V
    .locals 3

    if-eqz p0, :cond_4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/he;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lg/he;->getChildNodeInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/he;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lg/aqn;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/aqn;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/he;

    invoke-virtual {v1, v0}, Lg/he;->setIndex(I)Lg/he;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sput-object p0, Lg/ka;->b:Ljava/util/ArrayList;

    return-void

    :cond_4
    const/4 p0, 0x0

    sput-object p0, Lg/ka;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static y(Lg/ka;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/dzm;->bc()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x5c80

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/dzm;->at(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1, v2}, Lg/buj;->be(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0xe6544

    invoke-static {v1, p0}, Lg/buj;->be(II)I

    move-result p0

    add-int/lit16 p0, p0, 0x5c81

    :goto_0
    if-ge p0, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static z(ZZ)Lg/he;
    .locals 3

    if-eqz p1, :cond_1

    sget-boolean p1, Lg/ern;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lg/ern;->f:Lg/he;

    :cond_0
    invoke-static {}, Lg/ern;->m()Lg/he;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg/ern;->m()Lg/he;

    move-result-object p1

    :goto_0
    sget-boolean v0, Lg/gk;->d:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lg/he;->getWindowId()I

    move-result v1

    sget v2, Lg/dyd;->p:I

    if-ltz v2, :cond_2

    if-ne v2, v1, :cond_3

    sget-object v1, Lg/dyd;->z:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lg/he;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lg/bew;->m()Lg/he;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object p1, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lg/bew;->m()Lg/he;

    move-result-object p1

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    invoke-static {p1}, Lg/ka;->x(Lg/he;)V

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final aa(Lg/he;)V
    .locals 4

    iget-object v0, p0, Lg/ka;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/ka;->p:Lg/ka;

    const v0, 0x7f12028e

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lg/ffb;->as()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lg/gfh;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ab()V
    .locals 4

    iget v0, p0, Lg/ka;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/ka;->o:I

    const/4 v0, 0x0

    sput-boolean v0, Lg/ka;->a:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inspector_close"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg/fzn;->q(Landroid/content/Intent;)V

    iget-object v1, p0, Lg/ka;->i:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/ka;->n:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lg/ka;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/ka;->i:Landroid/view/WindowManager;

    iget-object v2, p0, Lg/ka;->n:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const-class v1, Lg/ka;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lg/ka;->g:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lg/ka;->m:Lg/bar;

    return-object p1
.end method

.method public final onCreate()V
    .locals 13

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lg/ka;->p:Lg/ka;

    new-instance v0, Lg/eqi;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lg/eqi;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v0, p0, Lg/ka;->r:Lg/eqi;

    new-instance v0, Lg/bar;

    invoke-direct {v0, p0}, Lg/bar;-><init>(Lg/ka;)V

    iput-object v0, p0, Lg/ka;->m:Lg/bar;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lg/ka;->i:Landroid/view/WindowManager;

    const/4 v0, 0x1

    sput-boolean v0, Lg/ka;->a:Z

    new-instance v2, Lg/sr;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lg/ka;->s:Lg/sr;

    new-instance v2, Lg/axs;

    new-instance v4, Lg/eie;

    const/16 v5, 0xb

    invoke-direct {v4, v5, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lg/ka;->p:Lg/ka;

    const-string v7, "layout_inspector_ow_auto_hide"

    invoke-direct {v2, v4, v5, v6, v7}, Lg/axs;-><init>(Lg/alj;Landroid/os/Handler;Lg/ghz;Ljava/lang/String;)V

    iput-object v2, p0, Lg/ka;->l:Lg/axs;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "action_permissionResultReceiver"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "window_state_changed"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "c.t.d.l.v.e"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "c.t.d.s.c"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v5

    iget-object v6, p0, Lg/ka;->s:Lg/sr;

    invoke-virtual {v5, v6, v2}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v2}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lg/ka;->p:Lg/ka;

    new-instance v5, Lg/dyy;

    invoke-direct {v5, v2}, Lg/dyy;-><init>(Landroid/content/Context;)V

    const v2, 0x186a3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    const v8, 0x7f120103

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-ge v10, v11, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v3, v2, v9}, Lg/cmb;->t(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-static {v3}, Lg/cmb;->i(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cmb;->r(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cmb;->l(Landroid/app/NotificationChannel;)V

    invoke-static {v3, v6, v7}, Lg/cmb;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-static {v3, v0}, Lg/cmb;->j(Landroid/app/NotificationChannel;Z)V

    const v6, -0xffff01

    invoke-static {v3, v6}, Lg/cmb;->v(Landroid/app/NotificationChannel;I)V

    invoke-static {v3}, Lg/cmb;->e(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cmb;->o(Landroid/app/NotificationChannel;)V

    :goto_0
    if-lt v10, v11, :cond_1

    iget-object v6, v5, Lg/dyy;->g:Landroid/app/NotificationManager;

    invoke-static {v6, v3}, Lg/cmb;->y(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_1
    iget-object v3, p0, Lg/ka;->p:Lg/ka;

    sget-object v6, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v7, v6

    iget-object v6, p0, Lg/ka;->p:Lg/ka;

    const-class v9, Lb/d/ab;

    invoke-static {v6, v9}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    const-string v9, "source"

    const-string v10, "notification"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v9, 0xc000000

    invoke-static {v3, v7, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lg/ka;->p:Lg/ka;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v7, v10

    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lg/ka;->p:Lg/ka;

    const-class v12, Lb/d/c;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v6, v7, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v6, Lg/zc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, v6, Lg/zc;->s:Landroid/app/Notification;

    const v7, 0x7f0800e3

    iput v7, v2, Landroid/app/Notification;->icon:I

    const v2, 0x7f1202a3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v6, Lg/zc;->i:Ljava/lang/CharSequence;

    const/16 v2, 0x10

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9}, Lg/zc;->u(IZ)V

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v3}, Lg/zc;->w(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const v2, 0x7f12022b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v7, 0x7f0800de

    invoke-virtual {v6, v7, v2, v4}, Lg/zc;->w(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v6, v1, v0}, Lg/zc;->u(IZ)V

    const-string v0, "service"

    iput-object v0, v6, Lg/zc;->d:Ljava/lang/String;

    iput-object v3, v6, Lg/zc;->r:Landroid/app/PendingIntent;

    const/16 v0, 0x7545

    invoke-virtual {v6}, Lg/zc;->y()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lg/dyy;->i(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget v0, p0, Lg/ka;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/ka;->o:I

    iget-object v0, p0, Lg/ka;->l:Lg/axs;

    invoke-virtual {v0}, Lg/axs;->onDestroy()V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/ka;->s:Lg/sr;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lg/ka;->a:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901a5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/ka;->p:Lg/ka;

    const v0, 0x7f12027f

    invoke-static {p1, v0}, Lg/gm;->c(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f090136

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/ka;->p:Lg/ka;

    const v0, 0x7f12027e

    invoke-static {p1, v0}, Lg/gm;->c(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f090010

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f0900c7

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lg/ka;->p:Lg/ka;

    const v0, 0x7f12046c

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f090151

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lg/ka;->p:Lg/ka;

    const v0, 0x7f12022b

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
