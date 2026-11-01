.class public final synthetic Lg/btk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ark;


# direct methods
.method public synthetic constructor <init>(Lg/ark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/btk;->a:Lg/ark;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, Lg/btk;->a:Lg/ark;

    iget-object v1, v0, Lg/ark;->k:Lg/eby;

    sget-object v2, Lg/gwn;->f:Landroid/os/IBinder;

    invoke-virtual {v0}, Lg/ark;->z()J

    move-result-wide v3

    monitor-enter v1

    if-nez v2, :cond_0

    monitor-exit v1

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v5, v1, Lg/eby;->b:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    if-eq v2, v5, :cond_1

    check-cast v2, Landroid/os/IBinder;

    iput-object v2, v1, Lg/eby;->b:Ljava/lang/Object;

    iput-wide v3, v1, Lg/eby;->c:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/eby;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :goto_1
    iget-object v1, v0, Lg/ark;->m:Landroid/os/Handler;

    new-instance v2, Lg/hdk;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lg/hdk;-><init>(Lg/ark;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
