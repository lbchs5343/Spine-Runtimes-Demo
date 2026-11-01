.class Lcom/ss/android/downloadlib/dq/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/dq/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/dq/dq/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/dq/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    iget-object p1, p1, Lcom/ss/android/downloadlib/dq/dq/dq;->ox:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/dq/dq/dq;->dq(Z)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    invoke-static {p2}, Lcom/ss/android/downloadlib/dq/dq/ox$dq;->dq(Landroid/os/IBinder;)Lcom/ss/android/downloadlib/dq/dq/ox;

    move-result-object p2

    iput-object p2, v0, Lcom/ss/android/downloadlib/dq/dq/dq;->dq:Lcom/ss/android/downloadlib/dq/dq/ox;

    iget-object p2, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    invoke-virtual {p2}, Lcom/ss/android/downloadlib/dq/dq/dq;->ox()V

    iget-object p2, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    iget-object p2, p2, Lcom/ss/android/downloadlib/dq/dq/dq;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    iget-object p1, p1, Lcom/ss/android/downloadlib/dq/dq/dq;->ox:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/dq/dq/dq;->dq(Z)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq$1;->dq:Lcom/ss/android/downloadlib/dq/dq/dq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ss/android/downloadlib/dq/dq/dq;->dq:Lcom/ss/android/downloadlib/dq/dq/ox;

    iget-object v0, v0, Lcom/ss/android/downloadlib/dq/dq/dq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
