.class Lcom/bytedance/sdk/component/adexpress/dq/d/iw$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dq/d/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/bytedance/sdk/component/adexpress/dq/ox/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/dq/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dq/d/iw;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/dq/d/iw;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dq/ox/d;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/sdk/component/adexpress/dq/ox/d;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dq/d/iw$1;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dq/ox/d;)I

    move-result p1

    return p1
.end method
