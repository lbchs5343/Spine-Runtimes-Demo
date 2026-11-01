.class public final Lg/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/du;->a:I

    iput-object p2, p0, Lg/du;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Landroid/content/DialogInterface;)V
    .locals 2

    const-class p1, Lg/eib;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast v0, Lg/eib;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/eib;->ay:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final d(Landroid/content/DialogInterface;)V
    .locals 2

    const-class p1, Lg/guy;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast v0, Lg/guy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/guy;->l:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final e(Landroid/content/DialogInterface;)V
    .locals 2

    const-class p1, Lg/eib;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast v0, Lg/baq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/baq;->q:Z

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
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget v0, p0, Lg/du;->a:I

    packed-switch v0, :pswitch_data_0

    const-class p1, Lg/eib;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast v0, Lc/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/a/a;->f:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    iget-object p1, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast p1, Lc/b/b;

    invoke-static {p1}, Lc/b/b;->t(Lc/b/b;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "op_shortcuted"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lg/du;->e(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/b;

    invoke-static {p1}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lg/du;->d(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    return-void

    :pswitch_5
    invoke-direct {p0, p1}, Lg/du;->c(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lg/du;->b:Ljava/lang/Object;

    check-cast p1, Lg/eso;

    iget-boolean v0, p1, Lg/eso;->allowMultiple:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/v;

    move-result-object p1

    const-string v0, "filepicker_fragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/v;->bc(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lg/cuz;

    if-eqz v0, :cond_2

    check-cast p1, Lg/cuz;

    invoke-virtual {p1}, Lg/cuz;->ak()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
