.class Lcom/bytedance/sdk/component/ia/d/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ia/d/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/sdk/component/ia/dq/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ia/d/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d$1;->dq:Lcom/bytedance/sdk/component/ia/d/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/component/ia/dq/d;

    check-cast p2, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/d$1;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/d;)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/d;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d$1;->dq:Lcom/bytedance/sdk/component/ia/d/d/d;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/d/d/d;Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/d;)I

    move-result p1

    return p1
.end method
