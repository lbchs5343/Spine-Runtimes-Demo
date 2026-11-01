.class final Lcom/bytedance/sdk/component/ox/d/mn$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field final d:Ljava/lang/String;

.field final dq:Ljava/lang/String;

.field final ox:Ljava/lang/String;

.field final p:Lcom/bytedance/sdk/component/ox/dq/iw;


# virtual methods
.method public dq(Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->dq:Ljava/lang/String;

    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_0

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->d:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    move-object v4, p1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->d:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bytedance/sdk/component/ox/d/mn$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->dq:Ljava/lang/String;

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/mn$d;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/mn$d;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->ox:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/mn$d;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/mn$d;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->dq:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, Lg/tn;->k(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->ox:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lg/tn;->k(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/iw;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/mn$d;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/iw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
