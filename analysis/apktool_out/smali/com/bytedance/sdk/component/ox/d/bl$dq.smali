.class public Lcom/bytedance/sdk/component/ox/d/bl$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Lcom/bytedance/sdk/component/ox/d/wp;

.field dq:Lcom/bytedance/sdk/component/ox/d/kx;

.field ia:Lcom/bytedance/sdk/component/ox/d/bl;

.field ig:J

.field iw:Lcom/bytedance/sdk/component/ox/d/cd$dq;

.field kk:Lcom/bytedance/sdk/component/ox/d/bl;

.field mn:Lcom/bytedance/sdk/component/ox/d/n;

.field no:J

.field o:Lcom/bytedance/sdk/component/ox/d/bl;

.field ox:I

.field p:Ljava/lang/String;

.field s:Lcom/bytedance/sdk/component/ox/d/fw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ox:I

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->iw:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ox:I

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->ox:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ox:I

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->p:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->s:Lcom/bytedance/sdk/component/ox/d/fw;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->s:Lcom/bytedance/sdk/component/ox/d/fw;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->iw:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd;->d()Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->iw:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->ia:Lcom/bytedance/sdk/component/ox/d/bl;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ia:Lcom/bytedance/sdk/component/ox/d/bl;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->kk:Lcom/bytedance/sdk/component/ox/d/bl;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->kk:Lcom/bytedance/sdk/component/ox/d/bl;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->o:Lcom/bytedance/sdk/component/ox/d/bl;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->o:Lcom/bytedance/sdk/component/ox/d/bl;

    iget-wide v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->no:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->no:J

    iget-wide v0, p1, Lcom/bytedance/sdk/component/ox/d/bl;->ig:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ig:J

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 1

    iget-object v0, p2, Lcom/bytedance/sdk/component/ox/d/bl;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/bytedance/sdk/component/ox/d/bl;->ia:Lcom/bytedance/sdk/component/ox/d/bl;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/bytedance/sdk/component/ox/d/bl;->kk:Lcom/bytedance/sdk/component/ox/d/bl;

    if-nez v0, :cond_1

    iget-object p2, p2, Lcom/bytedance/sdk/component/ox/d/bl;->o:Lcom/bytedance/sdk/component/ox/d/bl;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".priorResponse != null"

    invoke-static {p1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".cacheResponse != null"

    invoke-static {p1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".networkResponse != null"

    invoke-static {p1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".body != null"

    invoke-static {p1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private p(Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 1

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/bl;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ig:J

    return-object p0
.end method

.method public d(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/bl;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->kk:Lcom/bytedance/sdk/component/ox/d/bl;

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ox:I

    return-object p0
.end method

.method public dq(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->no:J

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/bl;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ia:Lcom/bytedance/sdk/component/ox/d/bl;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/cd;->d()Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->iw:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/fw;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->s:Lcom/bytedance/sdk/component/ox/d/fw;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/n;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/wp;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->iw:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ox:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/bl;-><init>(Lcom/bytedance/sdk/component/ox/d/bl$dq;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ox(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->p(Lcom/bytedance/sdk/component/ox/d/bl;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;->o:Lcom/bytedance/sdk/component/ox/d/bl;

    return-object p0
.end method
