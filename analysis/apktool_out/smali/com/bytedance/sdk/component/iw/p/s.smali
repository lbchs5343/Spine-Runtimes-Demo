.class public Lcom/bytedance/sdk/component/iw/p/s;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# instance fields
.field private d:Lcom/bytedance/sdk/component/iw/iw;

.field private dq:[B


# direct methods
.method public constructor <init>([BLcom/bytedance/sdk/component/iw/iw;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/p/s;->dq:[B

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/p/s;->d:Lcom/bytedance/sdk/component/iw/iw;

    return-void
.end method

.method private dq(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/s;->d:Lcom/bytedance/sdk/component/iw/iw;

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/iw/p/no;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/iw/p/no;-><init>()V

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/iw/p/ia;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/iw/p/ia;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "decode"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/ox/d/dq;

    move-result-object v1

    const/16 v2, 0x3ea

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->k()Lcom/bytedance/sdk/component/iw/q;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v5, 0xa

    invoke-interface {v3, v5, v4}, Lcom/bytedance/sdk/component/iw/q;->dq(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/bytedance/sdk/component/iw/p/s;->dq:[B

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/component/iw/ox/d/dq;->dq([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Lcom/bytedance/sdk/component/iw/p/mp;

    iget-object v5, p0, Lcom/bytedance/sdk/component/iw/p/s;->dq:[B

    iget-object v6, p0, Lcom/bytedance/sdk/component/iw/p/s;->d:Lcom/bytedance/sdk/component/iw/iw;

    const/4 v7, 0x0

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/bytedance/sdk/component/iw/p/mp;-><init>(Ljava/lang/Object;[BLcom/bytedance/sdk/component/iw/iw;Z)V

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/cd;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "decode failed bitmap null"

    invoke-direct {p0, v2, v0, v4, p1}, Lcom/bytedance/sdk/component/iw/p/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/iw/ox/ox;)V

    :goto_1
    if-eqz v3, :cond_2

    const/16 v0, 0xb

    invoke-interface {v3, v0, v1}, Lcom/bytedance/sdk/component/iw/q;->dq(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "decode failed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/bytedance/sdk/component/iw/p/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/iw/ox/ox;)V

    return-void
.end method
