.class public final Lcom/bytedance/sdk/component/ox/d/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/bl$dq;
    }
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/wp;

.field final dq:Lcom/bytedance/sdk/component/ox/d/kx;

.field final ia:Lcom/bytedance/sdk/component/ox/d/bl;

.field final ig:J

.field final iw:Lcom/bytedance/sdk/component/ox/d/cd;

.field final kk:Lcom/bytedance/sdk/component/ox/d/bl;

.field final mn:Lcom/bytedance/sdk/component/ox/d/n;

.field private volatile mp:Lcom/bytedance/sdk/component/ox/d/p;

.field final no:J

.field final o:Lcom/bytedance/sdk/component/ox/d/bl;

.field final ox:I

.field final p:Ljava/lang/String;

.field final s:Lcom/bytedance/sdk/component/ox/d/fw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/bl$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ox:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ox:I

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->p:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->s:Lcom/bytedance/sdk/component/ox/d/fw;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->s:Lcom/bytedance/sdk/component/ox/d/fw;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->iw:Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->iw:Lcom/bytedance/sdk/component/ox/d/cd;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ia:Lcom/bytedance/sdk/component/ox/d/bl;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ia:Lcom/bytedance/sdk/component/ox/d/bl;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->kk:Lcom/bytedance/sdk/component/ox/d/bl;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->kk:Lcom/bytedance/sdk/component/ox/d/bl;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->o:Lcom/bytedance/sdk/component/ox/d/bl;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->o:Lcom/bytedance/sdk/component/ox/d/bl;

    iget-wide v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->no:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->no:J

    iget-wide v0, p1, Lcom/bytedance/sdk/component/ox/d/bl$dq;->ig:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ig:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/bytedance/sdk/component/ox/d/wp;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/kx;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->iw:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public ia()Lcom/bytedance/sdk/component/ox/d/n;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->mn:Lcom/bytedance/sdk/component/ox/d/n;

    return-object v0
.end method

.method public ig()Lcom/bytedance/sdk/component/ox/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->mp:Lcom/bytedance/sdk/component/ox/d/p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->iw:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/p;->dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->mp:Lcom/bytedance/sdk/component/ox/d/p;

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/component/ox/d/fw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->s:Lcom/bytedance/sdk/component/ox/d/fw;

    return-object v0
.end method

.method public jy()Lcom/bytedance/sdk/component/ox/d/ji;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/bl$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ox/d/cd;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->iw:Lcom/bytedance/sdk/component/ox/d/cd;

    return-object v0
.end method

.method public mp()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->no:J

    return-wide v0
.end method

.method public no()Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->o:Lcom/bytedance/sdk/component/ox/d/bl;

    return-object v0
.end method

.method public o()Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ia:Lcom/bytedance/sdk/component/ox/d/bl;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ox:I

    return v0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ox:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ig:J

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/bl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/bl;->d:Lcom/bytedance/sdk/component/ox/d/wp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/bl;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/bl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/bl;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
