.class public final Lg/gdb;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/dqe;


# direct methods
.method public constructor <init>(Lg/dqe;)V
    .locals 0

    iput-object p1, p0, Lg/gdb;->a:Lg/dqe;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_4

    iget-object p2, p0, Lg/gdb;->a:Lg/dqe;

    invoke-static {p2, v0, v1}, Lg/dqe;->m(Lg/dqe;J)Lg/gll;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/dqe;->j()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p2}, Lg/dqe;->i(Lg/dqe;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg/dqe;->h()Lg/dkc;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lg/dkc;->c(J)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lg/gll;->isDiff()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lg/dqe;->h()Lg/dkc;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lg/dkc;->d(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const v1, 0x7f12023b

    invoke-static {p1, v1}, Lg/gm;->c(Landroid/content/Context;I)V

    invoke-static {p2}, Lg/dqe;->i(Lg/dqe;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lg/baf;->bo(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lg/gs;->au(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {}, Lg/dqe;->h()Lg/dkc;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lg/dkc;->e(J)I

    :cond_4
    :goto_0
    return-void
.end method
