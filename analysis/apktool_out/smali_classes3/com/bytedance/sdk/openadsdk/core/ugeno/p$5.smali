.class Lcom/bytedance/sdk/openadsdk/core/ugeno/p$5;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/p;->dq([BLcom/bytedance/sdk/openadsdk/core/ugeno/p$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p$dq;

.field final synthetic dq:[B

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p;Ljava/lang/String;[BLcom/bytedance/sdk/openadsdk/core/ugeno/p$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$5;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$5;->dq:[B

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$5;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$5;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$5;->dq:[B

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$5;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p$dq;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$dq;->dq(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
