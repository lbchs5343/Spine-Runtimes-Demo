.class Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1$8;
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1$8;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;

    invoke-direct {p0, p2}, Lg/gap;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;)Lg/dlv;
    .locals 1

    new-instance v0, Lg/eid;

    invoke-direct {v0, p1}, Lg/eyh;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lg/eid;->aa:Ljava/util/HashMap;

    return-object v0
.end method
