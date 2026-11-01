.class public Lcom/ss/android/downloadad/api/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadad/api/dq/dq;


# instance fields
.field private bl:J

.field private bu:Z

.field private by:J

.field private c:Z

.field private cd:Ljava/lang/String;

.field private ce:Ljava/lang/String;

.field private cv:J

.field protected d:Z

.field private transient dc:Z

.field protected dq:Z

.field private ds:Z

.field private e:Z

.field private er:Z

.field private f:I

.field private fd:Z

.field private fw:I

.field private gh:Ljava/lang/String;

.field private gx:I
    .annotation build Lcom/ss/android/downloadad/api/constant/AdBaseConstants$FunnelType;
    .end annotation
.end field

.field private h:I

.field private ha:Z

.field private i:Z

.field private ia:Ljava/lang/String;

.field private ig:Ljava/lang/String;

.field private ij:Z

.field private ir:I

.field private iw:J

.field private j:Z

.field private ji:J

.field private jw:Z

.field private jy:I

.field private k:Lorg/json/JSONObject;

.field private kk:I

.field private kx:I

.field private l:Z

.field private le:J

.field private mn:J

.field private mp:Ljava/lang/String;

.field private n:J

.field private nh:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private ob:Z

.field private op:I

.field public final ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pa:J

.field private q:I

.field private r:Ljava/lang/String;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private t:I

.field private u:Ljava/lang/String;

.field private uh:J

.field private v:Ljava/lang/String;

.field private vf:Ljava/lang/String;

.field private vw:Z

.field private wn:Z

.field private wp:I

.field private ws:Z

.field private xi:Z

.field private xz:Z

.field private yy:Z

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->kk:I

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->e:Z

    iput v1, p0, Lcom/ss/android/downloadad/api/dq/d;->kx:I

    iput v1, p0, Lcom/ss/android/downloadad/api/dq/d;->h:I

    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->c:Z

    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->er:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->wn:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->j:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->dq:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->d:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->gx:I

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->xz:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->cv:J

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/downloadad/api/dq/d;-><init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->kk:I

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->e:Z

    iput v1, p0, Lcom/ss/android/downloadad/api/dq/d;->kx:I

    iput v1, p0, Lcom/ss/android/downloadad/api/dq/d;->h:I

    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->c:Z

    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->er:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->wn:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->j:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->dq:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->d:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->gx:I

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->xz:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->cv:J

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->iw:J

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->mn:J

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ia:Ljava/lang/String;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->o:Ljava/lang/String;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->k:Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->i:Z

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->fw:I

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->cd:Ljava/lang/String;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->no:Ljava/lang/String;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/DeepLink;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ig:Ljava/lang/String;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->mp:Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getModelType()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->q:I

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->gh:Ljava/lang/String;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->r:Ljava/lang/String;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ce:Ljava/lang/String;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->nh:Ljava/lang/String;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getRefer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->vf:Ljava/lang/String;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->isEnableV3Event()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->ob:Z

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->isEnableBackDialog()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->e:Z

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->getLinkMode()I

    move-result p2

    iput p2, p0, Lcom/ss/android/downloadad/api/dq/d;->jy:I

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result p2

    iput p2, p0, Lcom/ss/android/downloadad/api/dq/d;->f:I

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableShowComplianceDialog()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->xz:Z

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->isAutoDownloadOnCardShow()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->yy:Z

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableNewActivity()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->wn:Z

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableAH()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->dq:Z

    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableAM()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->d:Z

    iput p4, p0, Lcom/ss/android/downloadad/api/dq/d;->wp:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/downloadad/api/dq/d;->le:J

    iput-wide p2, p0, Lcom/ss/android/downloadad/api/dq/d;->ji:J

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->shouldDownloadWithPatchApply()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/dq/d;->er:Z

    instance-of p2, p1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->z:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/dq/d;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/downloadad/api/dq/d;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/dq/d;-><init>()V

    :try_start_0
    const-string v1, "mId"

    invoke-static {p0, v1}, Lcom/ss/android/download/api/ox/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/dq/d;->p(J)V

    const-string v1, "mExtValue"

    invoke-static {p0, v1}, Lcom/ss/android/download/api/ox/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/dq/d;->s(J)V

    const-string v1, "mLogExtra"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ox(Ljava/lang/String;)V

    const-string v1, "mDownloadStatus"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->s(I)V

    const-string v1, "mPackageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->d(Ljava/lang/String;)V

    const-string v1, "mIsAd"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->dq(Z)V

    const-string v1, "mTimeStamp"

    invoke-static {p0, v1}, Lcom/ss/android/download/api/ox/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ss/android/downloadad/api/dq/d;->iw(J)V

    const-string v1, "mVersionCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->iw(I)V

    const-string v1, "mVersionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->p(Ljava/lang/String;)V

    const-string v1, "mDownloadId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->mn(I)V

    const-string v1, "mIsV3Event"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->d(Z)V

    const-string v1, "mScene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ia(I)V

    const-string v1, "mEventTag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->iw(Ljava/lang/String;)V

    const-string v1, "mEventRefer"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->mn(Ljava/lang/String;)V

    const-string v1, "mDownloadUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ia(Ljava/lang/String;)V

    const-string v1, "mEnableBackDialog"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ox(Z)V

    iget-object v1, v0, Lcom/ss/android/downloadad/api/dq/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendInstallFinish"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/ss/android/downloadad/api/dq/d;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendDownloadFailedFinally"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/ss/android/downloadad/api/dq/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasDoRebootMarketInstallFinishCheck"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "mLastFailedErrCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->p(I)V

    const-string v1, "mLastFailedErrMsg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->dq(Ljava/lang/String;)V

    const-string v1, "mOpenUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->kk(Ljava/lang/String;)V

    const-string v1, "mLinkMode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->o(I)V

    const-string v1, "mDownloadMode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->no(I)V

    const-string v1, "mModelType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ig(I)V

    const-string v1, "mAppName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->o(Ljava/lang/String;)V

    const-string v1, "mAppIcon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->no(Ljava/lang/String;)V

    const-string v1, "mDownloadFailedTimes"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->dq(I)V

    const-string v1, "mRecentDownloadResumeTime"

    invoke-static {p0, v1}, Lcom/ss/android/download/api/ox/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/dq/d;->dq(J)V

    const-string v1, "mClickPauseTimes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->d(I)V

    const-string v1, "mJumpInstallTime"

    invoke-static {p0, v1}, Lcom/ss/android/download/api/ox/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/dq/d;->d(J)V

    const-string v1, "mCancelInstallTime"

    invoke-static {p0, v1}, Lcom/ss/android/download/api/ox/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/dq/d;->ox(J)V

    const-string v1, "mLastFailedResumeCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ox(I)V

    const-string v1, "downloadFinishReason"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ig(Ljava/lang/String;)V

    const-string v1, "clickDownloadSize"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/dq/d;->kk(J)V

    const-string v1, "clickDownloadTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/dq/d;->ia(J)V

    const-string v1, "mIsUpdateDownload"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ia(Z)V

    const-string v1, "mOriginMimeType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->mp(Ljava/lang/String;)V

    const-string v1, "mIsPatchApplyHandled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->kk(Z)V

    const-string v1, "installAfterCleanSpace"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->iw(Z)V

    const-string v1, "funnelType"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->kk(I)V

    const-string v1, "webUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->s(Ljava/lang/String;)V

    const-string v1, "enableShowComplianceDialog"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->f(Z)V

    const-string v1, "isAutoDownloadOnCardShow"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->fw(Z)V

    const-string v1, "enable_new_activity"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->cd(Z)V

    const-string v1, "enable_pause"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->gh(Z)V

    const-string v1, "enable_ah"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->r(Z)V

    const-string v1, "enable_am"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/api/dq/d;->i(Z)V

    const-string v1, "mExtras"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->dq(Lorg/json/JSONObject;)V

    const-string v1, "intent_jump_browser_success"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->le(Z)V

    const-string v1, "task_key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->q(Ljava/lang/String;)V

    const-string v1, "market_install_finish_check_start_timestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/dq/d;->o(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->r()Lcom/ss/android/download/api/d/dq;

    move-result-object v1

    const-string v2, "NativeDownloadModel fromJson"

    invoke-interface {v1, p0, v2}, Lcom/ss/android/download/api/d/dq;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bl()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->bl:J

    return-wide v0
.end method

.method public bu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->xi:Z

    return v0
.end method

.method public by()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ha:Z

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->le:J

    return-wide v0
.end method

.method public cd()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->wn:Z

    return-void
.end method

.method public ce()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->fw:I

    return v0
.end method

.method public cv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->bu:Z

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->iw:J

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->h:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->bl:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->o:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ob:Z

    return-void
.end method

.method public dc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->fd:Z

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->no:Ljava/lang/String;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->kx:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ji:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->u:Ljava/lang/String;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->k:Lorg/json/JSONObject;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->i:Z

    return-void
.end method

.method public ds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->er:Z

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->kx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->kx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public er()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->xz:Z

    return-void
.end method

.method public fd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ij:Z

    return v0
.end method

.method public fw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->yy:Z

    return-void
.end method

.method public fw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->wn:Z

    return v0
.end method

.method public gh()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->wp:I

    return v0
.end method

.method public gh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->j:Z

    return-void
.end method

.method public gx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->l:Z

    return v0
.end method

.method public declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/api/dq/d;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->jw:Z

    return v0
.end method

.method public i()Lcom/ss/android/download/api/download/DownloadModel;
    .locals 1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->z()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->d:Z

    return-void
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->gx:I

    return v0
.end method

.method public ia(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->t:I

    return-void
.end method

.method public ia(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->by:J

    return-void
.end method

.method public ia(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->no:Ljava/lang/String;

    return-void
.end method

.method public ia(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->c:Z

    return-void
.end method

.method public ig()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->mn:J

    return-wide v0
.end method

.method public ig(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->q:I

    return-void
.end method

.method public ig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->v:Ljava/lang/String;

    return-void
.end method

.method public ig(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->bu:Z

    return-void
.end method

.method public ij()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->pa:J

    return-wide v0
.end method

.method public io()Lcom/ss/android/downloadad/api/download/AdDownloadController;
    .locals 2

    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->e:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/dq/d;->jy:I

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setLinkMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/dq/d;->f:I

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setDownloadMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->xz:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableShowComplianceDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->dq:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAH(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->d:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAM(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    return-object v0
.end method

.method public ir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->u:Ljava/lang/String;

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ig:Ljava/lang/String;

    return-object v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->fw:I

    return-void
.end method

.method public iw(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->le:J

    :cond_0
    return-void
.end method

.method public iw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->nh:Ljava/lang/String;

    return-void
.end method

.method public iw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->l:Z

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->e:Z

    return v0
.end method

.method public ji()J
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ji:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->le:J

    :cond_0
    return-wide v0
.end method

.method public jw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ws:Z

    return v0
.end method

.method public jy()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public jy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ij:Z

    return-void
.end method

.method public k()Lcom/ss/android/download/api/download/DownloadController;
    .locals 1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->io()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    return-object v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->vf:Ljava/lang/String;

    return-object v0
.end method

.method public kk(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->gx:I

    return-void
.end method

.method public kk(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->uh:J

    return-void
.end method

.method public kk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ig:Ljava/lang/String;

    return-void
.end method

.method public kk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->er:Z

    return-void
.end method

.method public kx()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->h:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->v:Ljava/lang/String;

    return-object v0
.end method

.method public le()Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/dq/d;->pa()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v0

    return-object v0
.end method

.method public le(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->xi:Z

    return-void
.end method

.method public mn()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->wp:I

    return-void
.end method

.method public mn(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->cv:J

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->vf:Ljava/lang/String;

    return-void
.end method

.method public mn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ha:Z

    return-void
.end method

.method public mp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ce:Ljava/lang/String;

    return-void
.end method

.method public mp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->fd:Z

    return-void
.end method

.method public mp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ob:Z

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->op:I

    return v0
.end method

.method public nh()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->cv:J

    return-wide v0
.end method

.method public no()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public no(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->f:I

    return-void
.end method

.method public no(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->r:Ljava/lang/String;

    return-void
.end method

.method public no(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->jw:Z

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->nh:Ljava/lang/String;

    return-object v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->jy:I

    return-void
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->pa:J

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->gh:Ljava/lang/String;

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->dc:Z

    return-void
.end method

.method public ob()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->jy:I

    return v0
.end method

.method public op()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ir:I

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->op:I

    return-void
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->n:J

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ia:Ljava/lang/String;

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->e:Z

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->i:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ir:I

    return-void
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->iw:J

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->cd:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ds:Z

    return-void
.end method

.method public pa()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;
    .locals 2

    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->nh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->vf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setRefer(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->ob:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->z:Ljava/lang/String;

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->ws:Z

    return-void
.end method

.method public r()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->dq:Z

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadad/api/dq/d;->kk:I

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/downloadad/api/dq/d;->mn:J

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadad/api/dq/d;->mp:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/dq/d;->vw:Z

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->vw:Z

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->kk:I

    return v0
.end method

.method public uh()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->by:J

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public vf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->gh:Ljava/lang/String;

    return-object v0
.end method

.method public vw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->dc:Z

    return v0
.end method

.method public wn()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->t:I

    return v0
.end method

.method public wp()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadad/api/dq/d;->kx:I

    return v0
.end method

.method public ws()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadad/api/dq/d;->z:Ljava/lang/String;

    return-object v0
.end method

.method public xi()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mId"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->iw:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtValue"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->mn:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mLogExtra"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadStatus"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->kk:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mPackageName"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mIsAd"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->i:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mTimeStamp"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->le:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtras"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mVersionCode"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->fw:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mVersionName"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->cd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadId"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->wp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mIsV3Event"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ob:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mScene"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mEventTag"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->nh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mEventRefer"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->vf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadUrl"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mEnableBackDialog"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasSendInstallFinish"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasSendDownloadFailedFinally"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasDoRebootMarketInstallFinishCheck"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mLastFailedErrCode"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ir:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mLastFailedErrMsg"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mOpenUrl"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLinkMode"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->jy:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mDownloadMode"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mModelType"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mAppName"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->gh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mAppIcon"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadFailedTimes"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->kx:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mRecentDownloadResumeTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ji:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->le:J

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mClickPauseTimes"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mJumpInstallTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->bl:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mCancelInstallTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mLastFailedResumeCount"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->op:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mIsUpdateDownload"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mOriginMimeType"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mIsPatchApplyHandled"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->er:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "downloadFinishReason"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickDownloadTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->by:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "clickDownloadSize"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->uh:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "installAfterCleanSpace"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->l:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "funnelType"

    iget v2, p0, Lcom/ss/android/downloadad/api/dq/d;->gx:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "webUrl"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->mp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enableShowComplianceDialog"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->xz:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isAutoDownloadOnCardShow"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->yy:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "enable_new_activity"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->wn:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_pause"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->j:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_ah"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->dq:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_am"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "intent_jump_browser_success"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/dq/d;->xi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "task_key"

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "market_install_finish_check_start_timestamp"

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/dq/d;->pa:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->r()Lcom/ss/android/download/api/d/dq;

    move-result-object v2

    const-string v3, "NativeDownloadModel toJson"

    invoke-interface {v2, v1, v3}, Lcom/ss/android/download/api/d/dq;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public xz()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadad/api/dq/d;->uh:J

    return-wide v0
.end method

.method public yy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/dq/d;->c:Z

    return v0
.end method

.method public z()Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 5

    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;-><init>()V

    iget-wide v1, p0, Lcom/ss/android/downloadad/api/dq/d;->iw:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAdId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadad/api/dq/d;->mn:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExtraValue(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setLogExtra(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExtra(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/dq/d;->i:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsAd(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/dq/d;->fw:I

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setVersionCode(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->cd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setVersionName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/dq/d;->q:I

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setModelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->ce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setMimeType(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->gh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/dq/d;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setTaskKey(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    new-instance v1, Lcom/ss/android/download/api/model/DeepLink;

    iget-object v2, p0, Lcom/ss/android/downloadad/api/dq/d;->ig:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/downloadad/api/dq/d;->mp:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/download/api/model/DeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDeepLink(Lcom/ss/android/download/api/model/DeepLink;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object v0

    return-object v0
.end method
