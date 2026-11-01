.class public Lg/dqe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static q:Lg/dqe;

.field private static r:Lg/gdb;

.field private static s:Lg/dkc;

.field private static t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/gll;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lg/fpl;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Z

.field private static w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private x:Landroid/content/Context;

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    sget-boolean p1, Lg/dqe;->v:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lg/dkc;

    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-direct {p1, v0}, Lg/dkc;-><init>(Landroid/app/DownloadManager;)V

    sput-object p1, Lg/dqe;->s:Lg/dkc;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lg/dqe;->t:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lg/dqe;->w:Ljava/util/List;

    invoke-direct {p0}, Lg/dqe;->ac()V

    return-void
.end method

.method public static bridge synthetic a(Lg/dqe;Z)V
    .locals 1

    const/16 v0, 0xca

    invoke-direct {p0, p1, v0}, Lg/dqe;->ae(ZI)V

    return-void
.end method

.method private aa(Lg/gll;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lg/gll;->getDownloadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/dqe;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/dqe;->x:Landroid/content/Context;

    sget-object v0, Lg/dqe;->t:Ljava/util/List;

    invoke-static {v0}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "update_download_infos"

    invoke-static {p1, v1, v0}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lg/dqe;->af()V

    :cond_1
    :goto_0
    return-void
.end method

.method private ab()V
    .locals 3

    sget-object v0, Lg/dqe;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lg/dqe;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fpl;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/aoz;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private ac()V
    .locals 4

    sget-boolean v0, Lg/dqe;->v:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lg/dqe;->v:Z

    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    const-string v1, "update_download_infos"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lg/dqe;->x:Landroid/content/Context;

    const-string v2, "com.android.providers.downloads"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v0}, Lg/ex;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lg/dqe;->t:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    sget-object v0, Lg/dqe;->t:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/dqe;->t:Ljava/util/List;

    :cond_2
    invoke-direct {p0}, Lg/dqe;->af()V

    :cond_3
    :goto_1
    return-void
.end method

.method private ad(ZLg/cx;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lg/cx;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lg/dqe;->w:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    const-string v1, "update_response"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v8, v4, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    const-class v1, Lg/fjv;

    invoke-static {v1, v0}, Lg/ex;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fjv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/fjv;->isForce()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    const-string v1, "update_last_check_time"

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v4, v5}, Lg/cro;->ae(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v4, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v4}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v4

    invoke-virtual {v4}, Lg/atf;->p()Lg/fxe;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lg/fxe;->update:Lg/fxe$g;

    :goto_0
    if-nez v4, :cond_3

    const-wide/32 v4, 0x15180

    goto :goto_1

    :cond_3
    iget-wide v4, v4, Lg/fxe$g;->checkInterval:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v10, v4, v6

    if-eqz v10, :cond_4

    cmp-long v10, v0, v6

    if-lez v10, :cond_4

    add-long/2addr v0, v4

    cmp-long v4, v0, v8

    if-lez v4, :cond_4

    :goto_2
    return-void

    :catch_0
    nop

    :cond_4
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object p1

    iget-object v4, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v4, Lg/die;

    iput-object v0, v4, Lg/die;->f:Ljava/lang/CharSequence;

    const v5, 0x7f120112

    iget-object v6, v4, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lg/die;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v3}, Lg/gmn;->q(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-boolean v1, v4, Lg/die;->p:Z

    invoke-virtual {p1}, Lg/gmn;->r()Lg/fpl;

    move-result-object p1

    iget-object v3, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lg/dqe;->u:Ljava/lang/ref/WeakReference;

    :cond_5
    sget-object p1, Lg/dqe;->w:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {p1}, Lg/hca;->e(Landroid/content/Context;)Lg/gez;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Lg/gez;

    invoke-direct {p1, v1}, Lg/gez;-><init>(Z)V

    :cond_6
    iget-object v1, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v1}, Lg/dtw;->c(Landroid/content/Context;)Lg/daw;

    move-result-object v1

    const-class v3, Lg/fwa;

    invoke-virtual {v1, v3}, Lg/daw;->r(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fwa;

    iget-object v3, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v3}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v4}, Lg/cux;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p1, Lg/gez;->g:Z

    iget-object p1, p1, Lg/gez;->e:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_7

    :goto_3
    move-object v6, v0

    goto :goto_4

    :cond_7
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {p1}, Lg/dyd;->az(Landroid/content/Context;)I

    move-result v7

    invoke-interface/range {v1 .. v7}, Lg/fwa;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Lg/czh;

    move-result-object p1

    new-instance v0, Lg/edm;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lg/edm;->a:Ljava/lang/Object;

    iput-wide v8, v0, Lg/edm;->b:J

    iput-object p2, v0, Lg/edm;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lg/czh;->d(Lg/bmm;)V

    return-void
.end method

.method private ae(ZI)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/dqe;->x:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dqe;->x:Landroid/content/Context;

    const v2, 0x7f120552

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method private af()V
    .locals 10

    sget-object v0, Lg/dqe;->t:Ljava/util/List;

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lg/dqe;->z()V

    return-void

    :cond_0
    sget-object v0, Lg/dqe;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v3}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v3

    invoke-virtual {v3}, Lg/atf;->p()Lg/fxe;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lg/fxe;->update:Lg/fxe$g;

    :goto_0
    if-nez v3, :cond_2

    const-wide/32 v3, 0x5265c00

    goto :goto_1

    :cond_2
    iget-wide v3, v3, Lg/fxe$g;->localDlValidTime:J

    :goto_1
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gll;

    sget-object v7, Lg/dqe;->s:Lg/dkc;

    invoke-virtual {v6}, Lg/gll;->getDownloadId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lg/dkc;->f(J)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lg/gll;->getTime()J

    move-result-wide v7

    sub-long v7, v1, v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_3

    goto :goto_3

    :cond_3
    sget-object v5, Lg/dqe;->w:Ljava/util/List;

    invoke-virtual {v6}, Lg/gll;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lg/dqe;->w:Ljava/util/List;

    invoke-virtual {v6}, Lg/gll;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_8

    sget-object v0, Lg/dqe;->r:Lg/gdb;

    if-nez v0, :cond_8

    new-instance v0, Lg/gdb;

    invoke-direct {v0, p0}, Lg/gdb;-><init>(Lg/dqe;)V

    sput-object v0, Lg/dqe;->r:Lg/gdb;

    iget-object v1, p0, Lg/dqe;->x:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lg/fgj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_7

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3}, Lg/cch;->r(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_8
    :goto_4
    if-nez v5, :cond_9

    invoke-direct {p0}, Lg/dqe;->z()V

    :cond_9
    return-void
.end method

.method private ag(J)Lg/gll;
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lg/dqe;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gll;

    invoke-virtual {v1}, Lg/gll;->getDownloadId()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-nez v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return-object v2

    :cond_3
    iget-object p1, p0, Lg/dqe;->x:Landroid/content/Context;

    sget-object p2, Lg/dqe;->t:Ljava/util/List;

    invoke-static {p2}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "update_download_infos"

    invoke-static {p1, v0, p2}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lg/dqe;->af()V

    return-object v1
.end method

.method private ah(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dqe;->x:Landroid/content/Context;

    const v2, 0x7f120552

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/erl;->y(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic ai()V
    .locals 1

    iget-object v0, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private aj(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dqe;->x:Landroid/content/Context;

    const v2, 0x7f120552

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/erl;->y(Ljava/lang/String;)V

    return-void
.end method

.method private ak(Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x7e6

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    const/16 v3, 0x1f

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static bridge synthetic b(Lg/dqe;Lg/gll;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/dqe;->aa(Lg/gll;)V

    return-void
.end method

.method public static bridge synthetic c(Lg/dqe;)V
    .locals 0

    invoke-direct {p0}, Lg/dqe;->ab()V

    return-void
.end method

.method public static synthetic d(Lg/dqe;)V
    .locals 0

    invoke-direct {p0}, Lg/dqe;->ai()V

    return-void
.end method

.method public static bridge synthetic e(Lg/dqe;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lg/dqe;->ak(Z)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lg/dqe;->q:Lg/dqe;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public static g()Lg/dqe;
    .locals 1

    sget-object v0, Lg/dqe;->q:Lg/dqe;

    return-object v0
.end method

.method public static bridge synthetic h()Lg/dkc;
    .locals 1

    sget-object v0, Lg/dqe;->s:Lg/dkc;

    return-object v0
.end method

.method public static bridge synthetic i(Lg/dqe;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic j()Ljava/util/List;
    .locals 1

    sget-object v0, Lg/dqe;->w:Ljava/util/List;

    return-object v0
.end method

.method public static k(Landroid/app/Activity;)Lg/dqe;
    .locals 2

    sget-object v0, Lg/dqe;->q:Lg/dqe;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-class v0, Lg/dqe;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dqe;->q:Lg/dqe;

    if-nez v1, :cond_1

    new-instance v1, Lg/dqe;

    invoke-direct {v1, p0}, Lg/dqe;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lg/dqe;->q:Lg/dqe;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object p0, Lg/dqe;->q:Lg/dqe;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic l(Lg/dqe;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/dqe;->x:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic m(Lg/dqe;J)Lg/gll;
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/dqe;->ag(J)Lg/gll;

    move-result-object p0

    return-object p0
.end method

.method private z()V
    .locals 2

    sget-object v0, Lg/dqe;->r:Lg/gdb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lg/dqe;->r:Lg/gdb;

    :cond_0
    return-void
.end method


# virtual methods
.method public n(Lg/fjv;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->isDiffUpdate()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getOldVersionCode()I

    move-result v2

    iget-object v5, v0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v5}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v5

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getDiffUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getUrl()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getPackageName()Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lg/dqe;->ae(ZI)V

    return-void

    :cond_2
    iget-object v6, v0, Lg/dqe;->x:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v9, "DevTools.apk"

    invoke-static {v8, v6, v9}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v6, v0, Lg/dqe;->x:Landroid/content/Context;

    const-string v8, "com.android.providers.downloads"

    invoke-static {v6, v8, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Landroid/app/DownloadManager$Request;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v10, v0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v10}, Lg/eyt;->ax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lg/dqe;->x:Landroid/content/Context;

    const v12, 0x7f120555

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getAttraction()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getAttraction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    :cond_4
    invoke-virtual {v6, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    iget-object v10, v0, Lg/dqe;->x:Landroid/content/Context;

    invoke-virtual {v6, v10, v7, v9}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object v7, v0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v7}, Lg/acw;->an(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "user-agent"

    invoke-virtual {v6, v9, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    if-eqz v2, :cond_5

    const-string v7, "application/cn.trinea.download.file.diff"

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_3

    :cond_5
    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    :goto_3
    move-object v12, v6

    goto :goto_4

    :cond_6
    move-object v12, v7

    :goto_4
    iget-object v6, v0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2}, Lg/dqe;->ae(ZI)V

    return-void

    :cond_7
    iget-object v6, v0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/app/Activity;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lg/fjv;->getMd5()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lg/cxc;

    move-object/from16 v6, p1

    invoke-direct {v15, v0, v2, v6, v1}, Lg/cxc;-><init>(Lg/dqe;ZLg/fjv;Z)V

    iget-object v1, v0, Lg/dqe;->x:Landroid/content/Context;

    const v2, 0x7f120556

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v12, :cond_a

    invoke-static {v11, v8, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lg/dyd;->aa()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v11, v2}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    new-instance v10, Lg/fzn;

    const/16 v16, 0x4

    invoke-direct/range {v10 .. v16}, Lg/fzn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v11, v2}, Lg/fyt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f12047b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    aput-object v1, v6, v4

    const v1, 0x7f120149

    invoke-virtual {v11, v1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lg/dwl;

    invoke-direct {v2, v10, v4}, Lg/dwl;-><init>(Lg/fzn;I)V

    const v4, 0x7f120084

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lg/dwl;

    invoke-direct {v2, v10, v3}, Lg/dwl;-><init>(Lg/fzn;I)V

    const v3, 0x7f120082

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v11, v1}, Lg/bfc;->s(Landroid/content/Context;Landroid/app/AlertDialog;)V

    return-void

    :cond_9
    :goto_5
    invoke-static {v11, v12, v13, v14, v15}, Lg/aky;->x(Landroid/app/Activity;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Lg/cxc;)V

    return-void

    :cond_a
    if-eqz v5, :cond_b

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v11, v2, v4}, Lg/fgj;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    const-wide/16 v1, -0x1

    invoke-virtual {v15, v1, v2}, Lg/cxc;->h(J)V

    :cond_b
    return-void
.end method

.method public o(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lg/dqe;->ak(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-instance v1, Lg/bdm;

    invoke-direct {v1, p0, v0, p1}, Lg/bdm;-><init>(Lg/dqe;ZZ)V

    invoke-direct {p0, v0, v1}, Lg/dqe;->ad(ZLg/cx;)V

    return-void
.end method

.method public p(Lg/fjv;ZZZ)V
    .locals 4

    if-nez p1, :cond_0

    const/16 p1, 0x65

    invoke-direct {p0, p3, p1}, Lg/dqe;->ae(ZI)V

    const/16 p1, 0x385

    invoke-direct {p0, p1}, Lg/dqe;->ah(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/fjv;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lg/fjv;->getPackageName()Ljava/lang/String;

    const/16 v0, 0x386

    invoke-direct {p0, v0}, Lg/dqe;->ah(I)V

    :cond_1
    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v0}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Lg/fjv;->getVersionCode()I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_2

    const/16 v0, 0x387

    invoke-direct {p0, v0}, Lg/dqe;->ah(I)V

    invoke-direct {p0, v2}, Lg/dqe;->ak(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Lg/fjv;->getVersionCode()I

    move-result v1

    if-gt v1, v0, :cond_3

    const-string p2, "904: "

    const-string p3, "->"

    invoke-static {v0, p2, p3}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lg/fjv;->getVersionCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/dqe;->aj(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lg/fjv;->isForce()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    iget-object p2, p0, Lg/dqe;->x:Landroid/content/Context;

    const-string v0, "update_ignore_version"

    const/4 v1, -0x1

    invoke-static {p2, v1, v0}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lg/fjv;->getVersionCode()I

    move-result v0

    if-gt v0, p2, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object p2, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    const/16 p1, 0x69

    invoke-direct {p0, p3, p1}, Lg/dqe;->ae(ZI)V

    const/16 p1, 0x389

    invoke-direct {p0, p1}, Lg/dqe;->ah(I)V

    return-void

    :cond_5
    iget-object p2, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object p2

    iget-object p3, p2, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p3, Lg/die;

    invoke-virtual {p1}, Lg/fjv;->getAttraction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lg/fjv;->getAttraction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    const v1, 0x7f120551

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p3, Lg/die;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lg/fjv;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lg/die;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lg/fjv;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f120085

    goto :goto_1

    :cond_7
    const v0, 0x7f120087

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lg/gmn;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    xor-int/lit8 v0, p4, 0x1

    iput-boolean v0, p3, Lg/die;->p:Z

    new-instance v0, Lg/gmq;

    invoke-direct {v0, p0, p1}, Lg/gmq;-><init>(Lg/dqe;Lg/fjv;)V

    iput-object v0, p3, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v0, p0, Lg/dqe;->x:Landroid/content/Context;

    invoke-static {v0}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lg/fjv;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f120089

    iget-object v3, p3, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p3, Lg/die;->b:Ljava/lang/CharSequence;

    iput-object v1, p3, Lg/die;->g:Landroid/content/DialogInterface$OnClickListener;

    const p3, 0x7f120088

    invoke-virtual {p2, p3, v1}, Lg/gmn;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_8
    invoke-virtual {p2}, Lg/gmn;->r()Lg/fpl;

    move-result-object p2

    new-instance p3, Lg/aix;

    invoke-direct {p3, p0, p1}, Lg/aix;-><init>(Lg/dqe;Lg/fjv;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lg/dqe;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    if-nez p4, :cond_9

    new-instance p1, Lg/fvi;

    const/16 p3, 0x1d

    invoke-direct {p1, p3, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iget-object p3, p2, Lg/btt;->e:Landroidx/activity/b;

    new-instance p4, Lg/bcn;

    const/4 v0, 0x3

    invoke-direct {p4, v0, p1}, Lg/bcn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p2, p4}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    new-instance p1, Lg/fny;

    invoke-direct {p1, p2}, Lg/fny;-><init>(Lg/fpl;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_9
    const p1, 0x102000b

    :try_start_0
    invoke-virtual {p2, p1}, Lg/aoz;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method
