.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$4;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$4;->dq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$4;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$4;->dq:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V

    return-void
.end method
