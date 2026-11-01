.class Lcom/ss/android/socialbase/appdownloader/d$s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/ia/ia$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# static fields
.field private static d:I

.field public static dq:I


# instance fields
.field private ia:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final iw:Landroid/os/Handler;

.field private kk:Z

.field private final mn:J

.field private final ox:Landroid/content/Context;

.field private final p:Landroid/content/Intent;

.field private final s:Lcom/ss/android/socialbase/appdownloader/d$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILcom/ss/android/socialbase/appdownloader/d$d;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->kk:Z

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ox:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->p:Landroid/content/Intent;

    sput p3, Lcom/ss/android/socialbase/appdownloader/d$s;->d:I

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->s:Lcom/ss/android/socialbase/appdownloader/d$d;

    new-instance p1, Lcom/ss/android/socialbase/downloader/ia/ia;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/ss/android/socialbase/downloader/ia/ia;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/ia/ia$dq;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->iw:Landroid/os/Handler;

    iput-wide p5, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->mn:J

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/appdownloader/d$s;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->iw:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/d$s;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->kk:Z

    return p0
.end method


# virtual methods
.method public dq(Landroid/os/Message;)V
    .locals 6

    if-eqz p1, :cond_8

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-wide v1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->mn:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_8

    const-wide/16 v3, 0x2710

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    sput v0, Lcom/ss/android/socialbase/appdownloader/d$s;->dq:I

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ig()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$p;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->iw:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ox:Landroid/content/Context;

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->s:Lcom/ss/android/socialbase/appdownloader/d$d;

    iget-wide v4, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->mn:J

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/d$p;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/d$d;J)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ia:Ljava/util/concurrent/Future;

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    sput v1, Lcom/ss/android/socialbase/appdownloader/d$s;->dq:I

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->iw:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->iw:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ia:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->kk:Z

    const/4 v1, 0x0

    if-nez p1, :cond_6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->p:Landroid/content/Intent;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ox:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/appdownloader/d;->dq(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ox:Landroid/content/Context;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    sget v2, Lcom/ss/android/socialbase/appdownloader/d$s;->d:I

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadOverStatus()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ox:Landroid/content/Context;

    sget v2, Lcom/ss/android/socialbase/appdownloader/d$s;->d:I

    invoke-static {p1, v2, v1}, Lcom/ss/android/socialbase/appdownloader/ox;->d(Landroid/content/Context;IZ)I

    :cond_5
    :goto_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->kk:Z

    :cond_6
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->p:Landroid/content/Intent;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    sget p1, Lcom/ss/android/socialbase/appdownloader/d$s;->d:I

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d$s;->ox:Landroid/content/Context;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/d;->dq(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->dq(IZZ)V

    :cond_8
    :goto_2
    return-void
.end method
