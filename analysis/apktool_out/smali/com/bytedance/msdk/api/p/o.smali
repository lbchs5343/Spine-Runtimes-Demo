.class public final Lcom/bytedance/msdk/api/p/o;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bytedance/msdk/api/p/dq; = null

.field private static dq:Landroid/content/Context; = null

.field private static ox:J = -0x1L

.field private static p:J = -0x1L


# direct methods
.method public static d()J
    .locals 2

    sget-wide v0, Lcom/bytedance/msdk/api/p/o;->ox:J

    return-wide v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/bytedance/msdk/ia/e;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/f/ox;->ox(I)V

    return-void
.end method

.method private static d(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->f()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/msdk/iw/ox;->dq(Lcom/bytedance/msdk/api/p/dq;Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/msdk/mn/dq/dq;->fw()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/d;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/msdk/iw/dq;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static dq(Lcom/bytedance/msdk/api/p/ox;)I
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v0

    const-string v1, "gdt"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0, p0}, Lcom/bytedance/msdk/dq/dq/p;->dq(Lcom/bytedance/msdk/api/p/ox;)I

    move-result p0

    return p0
.end method

.method public static dq(I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/bytedance/msdk/dq/dq/dq;->s:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/d;->d()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/d;->ox()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/dq/dq/p;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/bytedance/msdk/dq/dq/p;->dq(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static dq(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/p/mp;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/api/p/o$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/o$1;-><init>(Landroid/app/Activity;Ljava/util/List;II)V

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/o;->dq(Lcom/bytedance/msdk/api/p/f;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/msdk/ia/p;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/msdk/ia/p$dq;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq;)V
    .locals 5

    sget-wide v0, Lcom/bytedance/msdk/api/p/o;->ox:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/msdk/api/p/o;->ox:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/dq;->dq()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call init time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/bytedance/msdk/api/p/o;->ox:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/bytedance/msdk/api/p/o;->dq:Landroid/content/Context;

    sput-object p1, Lcom/bytedance/msdk/api/p/o;->d:Lcom/bytedance/msdk/api/p/dq;

    :cond_1
    return-void
.end method

.method public static dq(Landroid/content/Context;[I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "permissions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/msdk/ia/p;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/msdk/ia/p$dq;)V

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/p/dq/kk/dq;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/bytedance/msdk/api/p/dq/kk/dq;->dq()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/d;->dq(Lcom/bytedance/msdk/api/p/dq/kk/dq;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/p/f;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/f/ox;->dq(Lcom/bytedance/msdk/api/p/f;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/p/iw;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/msdk/core/d;->dq(Lcom/bytedance/msdk/api/p/iw;Z)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->d()Lcom/bytedance/msdk/dq/ox/q;

    move-result-object v0

    invoke-static {p0}, Lcom/bytedance/msdk/iw/d/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/ox/q;->d(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->n()V

    invoke-static {p0}, Lcom/bytedance/msdk/iw/d/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/msdk/iw/ox;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 2

    const-string v0, "app\u8fd0\u884c\u4e2dsetPulisherDid: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/d;->p(Ljava/lang/String;)V

    return-void
.end method

.method public static dq()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->bl()Z

    move-result v0

    return v0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/msdk/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ia()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->fw()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static ig()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "if_test"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->ox(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/f/ox;->ox(I)V

    return-void
.end method

.method public static iw(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object p0

    return-object p0
.end method

.method public static iw()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->jy()Z

    move-result v0

    return v0
.end method

.method public static kk()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->e()Z

    move-result v0

    return v0
.end method

.method public static mn()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ob()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static no()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ox()J
    .locals 2

    sget-wide v0, Lcom/bytedance/msdk/api/p/o;->p:J

    return-wide v0
.end method

.method public static ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tt_pangle_preview_ad_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "tt_pangle_preview_creative_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "tt_pangle_preview_ext"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/bytedance/msdk/ia/p/p;->dq()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/bytedance/msdk/ia/p/p;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/bytedance/msdk/ia/p/p;->ox()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6dbebe93 -> :sswitch_2
        -0x42712509 -> :sswitch_1
        0x6b4e303 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static p()V
    .locals 5

    sget-object v0, Lcom/bytedance/msdk/api/p/o;->dq:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/api/p/o;->d:Lcom/bytedance/msdk/api/p/dq;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-wide v0, Lcom/bytedance/msdk/api/p/o;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/msdk/api/p/o;->p:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call start up time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/bytedance/msdk/api/p/o;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/bytedance/msdk/api/p/o;->dq:Landroid/content/Context;

    sget-object v1, Lcom/bytedance/msdk/api/p/o;->d:Lcom/bytedance/msdk/api/p/dq;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/api/p/o;->d(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq;)V

    invoke-static {}, Lcom/bytedance/msdk/s/iw;->d()V

    return-void
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/f/ox;->ox(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static s(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/bytedance/msdk/iw/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object p0

    return-object p0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/d/p;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
