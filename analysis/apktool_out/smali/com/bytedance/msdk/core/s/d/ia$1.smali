.class Lcom/bytedance/msdk/core/s/d/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/s/d/ia;->ia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/s/d/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/s/d/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/s/d/ia;->l_()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->dq(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/dq/d;->iw(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->d(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "TTMediationSDK"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->p(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5}, Lcom/bytedance/msdk/core/s/d/ia;->ox(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/mn/ox;->gh()I

    move-result v6

    const/16 v7, 0x66

    invoke-virtual {v0, v5, v6, v7}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5}, Lcom/bytedance/msdk/core/s/d/ia;->s(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/d/s;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/bytedance/msdk/core/s/d/ia;->dq(Lcom/bytedance/msdk/core/s/d/ia;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/core/s/d/ia;->dq(Lcom/bytedance/msdk/core/s/d/ia;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->iw(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5}, Lcom/bytedance/msdk/core/s/d/ia;->mn(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5, v0}, Lcom/bytedance/msdk/core/s/d/ia;->d(Lcom/bytedance/msdk/core/s/d/ia;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->ia(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u672a\u53d1\u8d77\uff0cmRitConfig\u4e3anull"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->kk(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->no(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v1}, Lcom/bytedance/msdk/core/s/d/ia;->o(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->q(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5}, Lcom/bytedance/msdk/core/s/d/ia;->ig(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/d;->j()J

    move-result-wide v5

    long-to-double v5, v5

    iget-object v7, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v7}, Lcom/bytedance/msdk/core/s/d/ia;->mp(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/d;->ox()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-long v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/msdk/core/no/d;->iw(J)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->fw(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5}, Lcom/bytedance/msdk/core/s/d/ia;->jy(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/d;->wn()J

    move-result-wide v5

    long-to-double v5, v5

    iget-object v7, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v7}, Lcom/bytedance/msdk/core/s/d/ia;->f(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/d;->d()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-long v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/msdk/core/no/d;->s(J)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->cd(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/core/no/d;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->gh(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/core/no/d;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->r(Lcom/bytedance/msdk/core/s/d/ia;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->le(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5}, Lcom/bytedance/msdk/core/s/d/ia;->i(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/api/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->k(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->kk()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->wp(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->ji(Lcom/bytedance/msdk/core/s/d/ia;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->bl(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/core/s/d/ia;->dq(Lcom/bytedance/msdk/core/s/d/ia;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v4}, Lcom/bytedance/msdk/core/s/d/ia;->n(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->u()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/bytedance/msdk/core/s/d/ia;->dq(Lcom/bytedance/msdk/core/s/d/ia;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->op(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/msdk/core/s/d/ia;->dq:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    iget-object v2, v0, Lcom/bytedance/msdk/core/s/d/ia;->dq:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->ir(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/msdk/ia/ir;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\uff0c\u8fc7\u6ee4\u540e\u7684waterfall\uff1a"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    iget-object v0, v0, Lcom/bytedance/msdk/core/s/d/ia;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v5}, Lcom/bytedance/msdk/core/s/d/ia;->u(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "waterfall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", loadSort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", showSort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", eCpm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->c(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/d;->dq(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->er(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/mn/ia;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v2}, Lcom/bytedance/msdk/core/s/d/ia;->ce(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/mn/ia;->dq(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->j(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/mn/ia;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v2}, Lcom/bytedance/msdk/core/s/d/ia;->wn(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/mn/ia;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->nh(Lcom/bytedance/msdk/core/s/d/ia;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->ob(Lcom/bytedance/msdk/core/s/d/ia;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v2}, Lcom/bytedance/msdk/core/s/d/ia;->vf(Lcom/bytedance/msdk/core/s/d/ia;)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->l(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->t(Lcom/bytedance/msdk/core/s/d/ia;)V

    return-void

    :cond_6
    :goto_1
    const-string v0, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u672a\u53d1\u8d77\uff0c\u8fc7\u6ee4\u540e\u7684waterfall\u4e3a\u7a7a"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->e(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/ia;->h(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/s/d/ia$1;->dq:Lcom/bytedance/msdk/core/s/d/ia;

    invoke-static {v1}, Lcom/bytedance/msdk/core/s/d/ia;->kx(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_7
    return-void
.end method
