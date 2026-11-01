.class public abstract Lg/haf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Landroid/os/Bundle;

.field public g:Ljava/lang/Boolean;

.field public final synthetic h:Lg/adw;

.field public i:Z

.field public final synthetic j:Lg/adw;


# direct methods
.method public constructor <init>(Lg/adw;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/haf;->h:Lg/adw;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lg/haf;->j:Lg/adw;

    iput-object v0, p0, Lg/haf;->g:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/haf;->i:Z

    iput p2, p0, Lg/haf;->e:I

    iput-object p3, p0, Lg/haf;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract b(Lg/nk;)V
.end method

.method public abstract c()Z
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lg/haf;->l()V

    iget-object v0, p0, Lg/haf;->j:Lg/adw;

    iget-object v0, v0, Lg/adw;->v:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/haf;->j:Lg/adw;

    iget-object v1, v1, Lg/adw;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lg/haf;->g:Ljava/lang/Boolean;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
