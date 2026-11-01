.class Lcom/ss/android/downloadlib/addownload/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/s;->iw(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/downloadlib/addownload/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/s;II)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$3;->ox:Lcom/ss/android/downloadlib/addownload/s;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/s$3;->dq:I

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/s$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$3;->ox:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->iw(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$3;->ox:Lcom/ss/android/downloadlib/addownload/s;

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/s$3;->dq:I

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/s$3;->d:I

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->mn(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method
