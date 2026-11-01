.class final Lcom/bytedance/sdk/openadsdk/downloadnew/ox$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/download/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 1

    const-string p1, "TTDownloadVisitor"

    const-string v0, "completeListener: onInstalled"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V
    .locals 0

    const-string p1, "TTDownloadVisitor"

    const-string p2, "completeListener: onDownloadStart"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const-string p1, "TTDownloadVisitor"

    const-string v0, "completeListener: onCanceled"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V
    .locals 0

    const-string p1, "TTDownloadVisitor"

    const-string p2, "completeListener: onDownloadFailed"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    const-string p1, "TTDownloadVisitor"

    const-string p2, "completeListener: onDownloadFinished"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
