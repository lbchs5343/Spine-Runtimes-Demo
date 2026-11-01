.class public Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;
.super Lcom/bytedance/sdk/component/d/dq/f;


# instance fields
.field public dq:Lcom/bytedance/sdk/component/ox/d/bl;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/dq/f;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->close()V

    return-void
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->mp()J

    move-result-wide v0

    return-wide v0
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ia()Lcom/bytedance/sdk/component/d/dq/mp;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->d()Lcom/bytedance/sdk/component/ox/d/wp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/wp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/mp;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/mp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/bytedance/sdk/component/d/dq/mp;->d:Lcom/bytedance/sdk/component/d/dq/mp;

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/component/d/dq/fw;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;-><init>(Lcom/bytedance/sdk/component/ox/d/n;)V

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/component/d/dq/no;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/d/dq/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->jy()Lcom/bytedance/sdk/component/ox/d/ji;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/d/dq/no;-><init>(Lcom/bytedance/sdk/component/ox/d/ji;)V

    return-object v1
.end method

.method public mn()Lcom/bytedance/sdk/component/d/dq/iw;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/bl;->mn()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/cd;->dq:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/iw;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ox()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->p()Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
