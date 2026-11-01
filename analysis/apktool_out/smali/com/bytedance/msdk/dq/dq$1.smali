.class Lcom/bytedance/msdk/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/o;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/bytedance/msdk/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/dq;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/dq$1;->ox:Lcom/bytedance/msdk/dq/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/dq/dq$1;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/dq$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq$1;->ox:Lcom/bytedance/msdk/dq/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq$1;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq$1;->d:Ljava/util/Map;

    const-string v3, "\u4e3b\u7ebf\u7a0bADN\u8bf7\u6c42\u5e7f\u544a\u5d29\u6e83"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
