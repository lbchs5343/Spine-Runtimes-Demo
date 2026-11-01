.class public Lcom/bytedance/msdk/core/ox/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:D

.field private dq:D

.field private ia:I

.field private iw:I

.field private kk:I

.field private mn:I

.field private no:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private ox:D

.field private p:D

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDDDILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/ox/dq;->mn:I

    iput v0, p0, Lcom/bytedance/msdk/core/ox/dq;->ia:I

    iput v0, p0, Lcom/bytedance/msdk/core/ox/dq;->kk:I

    iput-wide p1, p0, Lcom/bytedance/msdk/core/ox/dq;->dq:D

    iput-wide p3, p0, Lcom/bytedance/msdk/core/ox/dq;->d:D

    iput-wide p5, p0, Lcom/bytedance/msdk/core/ox/dq;->ox:D

    iput-wide p7, p0, Lcom/bytedance/msdk/core/ox/dq;->p:D

    iput-object p10, p0, Lcom/bytedance/msdk/core/ox/dq;->s:Ljava/lang/String;

    iput p9, p0, Lcom/bytedance/msdk/core/ox/dq;->iw:I

    return-void
.end method

.method private dq(DD)Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/ox/dq;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :pswitch_1
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_2
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_4
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_1

    return v3

    :pswitch_5
    cmpl-double v0, p1, p3

    if-nez v0, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_6
    cmpg-double v0, p1, p3

    if-gtz v0, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_7
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_8
    cmpg-double v0, p1, p3

    if-gez v0, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_9
    cmpl-double v0, p1, p3

    if-lez v0, :cond_9

    return v3

    :cond_9
    return v2

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private p()Z
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/msdk/core/ox/dq;->dq:D

    iget-wide v2, p0, Lcom/bytedance/msdk/core/ox/dq;->ox:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/msdk/core/ox/dq;->dq(DD)Z

    move-result v0

    return v0
.end method

.method private s()Z
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/msdk/core/ox/dq;->d:D

    iget-wide v2, p0, Lcom/bytedance/msdk/core/ox/dq;->p:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/msdk/core/ox/dq;->dq(DD)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/ox/dq;->dq:D

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/ox/dq;->ia:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ox/dq;->no:Ljava/lang/String;

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/ox/dq;->mn:I

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ox/dq;->o:Ljava/lang/String;

    return-void
.end method

.method public dq()Z
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/ox/dq;->p()Z

    move-result v0

    return v0
.end method

.method public ox()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/ox/dq;->d:D

    return-wide v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/ox/dq;->kk:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adnName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ox/dq;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " adnRit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/ox/dq;->no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", send = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/ox/dq;->mn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fill = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/ox/dq;->ia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/ox/dq;->kk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " localSsr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/ox/dq;->dq:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", serviceSsr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/ox/dq;->ox:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", localSrr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/ox/dq;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", serviceSrr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/ox/dq;->p:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", opt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/ox/dq;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", condition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/ox/dq;->iw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compareBehaviorSsr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/ox/dq;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", compareBehaviorSrr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/ox/dq;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", checkBehaviorRule = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/ox/dq;->dq()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
