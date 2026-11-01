.class public Lcom/bytedance/sdk/component/ox/d/kx$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field dq:Lcom/bytedance/sdk/component/ox/d/gh;

.field iw:Lcom/bytedance/sdk/component/ox/d/ji;

.field ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

.field p:Lcom/bytedance/sdk/component/ox/d/h;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->d:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/kx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx;->p:Lcom/bytedance/sdk/component/ox/d/h;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->p:Lcom/bytedance/sdk/component/ox/d/h;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx;->s:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->s:Ljava/lang/Object;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx;->ox:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd;->d()Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-object p0
.end method

.method public delete()Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ox;->p:Lcom/bytedance/sdk/component/ox/d/h;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->delete(Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/cd;->d()Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/p;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/p;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "wss:"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->s(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected url: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/iw;->ox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " must not have a request body."

    invoke-static {v0, p1, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/iw;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " must have a request body."

    invoke-static {v0, p1, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->p:Lcom/bytedance/sdk/component/ox/d/h;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->ox(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/cd$dq;

    return-object p0
.end method

.method public dq(Ljava/net/URL;)Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->dq(Ljava/net/URL;)Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected url: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/kx;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/kx;-><init>(Lcom/bytedance/sdk/component/ox/d/kx$dq;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
