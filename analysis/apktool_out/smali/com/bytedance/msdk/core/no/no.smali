.class public Lcom/bytedance/msdk/core/no/no;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/msdk/core/no/no;",
        ">;"
    }
.end annotation


# instance fields
.field private cd:Lcom/bytedance/msdk/core/no/kk;

.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private e:I

.field private f:I

.field private fw:I

.field private gh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private ia:I

.field private ig:Ljava/lang/String;

.field private iw:I

.field private jy:I

.field private k:Lcom/bytedance/msdk/core/kk/kk;

.field private kk:I

.field private le:I

.field private mn:I

.field private mp:I

.field private no:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private wp:Lcom/bytedance/msdk/core/kk/mn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/no;->p:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/no;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->gh:Ljava/util/Map;

    return-object v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public cd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public ce()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/no/no;->dq(Lcom/bytedance/msdk/core/no/no;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/bytedance/msdk/core/kk/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->wp:Lcom/bytedance/msdk/core/kk/mn;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->le:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->p:Ljava/lang/String;

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->e:I

    return v0
.end method

.method public dq(Lcom/bytedance/msdk/core/no/no;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/msdk/core/no/no;->mn:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v2

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lcom/bytedance/msdk/core/no/no;->mn:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    return v3

    :cond_2
    iget v1, p0, Lcom/bytedance/msdk/core/no/no;->ia:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v2

    if-le v1, v2, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->ia:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result p1

    if-ge v0, p1, :cond_4

    return v3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->e:I

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->k:Lcom/bytedance/msdk/core/kk/kk;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->wp:Lcom/bytedance/msdk/core/kk/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->cd:Lcom/bytedance/msdk/core/no/kk;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->o:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->gh:Ljava/util/Map;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->ia:I

    return v0
.end method

.method public er()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->d:Ljava/lang/String;

    return-object v0
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public gh()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->ig:Ljava/lang/String;

    return-object v0
.end method

.method public i()D
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->cd:Lcom/bytedance/msdk/core/no/kk;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->cd:Lcom/bytedance/msdk/core/no/kk;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getServerBiddingShowEcpm error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WaterFallConfig"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->mp:I

    return v0
.end method

.method public ia(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->fw:I

    return-void
.end method

.method public ia(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->ig:Ljava/lang/String;

    return-void
.end method

.method public ig()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->fw:I

    return v0
.end method

.method public ig(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->ia:I

    return-void
.end method

.method public ir()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->r:I

    return v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->jy:I

    return-void
.end method

.method public iw(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    :cond_0
    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->s:Ljava/lang/String;

    return-void
.end method

.method public ji()Lcom/bytedance/msdk/core/no/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->cd:Lcom/bytedance/msdk/core/no/kk;

    return-object v0
.end method

.method public jy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public k()D
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->p:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-double v0, v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEcpm error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaterFallConfig"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->q:I

    return v0
.end method

.method public kk(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->kk:I

    return-void
.end method

.method public kk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->i:Ljava/lang/String;

    return-void
.end method

.method public kx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->no:Ljava/lang/String;

    return-object v0
.end method

.method public le()D
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->cd:Lcom/bytedance/msdk/core/no/kk;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->cd:Lcom/bytedance/msdk/core/no/kk;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getServerBiddingLoadEcpm error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WaterFallConfig"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->o:Ljava/lang/String;

    return-object v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->f:I

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->no:Ljava/lang/String;

    return-void
.end method

.method public mp()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->kk:I

    return v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public no()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->f:I

    return v0
.end method

.method public no(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->mn:I

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->jy:I

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    return-void
.end method

.method public op()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()Lcom/bytedance/msdk/core/kk/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->k:Lcom/bytedance/msdk/core/kk/kk;

    return-object v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->r:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->mp:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->d:Ljava/lang/String;

    return-void
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->le:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/no;->p:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public s()Lcom/bytedance/msdk/core/no/no;
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/ia/ig;->d()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/no/no;

    invoke-direct {v1}, Lcom/bytedance/msdk/core/no/no;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    const-string v2, "mAdnetworkName"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->ox:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->ox:Ljava/lang/String;

    const-string v2, "mAdnetwokrSlotId"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->p:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->p:Ljava/lang/String;

    const-string v2, "mExchangeRate"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->s:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->s:Ljava/lang/String;

    const-string v2, "mEcpm"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->iw:I

    const-string v2, "mAdnetworkSlotType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->mn:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->mn:I

    const-string v2, "mLoadSort"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->ia:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->ia:I

    const-string v2, "mShowSort"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->kk:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->kk:I

    const-string v2, "mRitType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->jy:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->jy:I

    const-string v2, "originType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->r:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->r:I

    const-string v2, "mSubAdType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->o:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->o:Ljava/lang/String;

    const-string v2, "mLoaderAdapterName"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->no:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->no:Ljava/lang/String;

    const-string v2, "mWaterfallAbTestParam"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->ig:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->ig:Ljava/lang/String;

    const-string v2, "mServerBiddingExtra"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->mp:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->mp:I

    const-string v2, "adExpiredTime"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->q:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->q:I

    const-string v2, "ifReuseAds"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->f:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->f:I

    const-string v2, "ifPreRequest"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->fw:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->fw:I

    const-string v2, "ifIsReady"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->e:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->e:I

    const-string v2, "isRefresh"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->d:Ljava/lang/String;

    const-string v2, "mCustomAdnetworkName"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->gh:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/no/no;->gh:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->gh:Ljava/util/Map;

    const-string v2, "mMultilevelSlotCpm"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->i:Ljava/lang/String;

    const-string v2, "mCustomAdapterJson"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/no;->le:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/no;->le:I

    const-string v2, "mAdnRitTimingMode"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->wp:Lcom/bytedance/msdk/core/kk/mn;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->wp:Lcom/bytedance/msdk/core/kk/mn;

    const-string v2, "mIntervalFreqctlBean"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/no;->k:Lcom/bytedance/msdk/core/kk/kk;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/no;->k:Lcom/bytedance/msdk/core/kk/kk;

    const-string v2, "mIntervalPacingBean"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "WaterFallConfig"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->d(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/no;->q:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/no;->ox:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WaterFallConfig{mAdnetworkName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mCustomAdnetworkName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/no;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mAdnetwokrSlotId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/no;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mExchangeRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/no;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSlotEcpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/no;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAdnetworkSlotType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLoadSort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/no;->mn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShowSort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/no;->ia:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->iw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wn()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/no;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/ox;->ox(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wp()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/no;->mn:I

    return v0
.end method
