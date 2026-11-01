.class public Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private bl:J

.field private by:[I

.field private c:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

.field private cd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ce:Z

.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private ds:Z

.field private e:Z

.field private er:Z

.field private f:I

.field private fw:I

.field private gh:Z

.field private gx:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation
.end field

.field private ig:I

.field private ir:Z

.field private iw:Z

.field private j:Ljava/lang/String;

.field private ji:Ljava/lang/String;

.field private jy:Z

.field private k:Z

.field private kk:I

.field private kx:Z

.field private l:Lorg/json/JSONObject;

.field private le:Z

.field private mn:Ljava/lang/String;

.field private mp:I

.field private n:Z

.field private nh:J

.field private no:[I

.field private o:[Ljava/lang/String;

.field private ob:Z

.field private op:Ljava/lang/String;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private uh:I

.field private v:J

.field private vf:Z

.field private vw:Ljava/lang/String;

.field private wn:Z

.field private wp:Z

.field private xz:Z

.field private yy:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->jy:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->r:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->e:Z

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/EnqueueType;->ENQUEUE_NONE:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->c:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->t:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->jy:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->r:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->e:Z

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/EnqueueType;->ENQUEUE_NONE:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->c:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->t:Z

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ox:Ljava/lang/String;

    return-void
.end method

.method public static synthetic bl(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->kx:Z

    return p0
.end method

.method public static synthetic by(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->r:Z

    return p0
.end method

.method public static synthetic c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Lcom/ss/android/socialbase/downloader/constants/EnqueueType;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->c:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    return-object p0
.end method

.method public static synthetic cd(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->f:I

    return p0
.end method

.method public static synthetic ce(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ce:Z

    return p0
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ds(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->yy:Z

    return p0
.end method

.method public static synthetic e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->op:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic er(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->er:Z

    return p0
.end method

.method public static synthetic f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)[I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->no:[I

    return-object p0
.end method

.method public static synthetic fw(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->jy:Z

    return p0
.end method

.method public static synthetic gh(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->fw:I

    return p0
.end method

.method public static synthetic gx(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->uh:I

    return p0
.end method

.method public static synthetic h(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->wp:Z

    return p0
.end method

.method public static synthetic i(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->gh:Z

    return p0
.end method

.method public static synthetic ia(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ig(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ig:I

    return p0
.end method

.method public static synthetic ir(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ir:Z

    return p0
.end method

.method public static synthetic iw(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->vw:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->wn:Z

    return p0
.end method

.method public static synthetic ji(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->e:Z

    return p0
.end method

.method public static synthetic jy(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->o:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->le:Z

    return p0
.end method

.method public static synthetic kk(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->iw:Z

    return p0
.end method

.method public static synthetic kx(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->k:Z

    return p0
.end method

.method public static synthetic l(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->l:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic le(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic mn(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ds:Z

    return p0
.end method

.method public static synthetic mp(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->mp:I

    return p0
.end method

.method public static synthetic n(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic nh(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic no(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->kk:I

    return p0
.end method

.method public static synthetic o(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ia:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic ob(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->vf:Z

    return p0
.end method

.method public static synthetic op(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ji:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->q:Z

    return p0
.end method

.method public static synthetic r(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->cd:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic s(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic t(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->bl:J

    return-wide v0
.end method

.method public static synthetic u(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->u:Z

    return p0
.end method

.method public static synthetic uh(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->t:Z

    return p0
.end method

.method public static synthetic v(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->xz:Z

    return p0
.end method

.method public static synthetic vf(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->nh:J

    return-wide v0
.end method

.method public static synthetic vw(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->v:J

    return-wide v0
.end method

.method public static synthetic wn(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ob:Z

    return p0
.end method

.method public static synthetic wp(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->n:Z

    return p0
.end method

.method public static synthetic xz(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->gx:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic yy(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;)[I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->by:[I

    return-object p0
.end method


# virtual methods
.method public cd(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->vf:Z

    return-object p0
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ig:I

    return-object p0
.end method

.method public d(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->nh:J

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->cd:Ljava/util/List;

    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->q:Z

    return-object p0
.end method

.method public d([I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->by:[I

    return-object p0
.end method

.method public dq(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->kk:I

    return-object p0
.end method

.method public dq(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->bl:J

    return-object p0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/constants/EnqueueType;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->c:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ia:Ljava/util/List;

    return-object p0
.end method

.method public dq(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->l:Lorg/json/JSONObject;

    return-object p0
.end method

.method public dq(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->iw:Z

    return-object p0
.end method

.method public dq([I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->no:[I

    return-object p0
.end method

.method public dq([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->o:[Ljava/lang/String;

    return-object p0
.end method

.method public dq()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 2

    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo$1;)V

    return-object v0
.end method

.method public f(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ob:Z

    return-object p0
.end method

.method public fw(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->t:Z

    return-object p0
.end method

.method public gh(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->xz:Z

    return-object p0
.end method

.method public i(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ds:Z

    return-object p0
.end method

.method public ia(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->i:Ljava/lang/String;

    return-object p0
.end method

.method public ia(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->e:Z

    return-object p0
.end method

.method public ig(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->gx:Ljava/lang/String;

    return-object p0
.end method

.method public ig(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->u:Z

    return-object p0
.end method

.method public iw(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->uh:I

    return-object p0
.end method

.method public iw(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->s:Ljava/lang/String;

    return-object p0
.end method

.method public iw(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->k:Z

    return-object p0
.end method

.method public jy(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->wn:Z

    return-object p0
.end method

.method public kk(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->h:Ljava/lang/String;

    return-object p0
.end method

.method public kk(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->kx:Z

    return-object p0
.end method

.method public le(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->r:Z

    return-object p0
.end method

.method public mn(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public mn(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->wp:Z

    return-object p0
.end method

.method public mp(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->j:Ljava/lang/String;

    return-object p0
.end method

.method public mp(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ce:Z

    return-object p0
.end method

.method public no(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->op:Ljava/lang/String;

    return-object p0
.end method

.method public no(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ir:Z

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ji:Ljava/lang/String;

    return-object p0
.end method

.method public o(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->n:Z

    return-object p0
.end method

.method public ox(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->mp:I

    return-object p0
.end method

.method public ox(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->v:J

    return-object p0
.end method

.method public ox(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public ox(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->jy:Z

    return-object p0
.end method

.method public p(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->f:I

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->vw:Ljava/lang/String;

    return-object p0
.end method

.method public p(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->le:Z

    return-object p0
.end method

.method public q(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->er:Z

    return-object p0
.end method

.method public r(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->yy:Z

    return-object p0
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->fw:I

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public s(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$dq;->gh:Z

    return-object p0
.end method
