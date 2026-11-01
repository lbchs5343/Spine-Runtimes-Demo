.class final Lcom/ss/android/socialbase/downloader/kk/mn$27;
.super Lcom/ss/android/socialbase/downloader/depend/u$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/downloader/gh;)Lcom/ss/android/socialbase/downloader/depend/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/downloader/gh;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$27;->dq:Lcom/ss/android/socialbase/downloader/downloader/gh;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/u$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(II)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$27;->dq:Lcom/ss/android/socialbase/downloader/downloader/gh;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/gh;->dq(II)J

    move-result-wide p1

    return-wide p1
.end method
