.class public Lcom/bytedance/msdk/api/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/dq/ox;
.implements Lcom/bytedance/msdk/api/dq/p;


# instance fields
.field private d:Lcom/bytedance/msdk/core/no/d;

.field private dq:Lcom/bytedance/msdk/api/dq/p;

.field private ox:Lcom/bytedance/msdk/api/dq/ox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/msdk/api/dq/d;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bytedance/msdk/api/dq/ox;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/msdk/api/dq/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->j()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->ig()Lcom/bytedance/msdk/api/dq/ox;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/msdk/api/dq/d;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bytedance/msdk/api/dq/ox;)V

    :cond_0
    return-void
.end method

.method private dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bytedance/msdk/api/dq/ox;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/api/dq/s;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/msdk/api/dq/s;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    new-instance p1, Lcom/bytedance/msdk/api/dq/dq;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/dq/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/bytedance/msdk/api/dq/ox;->ia()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/bytedance/msdk/api/dq/ox;->s(I)V

    :cond_0
    return-void
.end method

.method private ds()V
    .locals 4

    const-string v0, "------------- \u670d\u52a1\u7aef\u914d\u7f6e start ----------------------"

    const-string v1, "AdLinkInfo"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getWaterfallId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->ob()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getVersion = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getBidFloor = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->t()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getParalleType = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->gx()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getReqParallelNum = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->by()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getWaterfallABTest = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->uh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getSegmentId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->xz()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getSegmentVersion = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->yy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getWaterfallExtra = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAdCount = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "------------- \u670d\u52a1\u7aef\u914d\u7f6e end ----------------------"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->bl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public by()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->uh()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cd()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->cd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->ce()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->d(I)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->dq(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->dq(Z)V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public er()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->er()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->fw()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public gh()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->gh()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gx()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->by()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->fw()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/bytedance/msdk/api/dq/p;->h()I

    move-result v0

    :cond_3
    if-gtz v0, :cond_4

    return v2

    :cond_4
    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public i()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->i()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ia()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->ia()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ia(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/p;->ia(I)V

    :cond_0
    return-void
.end method

.method public ig()Lcom/bytedance/msdk/api/dq/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    return-object v0
.end method

.method public ir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->ir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->iw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public iw(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->iw(I)V

    :cond_0
    return-void
.end method

.method public j()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->j()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ji()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->ji()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->jy()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public kk()V
    .locals 2

    const-string v0, "--------------------------- \u8bf7\u6c42\u53c2\u6570 --------------------------"

    const-string v1, "AdLinkInfo"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    const-string v0, "---- \u805a\u5408\u5185\u90e8\u751f\u6210\u53c2\u6570 start ------ "

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->kk()V

    const-string v0, "---- \u805a\u5408\u5185\u90e8\u751f\u6210\u53c2\u6570 end ----- "

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_1

    const-string v0, "---- \u8bf7\u6c42\u53c2\u6570 start ------"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->kk()V

    const-string v0, "---- \u8bf7\u6c42\u53c2\u6570 end ------"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/dq/d;->ds()V

    return-void
.end method

.method public kk(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/p;->kk(I)V

    :cond_0
    return-void
.end method

.method public kx()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->kx()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->ir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public le()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->le()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->mn(I)V

    :cond_0
    return-void
.end method

.method public mn()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->mn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mp()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->mp()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nh()Lcom/bytedance/msdk/core/no/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    return-object v0
.end method

.method public no()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->no()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ob()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public op()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->op()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->ox()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->ox(I)V

    :cond_0
    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/p;->ox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->p(I)V

    :cond_0
    return-void
.end method

.method public q()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->q()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->r()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/ox;->s()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->ox:Lcom/bytedance/msdk/api/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/dq/ox;->s(I)V

    :cond_0
    return-void
.end method

.method public t()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->cd()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->u()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gh()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public vf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->vf()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public wn()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->wn()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public wp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->dq:Lcom/bytedance/msdk/api/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/dq/p;->wp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public xz()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->ji()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public yy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/dq/d;->d:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->bl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
