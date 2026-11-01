.class final Lcom/ss/android/downloadlib/addownload/q$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/q;->dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/p/ia;ZLcom/ss/android/downloadlib/addownload/dq/ox;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/dq/ox;

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/q$2;->dq:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/q$2;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "cancel_pause_reserve_wifi_delete"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/q$2;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/q$2;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/dq/ox;->delete()V

    return-void
.end method
