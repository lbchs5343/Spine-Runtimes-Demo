.class public final synthetic Lg/dah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ark;


# direct methods
.method public synthetic constructor <init>(Lg/ark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dah;->a:Lg/ark;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lg/dah;->a:Lg/ark;

    iget-object v1, v0, Lg/ark;->k:Lg/eby;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v1, Lg/eby;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, v0, Lg/ark;->m:Landroid/os/Handler;

    new-instance v2, Lg/hdk;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lg/hdk;-><init>(Lg/ark;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
