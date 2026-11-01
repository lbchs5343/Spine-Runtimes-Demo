.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;->dq(ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Z

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:I

.field final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->iw:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->dq:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->d:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->ox:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->p:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->iw:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;)Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->dq:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->d:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->ox:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->p:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$7;->s:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;->dq(ZILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
