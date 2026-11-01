.class public Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;
.super Lcom/bytedance/msdk/d/s;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private d:Lcom/bytedance/msdk/core/no/no;

.field private dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

.field private p:Lcom/bytedance/msdk/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    iget-object p2, p1, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->d:Lcom/bytedance/msdk/core/no/no;

    iget-object p1, p1, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->el()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->kr()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dn()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->kr()I

    move-result p1

    if-eq p1, v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->kr()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->kr()I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->ig(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->kf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->n(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->op(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->mp(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->fa()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->gv()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->mp(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->gv()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dn()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c56

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)I
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->uo()I

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->wp(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->iw(Ljava/util/Map;)V

    return-void
.end method

.method private e(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc357

    invoke-virtual {v0, v1, p1}, Lg/hat;->o(II)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c47

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private el()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc359

    invoke-virtual {v0, v1, p0}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c49

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private fa()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->hg()I

    move-result v0

    :goto_0
    int-to-double v0, v0

    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->uo()I

    move-result v0

    goto :goto_0
.end method

.method private gv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ne()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hg()I
    .locals 5

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$1;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private hz()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c62

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private iw(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc35a

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c4e

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ix()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    new-instance v1, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$2;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private kf()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c60

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private kr()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const v3, 0x9c55

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ml()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x9c63

    const-class v3, Landroid/view/View;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    return-object v1
.end method

.method private ne()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c44

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->vk()V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->sp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->hz()V

    return-void
.end method

.method private sp()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/util/Map;

    const v3, 0x9c4f

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "request_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c61

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private uo()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    const v4, 0x9c43

    invoke-interface {v0, v4, v2, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private vk()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c4b

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private wp(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc357

    invoke-virtual {v0, v1, p1}, Lg/hat;->o(II)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c4d

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private xn()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$6;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private xq()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x9c4c

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const p3, 0xea70

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, p3, :cond_1

    const/16 p1, 0x1f6a

    const-class p3, Landroid/view/View;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result p2

    const p3, 0x13883

    const-string v2, "\u6e32\u67d3\u5931\u8d25"

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    instance-of v1, p2, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v1, :cond_a

    check-cast p2, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {p2, p1, v2, p3}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    instance-of v1, p2, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz v1, :cond_a

    check-cast p2, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    invoke-interface {p2, p1, v2, p3}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    const p3, 0xea71

    if-ne p1, p3, :cond_3

    const p1, 0xc35e

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    const p3, 0xc360

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result p3

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    instance-of v1, p3, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v1, :cond_a

    check-cast p3, Lcom/bytedance/msdk/api/p/dq/ox/s;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(FF)V

    goto/16 :goto_0

    :cond_2
    iget-object p3, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    instance-of v1, p3, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz v1, :cond_a

    check-cast p3, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(FF)V

    goto/16 :goto_0

    :cond_3
    const p3, 0xea69

    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq()V

    goto/16 :goto_0

    :cond_5
    const p3, 0xea64

    if-ne p1, p3, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz p1, :cond_a

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    if-eqz p1, :cond_a

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    const p3, 0xea65

    if-ne p1, p3, :cond_8

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->v()V

    goto :goto_0

    :cond_8
    const p3, 0xea66

    if-ne p1, p3, :cond_9

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->p:Lcom/bytedance/msdk/api/dq/d;

    const-string p2, "gdt\u4fe1\u606f\u6d41\u6a21\u677fdislike\u63a5\u53e3\u65e0\u5173\u95ed\u539f\u56e0"

    invoke-static {p0, p1, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object p1

    const/4 p3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_9
    const p3, 0xea6a

    if-ne p1, p3, :cond_a

    const p1, 0xc356

    const-class p3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance p2, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz p1, :cond_a

    new-instance p3, Lcom/bytedance/msdk/api/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->dq()I

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_a
    :goto_0
    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->d:Lcom/bytedance/msdk/core/no/no;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$4;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;I)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->wp(I)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->d:Lcom/bytedance/msdk/core/no/no;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$5;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->iw(Ljava/util/Map;)V

    return-void
.end method

.method public e()Z
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->xq()Z

    move-result v0

    return v0
.end method

.method public ig()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->uo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->e(I)V

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ml()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->xn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->sp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public no()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$7;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$7;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->hz()V

    return-void
.end method

.method public p()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->p()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox$3;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->vk()V

    return-void
.end method

.method public s()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x9c4c

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
