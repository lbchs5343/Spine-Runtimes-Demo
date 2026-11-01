.class public Lcom/bytedance/sdk/openadsdk/core/playable/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;,
        Lcom/bytedance/sdk/openadsdk/core/playable/s$d;
    }
.end annotation


# static fields
.field private static final dq:Lcom/bytedance/sdk/openadsdk/core/playable/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/playable/s;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s;

    return-object v0
.end method


# virtual methods
.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;
    .locals 1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
