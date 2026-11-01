.class public abstract Lg/drp;
.super Lg/ghz;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field public b:Lg/sr;

.field public c:Ljava/util/ArrayList;

.field public d:Lg/ejn;

.field public e:Lg/zx;

.field public f:Landroid/view/View;

.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lg/drp;

.field public volatile i:Z

.field public j:Landroid/view/WindowManager;

.field public k:Lg/dbv;


# virtual methods
.method public final l()V
    .locals 2

    iget-object v0, p0, Lg/drp;->j:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/drp;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/drp;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/drp;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lg/drp;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const-class v0, Lg/drp;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lg/drp;->i:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lg/drp;->e:Lg/zx;

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lg/drp;->h:Lg/drp;

    new-instance v0, Lg/zx;

    invoke-direct {v0, p0}, Lg/zx;-><init>(Lg/drp;)V

    iput-object v0, p0, Lg/drp;->e:Lg/zx;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lg/drp;->j:Landroid/view/WindowManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/drp;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput-boolean v0, Lg/drp;->a:Z

    new-instance v0, Lg/sr;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/drp;->b:Lg/sr;

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/drp;->b:Lg/sr;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "window_state_changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Lg/dcq;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lg/erl;->ab(Landroid/content/ContextWrapper;Lg/gpv;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-static {p0}, Lg/erl;->ar(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/drp;->b:Lg/sr;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lg/drp;->a:Z

    invoke-virtual {p0}, Lg/drp;->l()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
