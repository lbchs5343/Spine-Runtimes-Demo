.class public Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;
.super Lcom/bytedance/msdk/core/dq/dq/d/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;-><init>()V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->p()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->s(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->ox(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->mn(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->mn(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->d(Landroid/content/Context;)V

    return-void
.end method

.method private ia()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v1

    const v2, 0xc35a

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c52

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ia(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc350

    invoke-virtual {v0, v2, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c82

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ig()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;)V

    const/16 v2, 0x2714

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c42

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private iw()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;)V

    const/16 v2, 0x2714

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x271d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c84

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private iw(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc350

    invoke-virtual {v0, v2, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const p1, 0xc352

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lg/hat;->n(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c5e

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private kk()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v1

    const v2, 0xc35a

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c53

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private mn()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v1

    float-to-int v1, v1

    const v2, 0xc35e

    invoke-virtual {v0, v2, v1}, Lg/hat;->o(II)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c5f

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private mn(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->ia(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->no()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->ig()V

    return-void
.end method

.method private no()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc366

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c83

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v1

    const v2, 0xc35a

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c54

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ox(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->p(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->kk()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->o()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->s()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->bl()Lcom/bytedance/msdk/api/p/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/q;->d()Lcom/bytedance/msdk/api/p/kk;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/kk;->d()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lng"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/kk;->dq()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loc_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const v2, 0xc35a

    invoke-virtual {v1, v2, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x9c59

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc350

    invoke-virtual {v0, v2, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const p1, 0xc352

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lg/hat;->n(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c64

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;)V

    const/16 v2, 0x2714

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x271d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c65

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private s(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->mn()V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->iw(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->kk()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->o()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->ia()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->iw()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$1;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;->d(Landroid/content/Context;)V

    return-void
.end method
