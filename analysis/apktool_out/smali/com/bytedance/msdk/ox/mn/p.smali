.class public Lcom/bytedance/msdk/ox/mn/p;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/core/s/dq/dq;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/no;

    move-result-object p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->cd(I)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->fw(I)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->f(I)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_0
    return-void
.end method
