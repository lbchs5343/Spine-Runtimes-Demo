.class public final Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;
    }
.end annotation


# static fields
.field private static final ACTION_NEXT_URL:I = 0x1

.field private static final ACTION_REPORT_OUTSIDE:I = -0x1

.field private static final ACTION_RESET_LATER:I = 0x3

.field private static final ACTION_RESET_PLAYER:I = 0x2

.field private static final ACTION_RTC_FALLBACK:I = 0x4

.field private static final DNS_CACHE_RETRY_COUNT_LIMIT:I = 0x3

.field private static final ERROR_LOG_COUNT:I = 0x7

.field private static final MSG_ERROR_AGAIN_RETRY:I = 0x2712

.field private static final MSG_STALL_RETRY:I = 0x2711

.field private static final RETRY_COUNT_LIMIT:I = 0x2bc

.field private static final TAG:Ljava/lang/String; = "RetryProcessor"

.field private static final UPLOAD_LOG_TIME_INTERVAL:J = 0x3e8L

.field private static final sPlayerNetworkError:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPlayerProcessingError:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRetryStrategyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStrategyMap:Landroid/util/SparseIntArray;


# instance fields
.field private mCurHostName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsErroring:Z

.field private mIsHasUploadLog:Z

.field private mLastUploadLogTime:J

.field private mLogErrorCount:I

.field private mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

.field private mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

.field private final mRetryTimeLimit:J

.field private mStallRetryTimeInterval:J

.field private mStallStartTime:J

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->sStrategyMap:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->sPlayerNetworkError:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->sPlayerProcessingError:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->sRetryStrategyMap:Landroid/util/SparseArray;

    const v4, -0x186a2

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v4, -0x186a6

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v4, -0x186a7

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v4, -0x186a8

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v4, -0x186a9

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v4, -0x186ad

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v4, -0x186ae

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v0, -0x7a114

    const-string v4, "media player: setting uri is null error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a113

    const-string v4, "media player: setting uri is error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a112

    const-string v4, "media player: url is not mp4 error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a111

    const-string v4, "media player: invalid data error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a0bb

    const-string v4, "media player: http bad request error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a0ba

    const-string v4, "media player: http unauthorized error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a0b9

    const-string v4, "media player: http forbidden error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a0b8

    const-string v4, "media player: http not found error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a0b6

    const-string v4, "media player: http other 4xx error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a0b5

    const-string v4, "media player: http server error"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a0b3

    const-string v4, "media player: http content type invalid"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0xf000001

    const-string v4, "media info http redirect"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a057

    const-string v4, "media player: tcp failed to resolve hostname"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a053

    const-string v4, "media player: tcp send data failed"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a052

    const-string v4, "media player: tcp receive data failed"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a051

    const-string v4, "media player: tcp read network timeout"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a050

    const-string v4, "media player: tcp write network timeout"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a11f

    const-string v1, "media player setting is null"

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a11d

    const-string v1, "media player start decoder error"

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a11c

    const-string v1, "media player open decoder error"

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a118

    const-string v1, "media player open outlet error"

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a117

    const-string v1, "media player start outputer error"

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a116

    const-string v1, "media player start outlet error"

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, -0x7a115

    const-string v1, "media player open device error"

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "android media player unknown"

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, -0x1

    const-string v2, "not retry, report to application"

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "try next url from live info"

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    const-string v1, "reset player"

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;IJLcom/bykv/vk/component/ttvideo/log/LiveLoggerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallRetryTimeInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x7

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogErrorCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mCurHostName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsHasUploadLog:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLastUploadLogTime:J

    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsErroring:Z

    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStarted:Z

    new-instance v0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$1;-><init>(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryTimeLimit:J

    iput-wide p3, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallRetryTimeInterval:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-object p5, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

    return-void
.end method

.method public static synthetic access$000(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallStartTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryTimeLimit:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->uploadRetryLog(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;)Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallRetryTimeInterval:J

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;ILcom/bykv/vk/component/ttvideo/log/LiveError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->handleRetryForError(ILcom/bykv/vk/component/ttvideo/log/LiveError;)V

    return-void
.end method

.method private handleRetryForError(ILcom/bykv/vk/component/ttvideo/log/LiveError;)V
    .locals 3

    const-string v0, "handleRetryForError action="

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetryProcessor"

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "ACTION_RTC_FALLBACK"

    invoke-static {v1, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;->onRTCFallBack()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "start "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RETRY"

    invoke-static {v1, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v1, p2, :cond_2

    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallRetryTimeInterval:J

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    mul-int v1, v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p1, "ACTION_RESET_PLAYER"

    invoke-static {v1, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;->onRetryResetPlayer(Z)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;->onRetryNextPlayURL()V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

    invoke-interface {p1, p2}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;->onReportOutToApplication(Lcom/bykv/vk/component/ttvideo/log/LiveError;)V

    return-void
.end method

.method private upLoadErrorLog(Lcom/bykv/vk/component/ttvideo/log/LiveError;)V
    .locals 2

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogErrorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogErrorCount:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

    iget v1, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/log/LiveError;->getInfoJSON()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private uploadRetryLog(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsHasUploadLog:Z

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLastUploadLogTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onRetry(I)V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onFirstFrameFail(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsHasUploadLog:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLastUploadLogTime:J

    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public onError(Lcom/bykv/vk/component/ttvideo/log/LiveError;Z)V
    .locals 6

    const-string v0, "onError error="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetryProcessor"

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsErroring:Z

    const v1, -0x186b0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget v0, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsErroring:Z

    :cond_2
    iget-object v0, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->info:Ljava/util/Map;

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v3, 0x2bc

    const/4 v4, 0x3

    if-le v1, v3, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    iget v1, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    const v3, -0x186a3

    if-ne v1, v3, :cond_5

    :try_start_0
    const-string v1, "internalCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput v1, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :catch_1
    const-string v3, "retryError"

    const-string v5, "error while get player internal error code"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v3, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->sPlayerNetworkError:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_4

    const-string v5, "playErrorReason"

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    :goto_2
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

    iget v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableRtcPlay:I

    if-ne v3, v2, :cond_6

    iget v1, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayFallBack:I

    if-nez v1, :cond_6

    const/4 v0, 0x4

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v1, v4, :cond_7

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mCurHostName:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/network/IPCache;->getInstance()Lcom/bykv/vk/component/ttvideo/network/IPCache;

    move-result-object v1

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mCurHostName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bykv/vk/component/ttvideo/network/IPCache;->disableIpAddress(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->setInErrorRecovering()V

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogService:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;

    iget v2, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    invoke-virtual {v1, v2, p2}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onStallStart(IZ)V

    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->handleRetryForError(ILcom/bykv/vk/component/ttvideo/log/LiveError;)V

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->upLoadErrorLog(Lcom/bykv/vk/component/ttvideo/log/LiveError;)V

    iget p1, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->uploadRetryLog(I)V

    return-void
.end method

.method public onStall(ZZ)V
    .locals 2

    const-string v0, "onStall "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetryProcessor"

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallStartTime:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryListener:Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor$RetryListener;->onRetryResetPlayer(Z)V

    const p1, -0x186b2

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->uploadRetryLog(I)V

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallRetryTimeInterval:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->reset()V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallStartTime:J

    const/4 v0, 0x7

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLogErrorCount:I

    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsHasUploadLog:Z

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mLastUploadLogTime:J

    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mIsErroring:Z

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mCurHostName:Ljava/lang/String;

    return-void
.end method

.method public setStallRetryTimeInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStallRetryTimeInterval:J

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStarted:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/retry/RetryProcessor;->mStarted:Z

    return-void
.end method
