.class public abstract Lg/guy;
.super Lg/dms;
.source "SourceFile"

# interfaces
.implements Lg/fcd;


# instance fields
.field public k:Lg/guy;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/ub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/guy;->l:Z

    return-void
.end method


# virtual methods
.method public abstract g()Ljava/lang/String;
.end method

.method public final m()V
    .locals 7

    const-class v0, Lg/guy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/guy;->l:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-interface {p0, v0}, Lg/fcd;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    const-class v1, Lg/guy;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lg/guy;->l:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lg/guy;->k:Lg/guy;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v1, v2}, Lg/fyt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lg/guy;->k:Lg/guy;

    new-instance v3, Lg/gqc;

    invoke-direct {v3, p0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12047b

    invoke-virtual {v3, v4}, Lg/gqc;->am(I)Lg/gqc;

    invoke-virtual {p0}, Lg/guy;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v4, v5, v0

    const v1, 0x7f12014a

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v4, Lg/die;

    iput-object v1, v4, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance v1, Lg/gdc;

    invoke-direct {v1, p0, v0}, Lg/gdc;-><init>(Lg/guy;I)V

    const v0, 0x7f120084

    invoke-virtual {v3, v0, v1}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    new-instance v0, Lg/gdc;

    invoke-direct {v0, p0, v6}, Lg/gdc;-><init>(Lg/guy;I)V

    const v1, 0x7f120082

    invoke-virtual {v3, v1, v0}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lg/du;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lg/du;-><init>(ILjava/lang/Object;)V

    iget-object v1, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/die;

    iput-object v0, v1, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3}, Lg/gqc;->r()Lg/fpl;

    move-result-object v0

    invoke-static {v2, v0}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
