.class public Lcom/bytedance/msdk/api/p/dq/d/ia/dq;
.super Lcom/bytedance/msdk/api/p/dq/d/d/dq;


# instance fields
.field private cd:D

.field private d:Ljava/lang/String;

.field private f:I

.field private fw:Lcom/bytedance/msdk/api/p/dq/mn/d;

.field private gh:Lcom/bytedance/msdk/api/p/jy;

.field private ia:Ljava/lang/String;

.field private ig:D

.field private iw:I

.field private jy:I

.field private kk:I

.field private mn:I

.field private mp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private no:Ljava/lang/String;

.field private o:I

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq$1;-><init>(Lcom/bytedance/msdk/api/p/dq/d/ia/dq;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->gh:Lcom/bytedance/msdk/api/p/jy;

    iget-object v1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq(Lcom/bytedance/msdk/api/p/jy;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bl()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->iw:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->no:Ljava/lang/String;

    return-object v0
.end method

.method public ce()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ig:D

    return-wide v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->cd:D

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->iw:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ox:Ljava/lang/String;

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/api/p/dq/d/ia/mn;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq(Lcom/bytedance/msdk/api/p/dq/d/ia/mn;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->fw:Lcom/bytedance/msdk/api/p/dq/mn/d;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->d:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->mp:Ljava/util/List;

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    :cond_0
    return-void
.end method

.method public dq(ZDILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public er()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->mp:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->p:Ljava/lang/String;

    return-object v0
.end method

.method public ir()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->o:I

    return v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->jy:I

    return-void
.end method

.method public iw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->no:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->jy:I

    return v0
.end method

.method public ji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->s:Ljava/lang/String;

    return-object v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public kx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->yy()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->f:I

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->q:Ljava/lang/String;

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->mn:I

    return v0
.end method

.method public nh()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->f:I

    return v0
.end method

.method public ob()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public op()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->kk:I

    return v0
.end method

.method public ox(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ig:D

    return-void
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->mn:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->p:Ljava/lang/String;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->kk:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->s:Ljava/lang/String;

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->o:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ia:Ljava/lang/String;

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->kk()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public vf()Lcom/bytedance/msdk/api/p/dq/mn/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->fw:Lcom/bytedance/msdk/api/p/dq/mn/d;

    return-object v0
.end method

.method public wn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->q:Ljava/lang/String;

    return-object v0
.end method

.method public wp()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->cd:D

    return-wide v0
.end method
