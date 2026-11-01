.class public abstract Lg/fri;
.super Lg/ghz;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static a:Z


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Lg/emq;

.field public volatile f:Z

.field public g:Lg/sr;

.field public h:I

.field public i:Landroid/view/View;

.field public j:Lg/fri;

.field public k:Landroid/view/View;

.field public l:Landroid/view/WindowManager;

.field public m:Lg/axs;

.field public n:I

.field public o:Landroid/view/View;


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lg/fri;->e:Lg/emq;

    return-object p1
.end method

.method public final onCreate()V
    .locals 13

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lg/fri;->j:Lg/fri;

    new-instance v0, Lg/emq;

    invoke-direct {v0, p0}, Lg/emq;-><init>(Lg/fri;)V

    iput-object v0, p0, Lg/fri;->e:Lg/emq;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lg/fri;->l:Landroid/view/WindowManager;

    const/4 v0, 0x1

    sput-boolean v0, Lg/fri;->a:Z

    new-instance v1, Lg/sr;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/fri;->g:Lg/sr;

    new-instance v1, Lg/axs;

    new-instance v2, Lg/eie;

    const/16 v3, 0x12

    invoke-direct {v2, v3, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lg/fri;->j:Lg/fri;

    const-string v5, "text_copy_ow_auto_hide"

    invoke-direct {v1, v2, v3, v4, v5}, Lg/axs;-><init>(Lg/alj;Landroid/os/Handler;Lg/ghz;Ljava/lang/String;)V

    iput-object v1, p0, Lg/fri;->m:Lg/axs;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "window_state_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "c.t.d.t.c.e"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "c.t.d.s.c"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v3

    iget-object v4, p0, Lg/fri;->g:Lg/sr;

    invoke-virtual {v3, v4, v1}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v1}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lg/fri;->j:Lg/fri;

    new-instance v3, Lg/dyy;

    invoke-direct {v3, v1}, Lg/dyy;-><init>(Landroid/content/Context;)V

    const v1, 0x186a2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    const v6, 0x7f12010c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    if-ge v8, v10, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v9, v1, v7}, Lg/cmb;->t(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-static {v7}, Lg/cmb;->i(Landroid/app/NotificationChannel;)V

    invoke-static {v7}, Lg/cmb;->r(Landroid/app/NotificationChannel;)V

    invoke-static {v7}, Lg/cmb;->l(Landroid/app/NotificationChannel;)V

    invoke-static {v7, v4, v5}, Lg/cmb;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-static {v7, v0}, Lg/cmb;->j(Landroid/app/NotificationChannel;Z)V

    const v4, -0xffff01

    invoke-static {v7, v4}, Lg/cmb;->v(Landroid/app/NotificationChannel;I)V

    invoke-static {v7}, Lg/cmb;->e(Landroid/app/NotificationChannel;)V

    invoke-static {v7}, Lg/cmb;->o(Landroid/app/NotificationChannel;)V

    move-object v4, v7

    :goto_0
    if-lt v8, v10, :cond_1

    iget-object v5, v3, Lg/dyy;->g:Landroid/app/NotificationManager;

    invoke-static {v5, v4}, Lg/cmb;->y(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_1
    iget-object v4, p0, Lg/fri;->j:Lg/fri;

    sget-object v5, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, p0, Lg/fri;->j:Lg/fri;

    const-class v8, Lb/d/a;

    invoke-static {v7, v8}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "source"

    const-string v10, "notification"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0xc000000

    invoke-static {v4, v5, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lg/fri;->j:Lg/fri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v7, v10

    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lg/fri;->j:Lg/fri;

    const-class v12, Lb/d/c;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v5, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v5, Lg/zc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v5, Lg/zc;->s:Landroid/app/Notification;

    const v7, 0x7f0800a7

    iput v7, v1, Landroid/app/Notification;->icon:I

    const v1, 0x7f120470

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v5, Lg/zc;->i:Ljava/lang/CharSequence;

    const/16 v1, 0x10

    invoke-virtual {v5, v1, v9}, Lg/zc;->u(IZ)V

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v7, v1, v4}, Lg/zc;->w(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const v1, 0x7f12022b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f0800de

    invoke-virtual {v5, v6, v1, v2}, Lg/zc;->w(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    invoke-virtual {v5, v1, v0}, Lg/zc;->u(IZ)V

    const-string v0, "service"

    iput-object v0, v5, Lg/zc;->d:Ljava/lang/String;

    iput-object v4, v5, Lg/zc;->r:Landroid/app/PendingIntent;

    const/16 v0, 0x7544

    invoke-virtual {v5}, Lg/zc;->y()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lg/dyy;->i(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget v0, p0, Lg/fri;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fri;->n:I

    iget-object v0, p0, Lg/fri;->m:Lg/axs;

    invoke-virtual {v0}, Lg/axs;->onDestroy()V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/fri;->g:Lg/sr;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lg/fri;->a:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901a5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/fri;->j:Lg/fri;

    const v0, 0x7f12054c

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f090161

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/fri;->j:Lg/fri;

    const v0, 0x7f1202de

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900c7

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lg/fri;->j:Lg/fri;

    const v0, 0x7f12046c

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f090151

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lg/fri;->j:Lg/fri;

    const v0, 0x7f12022b

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final p()V
    .locals 4

    iget v0, p0, Lg/fri;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fri;->n:I

    const/4 v0, 0x0

    sput-boolean v0, Lg/fri;->a:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inspector_close"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg/fzn;->q(Landroid/content/Intent;)V

    iget-object v1, p0, Lg/fri;->l:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/fri;->i:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lg/fri;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/fri;->l:Landroid/view/WindowManager;

    iget-object v2, p0, Lg/fri;->i:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const-class v1, Lg/fri;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lg/fri;->f:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final q(Z)V
    .locals 8

    iget-object v0, p0, Lg/fri;->j:Lg/fri;

    const-string v1, "text_copy"

    invoke-static {v0, v1}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v5, v6, Lg/ert;->r:Lg/hdb;

    if-nez v5, :cond_1

    :cond_0
    move-object v3, p0

    goto :goto_0

    :cond_1
    iget v0, p0, Lg/fri;->n:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lg/fri;->n:I

    iget-object v0, p0, Lg/fri;->j:Lg/fri;

    new-instance v2, Lg/fzl;

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lg/fzl;-><init>(Lg/fri;ILg/hdb;Lg/ert;Z)V

    invoke-static {v0, v2}, Lg/bew;->p(Landroid/content/Context;Lg/bky;)V

    return-void

    :goto_0
    iget-object p1, v3, Lg/fri;->j:Lg/fri;

    const v0, 0x7f120222

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void
.end method
