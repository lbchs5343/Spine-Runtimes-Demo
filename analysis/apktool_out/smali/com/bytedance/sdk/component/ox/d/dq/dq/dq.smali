.class public final Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/r;


# instance fields
.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    return-void
.end method

.method private static dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/n;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/d;Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/d;->dq()Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/n;->ox()Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;Lcom/bytedance/sdk/component/ox/dq/s;Lcom/bytedance/sdk/component/ox/d/dq/dq/d;Lcom/bytedance/sdk/component/ox/dq/p;)V

    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p2

    new-instance v3, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/n;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    return-object p1
.end method

.method private static dq(Lcom/bytedance/sdk/component/ox/d/cd;Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/cd;
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    invoke-virtual {v6, v0, v4, v5}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd$dq;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd$dq;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/r$dq;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;-><init>(JLcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->dq()Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    move-result-object v1

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;->d:Lcom/bytedance/sdk/component/ox/d/bl;

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    :cond_1
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/bl$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;-><init>()V

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/wp;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/wp;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(I)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ox;->ox:Lcom/bytedance/sdk/component/ox/d/n;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/n;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_0
    invoke-interface {p1, v2}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->ox()I

    move-result v0

    const/16 v3, 0x130

    if-ne v0, v3, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/bl;->mn()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->mn()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->mp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->q()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/n;->close()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;->update(Lcom/bytedance/sdk/component/ox/d/bl;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0

    :cond_5
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->ox(Lcom/bytedance/sdk/component/ox/d/bl;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/d/bl;Lcom/bytedance/sdk/component/ox/d/kx;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/dq/dq/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/d;Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/kx;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/iw;->dq(Ljava/lang/String;)Z

    :cond_8
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    :cond_9
    throw p1
.end method
