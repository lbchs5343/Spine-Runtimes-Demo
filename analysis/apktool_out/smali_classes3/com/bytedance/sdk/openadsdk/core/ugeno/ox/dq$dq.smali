.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;
.super Lcom/bytedance/sdk/component/adexpress/d/mp$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Lg/dbw;

.field private dq:Lorg/json/JSONObject;

.field private ox:F

.field private p:F

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/d/mp$dq;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)Lg/dbw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d:Lg/dbw;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->dq:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->ox:F

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->p:F

    return p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->s:Z

    return p0
.end method


# virtual methods
.method public d(F)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->p:F

    return-object p0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)V

    return-object v0
.end method

.method public synthetic dq()Lcom/bytedance/sdk/component/adexpress/d/mp;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    move-result-object v0

    return-object v0
.end method

.method public dq(F)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->ox:F

    return-object p0
.end method

.method public dq(Lg/dbw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d:Lg/dbw;

    return-object p0
.end method

.method public p(Z)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->s:Z

    return-object p0
.end method

.method public s(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->dq:Lorg/json/JSONObject;

    return-object p0
.end method
