.class public final Lcom/bytedance/sdk/component/ox/d/dq/ox/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/ox/d$dq;
    }
.end annotation


# instance fields
.field private final dq:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/d;->dq:Z

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/r$dq;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->mn()Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->iw()Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s()Lcom/bytedance/sdk/component/ox/d/kk;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/component/ox/d/ji;->dq(J)V

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->call()Lcom/bytedance/sdk/component/ox/d/s;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->call()Lcom/bytedance/sdk/component/ox/d/s;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/kx;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/sdk/component/ox/d/dq/ox/iw;->ox(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/kx;->p()Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, "Expect"

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->dq()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->call()Lcom/bytedance/sdk/component/ox/d/s;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->dq(Z)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->call()Lcom/bytedance/sdk/component/ox/d/s;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/kx;->p()Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/h;->d()J

    move-result-wide v8

    new-instance v2, Lcom/bytedance/sdk/component/ox/d/dq/ox/d$dq;

    invoke-interface {v0, v3, v8, v9}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->dq(Lcom/bytedance/sdk/component/ox/d/kx;J)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/bytedance/sdk/component/ox/d/dq/ox/d$dq;-><init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v2

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/kx;->p()Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/component/ox/d/h;->dq(Lcom/bytedance/sdk/component/ox/dq/p;)V

    invoke-interface {v2}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->call()Lcom/bytedance/sdk/component/ox/d/s;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p()V

    :cond_3
    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->d()V

    if-nez v7, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->call()Lcom/bytedance/sdk/component/ox/d/s;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->dq(Z)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v7

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v2, v3, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/ox/d/ji;->d(J)V

    :cond_5
    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d()Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p()Lcom/bytedance/sdk/component/ox/d/fw;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/fw;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->d(J)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->call()Lcom/bytedance/sdk/component/ox/d/s;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/bl;->ox()I

    move-result p1

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/d;->dq:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x65

    if-ne p1, v3, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/dq/ox;->ox:Lcom/bytedance/sdk/component/ox/d/n;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/n;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/n;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "close"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p()V

    :cond_8
    const/16 v1, 0xcc

    if-eq p1, v1, :cond_9

    const/16 v1, 0xcd

    if-ne p1, v1, :cond_a

    :cond_9
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/n;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_b

    :cond_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "HTTP "

    const-string v3, " had non-zero Content-Length: "

    invoke-static {p1, v2, v3}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->d()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
