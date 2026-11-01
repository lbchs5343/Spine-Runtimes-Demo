.class public Lcom/ss/android/socialbase/appdownloader/iw;
.super Ljava/lang/Object;


# instance fields
.field private bl:I

.field private bu:Z

.field private by:Z

.field private c:Z

.field private cd:Lcom/ss/android/socialbase/downloader/downloader/mn;

.field private ce:Z

.field private cv:I

.field private d:Landroid/content/Context;

.field private dc:Z

.field private dq:Landroid/app/Activity;

.field private ds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/mp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private er:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

.field private f:Ljava/lang/String;

.field private fd:Ljava/lang/String;

.field private fw:Z

.field private gh:Lcom/ss/android/socialbase/downloader/downloader/ia;

.field private gx:Lcom/ss/android/socialbase/downloader/depend/cd;

.field private h:Z

.field private ha:J

.field private i:Lcom/ss/android/socialbase/downloader/notification/dq;

.field private ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation
.end field

.field private ig:Z

.field private ij:[I

.field private ir:Z

.field private iw:Ljava/lang/String;

.field private j:I

.field private ji:I

.field private jw:Z

.field private jy:Ljava/lang/String;

.field private k:Z

.field private kk:Z

.field private kx:J

.field private l:Lcom/ss/android/socialbase/appdownloader/ox/s;

.field private le:Z

.field private mn:Ljava/lang/String;

.field private mp:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field private n:Z

.field private nh:Z

.field private no:Z

.field private o:Z

.field private ob:Lcom/ss/android/socialbase/downloader/depend/q;

.field private op:Ljava/lang/String;

.field private ox:Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field private r:Lcom/ss/android/socialbase/downloader/downloader/gh;

.field private s:Ljava/lang/String;

.field private t:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

.field private u:Z

.field private uh:Lcom/ss/android/socialbase/downloader/depend/op;

.field private v:Ljava/lang/String;

.field private vf:Lcom/ss/android/socialbase/downloader/depend/wp;

.field private vw:I

.field private wn:I

.field private wp:Ljava/lang/String;

.field private ws:Ljava/lang/String;

.field private xz:Z

.field private yy:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->kk:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->o:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->no:Z

    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ig:Z

    const-string v1, "application/vnd.android.package-archive"

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->f:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ji:I

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ir:Z

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/EnqueueType;->ENQUEUE_NONE:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->er:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    const/16 v1, 0x96

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->wn:I

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->nh:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ds:Ljava/util/List;

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->jw:Z

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->bu:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ox:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bl()Lcom/ss/android/socialbase/downloader/downloader/gh;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->r:Lcom/ss/android/socialbase/downloader/downloader/gh;

    return-object v0
.end method

.method public bu()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->yy:Lorg/json/JSONObject;

    return-object v0
.end method

.method public by()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->fd:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->nh:Z

    return v0
.end method

.method public cd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->k:Z

    return v0
.end method

.method public ce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->by:Z

    return v0
.end method

.method public cv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->jw:Z

    return v0
.end method

.method public d(I)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ji:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/appdownloader/iw;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->p:Ljava/util/List;

    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->o:Z

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->s:Ljava/lang/String;

    return-object v0
.end method

.method public dc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->v:Ljava/lang/String;

    return-object v0
.end method

.method public dq(J)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->kx:J

    return-object p0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/constants/EnqueueType;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->er:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    return-object p0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->t:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    return-object p0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->mp:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object p0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/cd;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->gx:Lcom/ss/android/socialbase/downloader/depend/cd;

    return-object p0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/mp;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ds:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->s:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;)",
            "Lcom/ss/android/socialbase/appdownloader/iw;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ia:Ljava/util/List;

    return-object p0
.end method

.method public dq(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->yy:Lorg/json/JSONObject;

    return-object p0
.end method

.method public dq(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->kk:Z

    return-object p0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->cv:I

    return-void
.end method

.method public ds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ws:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->n:Z

    return v0
.end method

.method public er()Lcom/ss/android/socialbase/downloader/constants/EnqueueType;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->er:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    return-object v0
.end method

.method public f(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->jw:Z

    return-object p0
.end method

.method public f()Lcom/ss/android/socialbase/downloader/downloader/mn;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->cd:Lcom/ss/android/socialbase/downloader/downloader/mn;

    return-object v0
.end method

.method public fd()Lcom/ss/android/socialbase/downloader/depend/cd;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->gx:Lcom/ss/android/socialbase/downloader/depend/cd;

    return-object v0
.end method

.method public fw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->le:Z

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->dq:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->d:Landroid/content/Context;

    return-object v0
.end method

.method public gh()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->cv:I

    return v0
.end method

.method public gx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/mp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ds:Ljava/util/List;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ir:Z

    return v0
.end method

.method public ha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->dc:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public ia(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->e:Ljava/lang/String;

    return-object p0
.end method

.method public ia(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->by:Z

    return-object p0
.end method

.method public ia()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ig:Z

    return v0
.end method

.method public ig(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ce:Z

    return-object p0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public ir()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->c:Z

    return v0
.end method

.method public iw(I)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->vw:I

    return-object p0
.end method

.method public iw(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->f:Ljava/lang/String;

    return-object p0
.end method

.method public iw(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->k:Z

    return-object p0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->o:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public ji()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->u:Z

    return v0
.end method

.method public jw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->p:Ljava/util/List;

    return-object v0
.end method

.method public jy(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->dc:Z

    return-object p0
.end method

.method public jy()Lcom/ss/android/socialbase/downloader/downloader/ia;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->gh:Lcom/ss/android/socialbase/downloader/downloader/ia;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ji:I

    return v0
.end method

.method public kk(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->op:Ljava/lang/String;

    return-object p0
.end method

.method public kk(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ir:Z

    return-object p0
.end method

.method public kk()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->mp:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object v0
.end method

.method public kx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->op:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->t:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    return-object v0
.end method

.method public le()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->kx:J

    return-wide v0
.end method

.method public mn(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->wp:Ljava/lang/String;

    return-object p0
.end method

.method public mn(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->n:Z

    return-object p0
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->no:Z

    return v0
.end method

.method public mp(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->nh:Z

    return-object p0
.end method

.method public mp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->fw:Z

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->wn:I

    return v0
.end method

.method public nh()Lcom/ss/android/socialbase/downloader/depend/wp;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->vf:Lcom/ss/android/socialbase/downloader/depend/wp;

    return-object v0
.end method

.method public no(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->v:Ljava/lang/String;

    return-object p0
.end method

.method public no(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->c:Z

    return-object p0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->jy:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ws:Ljava/lang/String;

    return-object p0
.end method

.method public o(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->u:Z

    return-object p0
.end method

.method public o()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->q:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object v0
.end method

.method public ob()Lcom/ss/android/socialbase/appdownloader/ox/s;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->l:Lcom/ss/android/socialbase/appdownloader/ox/s;

    return-object v0
.end method

.method public op()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->j:I

    return v0
.end method

.method public ox(I)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->bl:I

    return-object p0
.end method

.method public ox(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public ox(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ig:Z

    return-object p0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public p(I)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->wn:I

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->fd:Ljava/lang/String;

    return-object p0
.end method

.method public p(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->fw:Z

    return-object p0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ia:Ljava/util/List;

    return-object v0
.end method

.method public q(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->h:Z

    return-object p0
.end method

.method public q()Lcom/ss/android/socialbase/downloader/notification/dq;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->i:Lcom/ss/android/socialbase/downloader/notification/dq;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->wp:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->j:I

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->jy:Ljava/lang/String;

    return-object p0
.end method

.method public s(Z)Lcom/ss/android/socialbase/appdownloader/iw;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/iw;->le:Z

    return-object p0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->kk:Z

    return v0
.end method

.method public t()Lcom/ss/android/socialbase/downloader/depend/op;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->uh:Lcom/ss/android/socialbase/downloader/depend/op;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ce:Z

    return v0
.end method

.method public uh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->xz:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->bu:Z

    return v0
.end method

.method public vf()Lcom/ss/android/socialbase/downloader/depend/q;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ob:Lcom/ss/android/socialbase/downloader/depend/q;

    return-object v0
.end method

.method public vw()[I
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ij:[I

    return-object v0
.end method

.method public wn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->h:Z

    return v0
.end method

.method public wp()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->bl:I

    return v0
.end method

.method public xz()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->vw:I

    return v0
.end method

.method public yy()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/iw;->ha:J

    return-wide v0
.end method
