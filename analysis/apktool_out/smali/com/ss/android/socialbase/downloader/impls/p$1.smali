.class Lcom/ss/android/socialbase/downloader/impls/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/ia/ia$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/impls/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/impls/p;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p$1;->dq:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ig()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p$1$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/p$1$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/p$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
