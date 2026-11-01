.class public final Lcom/bytedance/sdk/component/ox/d/dq/ox/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/r;


# instance fields
.field private final dq:Lcom/bytedance/sdk/component/ox/d/mp;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/mp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/dq;->dq:Lcom/bytedance/sdk/component/ox/d/mp;

    return-void
.end method

.method private dq(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/ig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/ox/d/ig;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/ig;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/ig;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/r$dq;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->iw()Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->p()Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-string v5, "Content-Type"

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/h;->dq()Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ox/d/i;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/h;->d()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v3

    if-eqz v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    invoke-virtual {v1, v2, v7}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/d/gh;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v2, v9}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    const/4 v8, 0x1

    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/dq;->dq:Lcom/bytedance/sdk/component/ox/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/bytedance/sdk/component/ox/d/mp;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Cookie"

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/dq;->dq(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/p;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_7
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/dq;->dq:Lcom/bytedance/sdk/component/ox/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->mn()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Lcom/bytedance/sdk/component/ox/d/mp;Lcom/bytedance/sdk/component/ox/d/gh;Lcom/bytedance/sdk/component/ox/d/cd;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->ox(Lcom/bytedance/sdk/component/ox/d/bl;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/bytedance/sdk/component/ox/dq/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ox/d/n;->ox()Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/bytedance/sdk/component/ox/dq/o;-><init>(Lcom/bytedance/sdk/component/ox/dq/gh;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->mn()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ox/d/cd;->d()Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v2

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/n;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    return-object p1
.end method
