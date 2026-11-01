.class Lcom/bytedance/sdk/openadsdk/live/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/android/live/base/api/LocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/dq/dq;->getTTLocation()Lcom/bytedance/android/live/base/api/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/live/dq/dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/LocationProvider;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/live/dq/dq;Lcom/bytedance/sdk/openadsdk/LocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/dq/dq$2;->d:Lcom/bytedance/sdk/openadsdk/live/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/LocationProvider;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/LocationProvider;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/LocationProvider;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/LocationProvider;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method
