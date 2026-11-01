.class Lcom/bytedance/sdk/openadsdk/d/d$2;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/d/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->ox:Lcom/bytedance/sdk/openadsdk/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->ox:Lcom/bytedance/sdk/openadsdk/d/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/d/d;->dq(Lcom/bytedance/sdk/openadsdk/d/d;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "download "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->dq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrandVideoCacheManager"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->ox:Lcom/bytedance/sdk/openadsdk/d/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/d$2;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/d/d;->dq(Lcom/bytedance/sdk/openadsdk/d/d;Ljava/lang/String;)V

    return-void
.end method
