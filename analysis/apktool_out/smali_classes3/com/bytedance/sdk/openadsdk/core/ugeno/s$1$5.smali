.class Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1$5;
.super Lg/gap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;->dq()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1$5;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;

    invoke-direct {p0, p2}, Lg/gap;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;)Lg/dlv;
    .locals 2

    new-instance v0, Lg/hew;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/dlv;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
