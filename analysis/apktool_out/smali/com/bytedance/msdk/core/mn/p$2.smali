.class Lcom/bytedance/msdk/core/mn/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/p;->dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/app/Activity;

.field final synthetic dq:Lcom/bytedance/msdk/d/s;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Lcom/bytedance/msdk/core/mn/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/p;Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/p$2;->dq:Lcom/bytedance/msdk/d/s;

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/p$2;->d:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bytedance/msdk/core/mn/p$2;->ox:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    iput-object p5, p0, Lcom/bytedance/msdk/core/mn/p$2;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iput-object v0, v1, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {v1}, Lcom/bytedance/msdk/core/mn/p;->dq(Lcom/bytedance/msdk/core/mn/p;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v1, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/p;->dq(Lcom/bytedance/msdk/core/mn/p;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/d/s;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/p;->d(Lcom/bytedance/msdk/core/mn/p;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v1, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/p;->d(Lcom/bytedance/msdk/core/mn/p;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v1, v0, Lcom/bytedance/msdk/core/mn/s;->ws:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/api/p/dq/d;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->iw(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->t:Lcom/bytedance/msdk/dq/d/iw;

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/dq/d/iw;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->gx:Lcom/bytedance/msdk/dq/d/iw;

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/d/s;->d(Lcom/bytedance/msdk/dq/d/iw;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/core/mn/ox;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->l()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v6, v0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v7, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v8

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v9, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v3, "show"

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5c55\u793a\u7684\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",slotId\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    const-string v3, ",slotType:"

    invoke-static {v2, v0, v3}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isReady()\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u662f\u5426\u4e3a\u7f13\u5b58\u5e7f\u544a:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->fx()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/p$2;->ox:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/p$2;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v3, v3, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/kk/mp;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/core/kk/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iput-boolean v1, v0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/mn/ox;->d(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/p$2;->s:Lcom/bytedance/msdk/core/mn/p;

    iget-object v1, v0, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->mn()Z

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ZI)V

    :cond_5
    return-void
.end method
