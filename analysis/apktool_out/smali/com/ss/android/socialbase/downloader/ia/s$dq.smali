.class Lcom/ss/android/socialbase/downloader/ia/s$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/ia/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static final dq:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadWatchDog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/ia/s$dq;->dq:Landroid/os/Looper;

    return-void
.end method

.method public static synthetic dq()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/ia/s$dq;->dq:Landroid/os/Looper;

    return-object v0
.end method
