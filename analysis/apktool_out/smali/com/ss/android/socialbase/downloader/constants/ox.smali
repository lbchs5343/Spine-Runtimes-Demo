.class public interface abstract Lcom/ss/android/socialbase/downloader/constants/ox;
.super Ljava/lang/Object;


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final dq:[Ljava/lang/String;

.field public static final iw:[Ljava/lang/String;

.field public static final ox:[Ljava/lang/String;

.field public static final p:[Ljava/lang/String;

.field public static final s:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    const-string v39, "appVersionCode"

    const-string v40, "taskId"

    const-string v1, "_id"

    const-string v2, "url"

    const-string v3, "savePath"

    const-string v4, "tempPath"

    const-string v5, "name"

    const-string v6, "chunkCount"

    const-string v7, "status"

    const-string v8, "curBytes"

    const-string v9, "totalBytes"

    const-string v10, "eTag"

    const-string v11, "onlyWifi"

    const-string v12, "force"

    const-string v13, "retryCount"

    const-string v14, "extra"

    const-string v15, "mimeType"

    const-string v16, "title"

    const-string v17, "notificationEnable"

    const-string v18, "notificationVisibility"

    const-string v19, "isFirstDownload"

    const-string v20, "isFirstSuccess"

    const-string v21, "needHttpsToHttpRetry"

    const-string v22, "downloadTime"

    const-string v23, "packageName"

    const-string v24, "md5"

    const-string v25, "retryDelay"

    const-string v26, "curRetryTime"

    const-string v27, "retryDelayStatus"

    const-string v28, "defaultHttpServiceBackUp"

    const-string v29, "chunkRunnableReuse"

    const-string v30, "retryDelayTimeArray"

    const-string v31, "chunkDowngradeRetry"

    const-string v32, "backUpUrlsStr"

    const-string v33, "backUpUrlRetryCount"

    const-string v34, "realDownloadTime"

    const-string v35, "retryScheduleMinutes"

    const-string v36, "independentProcess"

    const-string v37, "auxiliaryJsonobjectString"

    const-string v38, "iconUrl"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/ox;->dq:[Ljava/lang/String;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/ox;->d:[Ljava/lang/String;

    const-string v7, "chunkContentLen"

    const-string v8, "hostChunkIndex"

    const-string v2, "_id"

    const-string v3, "chunkIndex"

    const-string v4, "startOffset"

    const-string v5, "curOffset"

    const-string v6, "endOffset"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/ox;->ox:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/ox;->p:[Ljava/lang/String;

    const-string v1, "info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/ox;->s:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/ox;->iw:[Ljava/lang/String;

    return-void
.end method
