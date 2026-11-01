.class Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lg/edq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;->ox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$2;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)V
    .locals 0

    check-cast p1, Lg/cmr;

    iget-object p1, p1, Lg/cmr;->a:Lg/dlv;

    const-string p2, "count_down"

    invoke-virtual {p1, p2}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    instance-of p2, p1, Lg/efb;

    if-eqz p2, :cond_0

    check-cast p1, Lg/efb;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$2;->dq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/efb;->mn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
