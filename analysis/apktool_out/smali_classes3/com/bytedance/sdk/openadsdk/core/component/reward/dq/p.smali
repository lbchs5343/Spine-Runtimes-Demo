.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field private static final dq:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field private static final ia:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field private static final iw:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field private static final mn:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field private static final ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field private static final p:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field private static final s:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/d;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/d;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/d;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/s;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/s;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->p:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/p;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/p;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->iw:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->mn:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->ia:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-void
.end method

.method public static dq(Z)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/mn;->d()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->mn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->hz()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->p()I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-le p0, v0, :cond_2

    goto :goto_1

    :cond_2
    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public static dq(ZZ)Lcom/bytedance/sdk/openadsdk/core/p/d/dq;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->mn:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->ia:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq(Z)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    if-eqz p0, :cond_2

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->p:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_4
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->iw:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_5
    if-eqz p0, :cond_6

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_6
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_7
    if-eqz p0, :cond_8

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->mn:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0

    :cond_8
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->ia:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object p0
.end method
