.class Lcom/ss/android/downloadlib/addownload/ia$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/ia$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/ia;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/ia;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia$3;->dq:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 4

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia$3;->dq:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/downloadlib/addownload/ia;)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ss/android/downloadlib/p/dq;->dq(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method
