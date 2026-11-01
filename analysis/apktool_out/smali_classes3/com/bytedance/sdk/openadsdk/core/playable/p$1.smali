.class Lcom/bytedance/sdk/openadsdk/core/playable/p$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/p;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/bytedance/sdk/openadsdk/core/playable/dq/dq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/p;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/p;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/playable/dq/dq;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/playable/dq/dq;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/p$1;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/playable/dq/dq;)I

    move-result p1

    return p1
.end method
