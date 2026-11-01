.class public Lcom/bytedance/sdk/openadsdk/core/ir/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
    }
.end annotation


# static fields
.field private static d:Lcom/bytedance/sdk/openadsdk/core/fw;

.field private static final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq:Ljava/util/Map;

    return-void
.end method

.method public static synthetic d()Lcom/bytedance/sdk/openadsdk/core/fw;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->ox()Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-static {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->ox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/iw$2;

    move-object v4, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$2;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ir/iw$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic dq()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq:Ljava/util/Map;

    return-object v0
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    const-string v1, "pangle_logo"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    const-string v1, "open_policy"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/iw$8;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ao()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/iw$5;

    invoke-direct {v1, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->kk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->ox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-static {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;

    move-object v4, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v3, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p6}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-static/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ir/iw$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static dq(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$7;

    const-string v1, "doHandler"

    invoke-direct {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$7;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;->ox()V

    return-void

    :cond_3
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;->ox()V

    return-void

    :cond_4
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;->d()V

    return-void

    :cond_5
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;->dq()V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$6;

    const-string v1, "addDialogListener"

    invoke-direct {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fn()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zi()Lcom/bytedance/sdk/openadsdk/core/r/r;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->no()I

    move-result p0

    if-eq p0, v3, :cond_6

    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    return v0
.end method

.method private static ox()Lcom/bytedance/sdk/openadsdk/core/fw;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->d:Lcom/bytedance/sdk/openadsdk/core/fw;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/fw$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->d:Lcom/bytedance/sdk/openadsdk/core/fw;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->d:Lcom/bytedance/sdk/openadsdk/core/fw;

    return-object v0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object p1

    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    :cond_1
    invoke-interface {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static ox(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public static s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    return-object p0
.end method
