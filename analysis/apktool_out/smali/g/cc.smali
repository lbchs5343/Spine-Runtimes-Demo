.class public final Lg/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cbi;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput p1, p0, Lg/cc;->a:I

    iput-object p2, p0, Lg/cc;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget v0, p0, Lg/cc;->a:I

    iget-object v1, p0, Lg/cc;->b:Landroid/content/DialogInterface$OnClickListener;

    const-wide/16 v2, 0x3e8

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lg/ddp;

    iget-object v0, v1, Lg/ddp;->b:Lc/a/a;

    iget-object v1, v0, Lc/a/a;->n:Lg/sd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/sd;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lc/a/a;->n:Lg/sd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/dyn;

    const/4 v4, 0x6

    invoke-direct {v1, v4, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    sget-object v0, Lg/edx;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/byd;

    const/16 v4, 0x1d

    invoke-direct {v1, v4, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    check-cast v1, Lg/dtm;

    iget-object v0, v1, Lg/dtm;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lg/bnl;->h(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v2

    iget-object v1, v1, Lg/dtm;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v0, v1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    const v1, 0x7f120146

    invoke-static {v0, v1}, Lg/gm;->e(Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_2
    sget-object v0, Lg/baq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/byd;

    const/16 v4, 0x11

    invoke-direct {v1, v4, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/byd;

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
