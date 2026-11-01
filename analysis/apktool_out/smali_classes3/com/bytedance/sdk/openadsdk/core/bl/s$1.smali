.class Lcom/bytedance/sdk/openadsdk/core/bl/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bl/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;J)V

    return-void
.end method
