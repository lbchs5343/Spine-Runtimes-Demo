.class public final Lg/bis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ka;


# direct methods
.method public synthetic constructor <init>(Lg/ka;I)V
    .locals 0

    iput p2, p0, Lg/bis;->a:I

    iput-object p1, p0, Lg/bis;->b:Lg/ka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 4

    const-class p1, Lg/ka;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/bis;->b:Lg/ka;

    invoke-virtual {v0}, Lg/ka;->ab()V

    iget-object v1, v0, Lg/ka;->p:Lg/ka;

    new-instance v2, Lg/dyy;

    invoke-direct {v2, v1}, Lg/dyy;-><init>(Landroid/content/Context;)V

    iget-object v1, v2, Lg/dyy;->g:Landroid/app/NotificationManager;

    const/16 v2, 0x7545

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lg/bis;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/bis;->b:Lg/ka;

    iget-object p1, p1, Lg/ka;->l:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->b()V

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lg/bis;->c(Landroid/view/View;)V

    return-void

    :pswitch_1
    const-class p1, Lg/ka;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/bis;->b:Lg/ka;

    invoke-virtual {v0}, Lg/ka;->ab()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    iget-object p1, p0, Lg/bis;->b:Lg/ka;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg/ka;->z(ZZ)Lg/he;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    iget-object v2, p1, Lg/ka;->p:Lg/ka;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p1, Lg/ka;->p:Lg/ka;

    const-class v5, Lb/a/a;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "package_name"

    invoke-virtual {v0}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    const v0, 0x7f1200bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lg/fnp;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/ka;->p:Lg/ka;

    const v0, 0x7f12028e

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_3
    iget-object p1, p0, Lg/bis;->b:Lg/ka;

    invoke-static {p1}, Lg/ka;->y(Lg/ka;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p1, Lg/ka;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lg/ka;->o:I

    iget-object v1, p1, Lg/ka;->p:Lg/ka;

    new-instance v2, Lg/bf;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lg/bf;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-static {v1, v2}, Lg/bew;->p(Landroid/content/Context;Lg/bky;)V

    :goto_1
    return-void

    :pswitch_4
    iget-object p1, p0, Lg/bis;->b:Lg/ka;

    invoke-static {p1}, Lg/ka;->y(Lg/ka;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p1, Lg/ka;->p:Lg/ka;

    const-string v1, "layout_inspector"

    invoke-static {v0, v1}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lg/ert;->r:Lg/hdb;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v2, p1, Lg/ka;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lg/ka;->o:I

    iget-object v3, p1, Lg/ka;->p:Lg/ka;

    new-instance v4, Lg/hdq;

    invoke-direct {v4, p1, v2, v1, v0}, Lg/hdq;-><init>(Lg/ka;ILg/hdb;Lg/ert;)V

    invoke-static {v3, v4}, Lg/bew;->p(Landroid/content/Context;Lg/bky;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p1, Lg/ka;->p:Lg/ka;

    const v0, 0x7f120222

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
