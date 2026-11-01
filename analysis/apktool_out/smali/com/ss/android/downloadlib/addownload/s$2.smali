.class Lcom/ss/android/downloadlib/addownload/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/s;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$2;->dq:Lcom/ss/android/downloadlib/addownload/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$2;->dq:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->p(Lcom/ss/android/downloadlib/addownload/s;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$2;->dq:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->s(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/model/DownloadShortInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
