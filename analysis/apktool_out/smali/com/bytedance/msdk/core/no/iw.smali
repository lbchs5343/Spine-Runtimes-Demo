.class public Lcom/bytedance/msdk/core/no/iw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/msdk/core/no/iw;",
        ">;"
    }
.end annotation


# instance fields
.field private d:D

.field private dq:Ljava/lang/String;

.field private ox:I

.field private p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/iw;->dq:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bytedance/msdk/core/no/iw;->d:D

    iput p4, p0, Lcom/bytedance/msdk/core/no/iw;->ox:I

    iput p5, p0, Lcom/bytedance/msdk/core/no/iw;->p:I

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/core/no/iw;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/no/iw;->dq(Lcom/bytedance/msdk/core/no/iw;)I

    move-result p1

    return p1
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/iw;->d:D

    return-wide v0
.end method

.method public dq(Lcom/bytedance/msdk/core/no/iw;)I
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/iw;->d:D

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/iw;->d()D

    move-result-wide v3

    const/4 v5, -0x1

    cmpl-double v6, v1, v3

    if-lez v6, :cond_1

    return v5

    :cond_1
    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/iw;->d:D

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/iw;->d()D

    move-result-wide v3

    cmpg-double v6, v1, v3

    if-gez v6, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lcom/bytedance/msdk/core/no/iw;->ox:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/iw;->ox()I

    move-result v2

    if-le v1, v2, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/bytedance/msdk/core/no/iw;->ox:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/iw;->ox()I

    move-result v2

    if-ge v1, v2, :cond_4

    return v5

    :cond_4
    iget v1, p0, Lcom/bytedance/msdk/core/no/iw;->p:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/iw;->p()I

    move-result v2

    if-le v1, v2, :cond_5

    return v0

    :cond_5
    iget v0, p0, Lcom/bytedance/msdk/core/no/iw;->p:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/iw;->p()I

    move-result p1

    if-ge v0, p1, :cond_6

    return v5

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/iw;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/iw;->ox:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/iw;->p:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{mCsjRitId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/iw;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mEcpm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/iw;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",mLoadSort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/iw;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mShowSort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/iw;->p:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
