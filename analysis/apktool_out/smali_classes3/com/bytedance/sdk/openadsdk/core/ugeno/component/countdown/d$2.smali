.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lg/ebz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->dq(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;->setBoxFinish(Landroid/graphics/Bitmap;)V

    return-void
.end method
