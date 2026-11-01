.class Lcom/ss/android/downloadlib/addownload/d/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d/iw;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/d/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/iw;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/downloadlib/addownload/d/iw;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/addownload/d/iw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/d/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/iw;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/downloadlib/addownload/d/iw;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/d/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/iw;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/d/iw;->d(Lcom/ss/android/downloadlib/addownload/d/iw;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq()Lcom/ss/android/downloadlib/addownload/d/kk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/d/kk;->d()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/d/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/iw;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq(Lcom/ss/android/downloadlib/addownload/d/iw;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
