.class Lcom/bytedance/sdk/component/dq/i$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/dq/i;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/component/dq/no$dq;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/dq/i;

.field final synthetic dq:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/dq/i;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/i$1;->d:Lcom/bytedance/sdk/component/dq/i;

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/i$1;->dq:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
