.class Lcom/ss/android/socialbase/downloader/downloader/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/s;->mn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/downloader/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/s$1;->dq:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/s$1;->dq:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(Lcom/ss/android/socialbase/downloader/downloader/s;)Lcom/ss/android/socialbase/downloader/network/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
