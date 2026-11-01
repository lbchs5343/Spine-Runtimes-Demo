.class public Lcom/bytedance/sdk/component/iw/p/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/p/kk;


# instance fields
.field private d:Lcom/bytedance/sdk/component/iw/iw;

.field private dq:[B


# direct methods
.method public constructor <init>([BLcom/bytedance/sdk/component/iw/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/p/d;->d:Lcom/bytedance/sdk/component/iw/iw;

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "image_type"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mp()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(I)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox/dq;->d([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/iw/p/mp;

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    iget-object v3, p0, Lcom/bytedance/sdk/component/iw/p/d;->d:Lcom/bytedance/sdk/component/iw/iw;

    invoke-direct {v1, v2, v2, v3, v0}, Lcom/bytedance/sdk/component/iw/p/mp;-><init>(Ljava/lang/Object;[BLcom/bytedance/sdk/component/iw/iw;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox/dq;->dq([B)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/component/iw/p/s;

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/p/d;->d:Lcom/bytedance/sdk/component/iw/iw;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/iw/p/s;-><init>([BLcom/bytedance/sdk/component/iw/iw;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/component/iw/p/mp;

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    iget-object v3, p0, Lcom/bytedance/sdk/component/iw/p/d;->d:Lcom/bytedance/sdk/component/iw/iw;

    invoke-direct {v1, v2, v2, v3, v0}, Lcom/bytedance/sdk/component/iw/p/mp;-><init>(Ljava/lang/Object;[BLcom/bytedance/sdk/component/iw/iw;Z)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/bytedance/sdk/component/iw/p/mp;

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/p/d;->d:Lcom/bytedance/sdk/component/iw/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox/dq;->d([B)Z

    move-result v3

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/bytedance/sdk/component/iw/p/mp;-><init>(Ljava/lang/Object;[BLcom/bytedance/sdk/component/iw/iw;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox/dq;->dq([B)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/bytedance/sdk/component/iw/p/s;

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/d;->dq:[B

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/p/d;->d:Lcom/bytedance/sdk/component/iw/iw;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/iw/p/s;-><init>([BLcom/bytedance/sdk/component/iw/iw;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/d;->d:Lcom/bytedance/sdk/component/iw/iw;

    if-nez v0, :cond_5

    new-instance v1, Lcom/bytedance/sdk/component/iw/p/no;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/iw/p/no;-><init>()V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/bytedance/sdk/component/iw/p/ia;

    const-string v0, "not image format"

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    invoke-direct {v1, v3, v0, v2}, Lcom/bytedance/sdk/component/iw/p/ia;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void
.end method
