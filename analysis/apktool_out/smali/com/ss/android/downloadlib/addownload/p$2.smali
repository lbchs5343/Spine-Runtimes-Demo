.class Lcom/ss/android/downloadlib/addownload/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/p;->dq(IJJLcom/ss/android/downloadlib/addownload/s$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/p;

.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/s$dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/p;Lcom/ss/android/downloadlib/addownload/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p$2;->d:Lcom/ss/android/downloadlib/addownload/p;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/p$2;->dq:Lcom/ss/android/downloadlib/addownload/s$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$2;->d:Lcom/ss/android/downloadlib/addownload/p;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$2;->d:Lcom/ss/android/downloadlib/addownload/p;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$2;->dq:Lcom/ss/android/downloadlib/addownload/s$dq;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/s$dq;->dq()V

    return-void
.end method
