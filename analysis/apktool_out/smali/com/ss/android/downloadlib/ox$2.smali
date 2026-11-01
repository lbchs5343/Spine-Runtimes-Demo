.class Lcom/ss/android/downloadlib/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/mn/dq;

.field final synthetic ox:Lcom/ss/android/downloadlib/ox;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/ox;Lcom/ss/android/socialbase/downloader/mn/dq;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/ox$2;->ox:Lcom/ss/android/downloadlib/ox;

    iput-object p2, p0, Lcom/ss/android/downloadlib/ox$2;->dq:Lcom/ss/android/socialbase/downloader/mn/dq;

    iput-object p3, p0, Lcom/ss/android/downloadlib/ox$2;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox$2;->dq:Lcom/ss/android/socialbase/downloader/mn/dq;

    const-string v1, "no_enough_space_toast_text"

    const-string v2, "\u60a8\u7684\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ox()Lcom/ss/android/download/api/config/ig;

    move-result-object v3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/downloadlib/ox$2;->d:Lcom/ss/android/download/api/download/DownloadModel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x2

    invoke-interface/range {v3 .. v9}, Lcom/ss/android/download/api/config/ig;->dq(ILandroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
