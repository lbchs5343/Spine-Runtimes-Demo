.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ia;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamic_backup_render"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
