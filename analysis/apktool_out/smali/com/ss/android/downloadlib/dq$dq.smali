.class Lcom/ss/android/downloadlib/dq$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field private final d:I

.field final synthetic dq:Lcom/ss/android/downloadlib/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/dq$dq;->dq:Lcom/ss/android/downloadlib/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/ss/android/downloadlib/dq$dq;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/iw;->d()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/iw;->ox()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/downloadlib/dq$dq;->dq:Lcom/ss/android/downloadlib/dq;

    iget v2, p0, Lcom/ss/android/downloadlib/dq$dq;->d:I

    invoke-static {v1, v0, v2}, Lcom/ss/android/downloadlib/dq;->dq(Lcom/ss/android/downloadlib/dq;Lj$/util/concurrent/ConcurrentHashMap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
