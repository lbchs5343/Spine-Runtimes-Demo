.class final Lcom/ss/android/socialbase/downloader/kk/mn$5;
.super Lcom/ss/android/socialbase/downloader/depend/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/downloader/ia;)Lcom/ss/android/socialbase/downloader/depend/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/downloader/ia;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$5;->dq:Lcom/ss/android/socialbase/downloader/downloader/ia;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/s$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$5;->dq:Lcom/ss/android/socialbase/downloader/downloader/ia;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/ia;->dq(J)I

    move-result p1

    return p1
.end method
