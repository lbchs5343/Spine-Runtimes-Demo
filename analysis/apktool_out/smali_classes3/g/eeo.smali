.class public final Lg/eeo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/chw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/chw;

    invoke-direct {v0}, Lg/chw;-><init>()V

    iput-object v0, p0, Lg/eeo;->a:Lg/chw;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lg/eeo;->a:Lg/chw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lg/chw;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lg/chw;->j:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lg/chw;->j:Z

    iput-object p1, v0, Lg/chw;->h:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lg/chw;->i:Lg/ja;

    invoke-virtual {p1, v0}, Lg/ja;->g(Lg/ci;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lg/eeo;->a:Lg/chw;

    iget-object v1, v0, Lg/chw;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lg/chw;->j:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lg/chw;->j:Z

    iput-object p1, v0, Lg/chw;->f:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lg/chw;->i:Lg/ja;

    invoke-virtual {p1, v0}, Lg/ja;->g(Lg/ci;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
