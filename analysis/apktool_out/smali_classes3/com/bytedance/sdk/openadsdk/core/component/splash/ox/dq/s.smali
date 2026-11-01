.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;


# static fields
.field public static p:I = 0x1

.field public static s:I = 0x2


# instance fields
.field private ia:Ljava/lang/String;

.field private iw:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private mn:Lcom/bytedance/sdk/openadsdk/core/r/nh;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->iw:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->mn:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->ia:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->iw:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/core/r/nh;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->mn:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    return-object v0
.end method
