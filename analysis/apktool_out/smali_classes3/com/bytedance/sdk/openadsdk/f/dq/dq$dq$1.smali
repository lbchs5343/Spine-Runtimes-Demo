.class Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq$1;
.super Lcom/bytedance/sdk/openadsdk/CSJAdError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$CSJSplashAdListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq;

.field final synthetic dq:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq;Landroid/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq$1;->d:Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq$1;->dq:Landroid/util/Pair;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CSJAdError;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq$1;->dq:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/dq/dq$dq$1;->dq:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
