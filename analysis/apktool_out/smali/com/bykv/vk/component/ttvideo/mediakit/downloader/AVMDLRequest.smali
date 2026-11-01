.class public Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;
.super Ljava/lang/Object;


# static fields
.field public static final UrlStateIsForbidden:I = 0x1

.field public static final UrlStateIsNormal:I


# instance fields
.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCurlUrlIndex:I

.field public mMaxTryCout:I

.field public mOpenTimeOut:I

.field public mRWTimeOut:I

.field public mUrlErrCount:[I

.field public mUrlState:[I

.field public reqOff:J

.field public response:Lcom/bytedance/sdk/component/d/dq/f;

.field public size:J

.field public urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->headers:Ljava/util/HashMap;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->reqOff:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->size:J

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->response:Lcom/bytedance/sdk/component/d/dq/f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mCurlUrlIndex:I

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mMaxTryCout:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mOpenTimeOut:I

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mRWTimeOut:I

    return-void
.end method

.method public constructor <init>(JJ[Ljava/lang/String;Ljava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    check-cast p6, Ljava/util/HashMap;

    iput-object p6, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->headers:Ljava/util/HashMap;

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->reqOff:J

    iput-wide p3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->size:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->response:Lcom/bytedance/sdk/component/d/dq/f;

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mCurlUrlIndex:I

    iput p7, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mMaxTryCout:I

    iput p8, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mOpenTimeOut:I

    iput p9, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mRWTimeOut:I

    if-eqz p5, :cond_1

    array-length p2, p5

    if-lez p2, :cond_1

    array-length p2, p5

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    array-length p4, p3

    if-ge p2, p4, :cond_0

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlErrCount:[I

    const/4 p2, 0x0

    :goto_1
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlErrCount:[I

    array-length p4, p3

    if-ge p2, p4, :cond_1

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(JJ[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    iput-object p6, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->headers:Ljava/util/HashMap;

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->reqOff:J

    iput-wide p3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->size:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->response:Lcom/bytedance/sdk/component/d/dq/f;

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mCurlUrlIndex:I

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mMaxTryCout:I

    const/16 p2, 0xa

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mOpenTimeOut:I

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mRWTimeOut:I

    if-eqz p5, :cond_0

    array-length p2, p5

    if-lez p2, :cond_0

    array-length p2, p5

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    array-length p4, p3

    if-ge p2, p4, :cond_0

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
