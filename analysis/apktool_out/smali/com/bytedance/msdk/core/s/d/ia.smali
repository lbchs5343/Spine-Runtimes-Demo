.class public abstract Lcom/bytedance/msdk/core/s/d/ia;
.super Lcom/bytedance/msdk/core/mn/dq/dq;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/ox;


# instance fields
.field private d:Lcom/bytedance/msdk/d/s;

.field protected dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/mn/dq/dq;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/ia;->dq:Ljava/util/List;

    return-void
.end method

.method public static synthetic bl(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic c(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic cd(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic ce(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/f/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->ob:Lcom/bytedance/msdk/core/f/ox;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/s/d/ia;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method private dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/core/no/d;
    .locals 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    const-string p2, "\u7b5b\u9009\u9884\u7f13\u5b58 ecpm "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "TMe"

    invoke-static {v2, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->f()Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/no/no;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->ce()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/no/d;->d(Ljava/util/List;)V

    return-object p1

    :cond_3
    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/util/List;)V

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/d/ia;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/d/ia;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/core/s/d/ia;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/core/no/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/d/ia;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/d/ia;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic e(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    return-object p0
.end method

.method public static synthetic er(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/mn/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic h(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic ir(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->ij:Ljava/util/Comparator;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic j(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/mn/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    return-object p0
.end method

.method public static synthetic ji(Lcom/bytedance/msdk/core/s/d/ia;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->ws()V

    return-void
.end method

.method public static synthetic jy(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic k(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    return-object p0
.end method

.method public static synthetic kx(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic n(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic nh(Lcom/bytedance/msdk/core/s/d/ia;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/s/d/p$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ob(Lcom/bytedance/msdk/core/s/d/ia;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic op(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/f/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/s;->ob:Lcom/bytedance/msdk/core/f/ox;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/msdk/core/s/d/ia;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->v()V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/d/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/s/d/ia;->d:Lcom/bytedance/msdk/d/s;

    return-object p0
.end method

.method public static synthetic t(Lcom/bytedance/msdk/core/s/d/ia;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/iw;->cv()V

    return-void
.end method

.method public static synthetic u(Lcom/bytedance/msdk/core/s/d/ia;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic vf(Lcom/bytedance/msdk/core/s/d/ia;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/mn/s;->nh:J

    return-wide v0
.end method

.method public static synthetic wn(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic wp(Lcom/bytedance/msdk/core/s/d/ia;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 3

    const-string p2, "TTMediationSDK"

    const-string v0, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\uff1ainvokeAdFailed"

    invoke-static {p2, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->ij()V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    if-eqz p2, :cond_1

    const/16 v0, 0x2766

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    const/16 v1, 0x2713

    if-ne p1, v1, :cond_0

    const/16 v0, 0x2713

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p2, p1, v1, v0, v2}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/s/d/p$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/core/s/d/ia;->d:Lcom/bytedance/msdk/d/s;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s;->t:Lcom/bytedance/msdk/dq/d/iw;

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/s/d/ia;->ia()V

    return-void
.end method

.method public ia()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/s/d/ia$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/s/d/ia$1;-><init>(Lcom/bytedance/msdk/core/s/d/ia;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l_()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/dq/d;->p(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/dq/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/dq/d;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/core/s/d/p;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/dq/d;->ox(I)V

    return-void
.end method

.method public n_()V
    .locals 5

    const-string v0, "TTMediationSDK"

    const-string v1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\uff1ainvokeAdLoaded"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->ij()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_0
    return-void
.end method
