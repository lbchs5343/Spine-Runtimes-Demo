.class public final Lcom/bytedance/sdk/component/ox/d/kx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/kx$dq;
    }
.end annotation


# instance fields
.field final d:Ljava/lang/String;

.field final dq:Lcom/bytedance/sdk/component/ox/d/gh;

.field public iw:Lcom/bytedance/sdk/component/ox/d/ji;

.field private volatile mn:Lcom/bytedance/sdk/component/ox/d/p;

.field final ox:Lcom/bytedance/sdk/component/ox/d/cd;

.field final p:Lcom/bytedance/sdk/component/ox/d/h;

.field final s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/kx$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx$dq;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx$dq;->ox:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->ox:Lcom/bytedance/sdk/component/ox/d/cd;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx$dq;->p:Lcom/bytedance/sdk/component/ox/d/h;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->p:Lcom/bytedance/sdk/component/ox/d/h;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/kx$dq;->s:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->s:Ljava/lang/Object;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/kx$dq;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/component/ox/d/ji;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/d/ji;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/gh;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->ox:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ia()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->p()Z

    move-result v0

    return v0
.end method

.method public iw()Lcom/bytedance/sdk/component/ox/d/kx$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/kx$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;)V

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ox/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->mn:Lcom/bytedance/sdk/component/ox/d/p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->ox:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/p;->dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->mn:Lcom/bytedance/sdk/component/ox/d/p;

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/d/cd;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->ox:Lcom/bytedance/sdk/component/ox/d/cd;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/ox/d/h;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->p:Lcom/bytedance/sdk/component/ox/d/h;

    return-object v0
.end method

.method public s()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/kx;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/kx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/kx;->dq:Lcom/bytedance/sdk/component/ox/d/gh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/kx;->s:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
