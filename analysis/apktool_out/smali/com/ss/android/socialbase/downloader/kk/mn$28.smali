.class final Lcom/ss/android/socialbase/downloader/kk/mn$28;
.super Lcom/ss/android/socialbase/downloader/depend/i$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/k;)Lcom/ss/android/socialbase/downloader/depend/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/k;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$28;->dq:Lcom/ss/android/socialbase/downloader/depend/k;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/i$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/depend/r;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$28;->dq:Lcom/ss/android/socialbase/downloader/depend/k;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/depend/le;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/k;->dq(Lcom/ss/android/socialbase/downloader/depend/le;)Z

    move-result p1

    return p1
.end method
