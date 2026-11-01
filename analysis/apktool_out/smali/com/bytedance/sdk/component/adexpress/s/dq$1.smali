.class Lcom/bytedance/sdk/component/adexpress/s/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:F

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/d/q;

.field final synthetic ox:F

.field final synthetic p:Lcom/bytedance/sdk/component/adexpress/s/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/s/dq;Lcom/bytedance/sdk/component/adexpress/d/q;FF)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->p:Lcom/bytedance/sdk/component/adexpress/s/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/q;

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->d:F

    iput p4, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->ox:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->p:Lcom/bytedance/sdk/component/adexpress/s/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/q;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->d:F

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/s/dq$1;->ox:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/q;FF)V

    return-void
.end method
