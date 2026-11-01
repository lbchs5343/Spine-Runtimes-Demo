.class Lcom/bytedance/sdk/component/adexpress/d/f$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/d/f;

.field dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

.field private ox:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/d/f;ILcom/bytedance/sdk/component/adexpress/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$dq;->d:Lcom/bytedance/sdk/component/adexpress/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/d/f$dq;->ox:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/d/f$dq;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f$dq;->ox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f$dq;->d:Lcom/bytedance/sdk/component/adexpress/d/f;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/d/f;->d(Lcom/bytedance/sdk/component/adexpress/d/f;)Lcom/bytedance/sdk/component/adexpress/s/dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f$dq;->d:Lcom/bytedance/sdk/component/adexpress/d/f;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$dq;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/d/f;->dq(Lcom/bytedance/sdk/component/adexpress/d/f;Lcom/bytedance/sdk/component/adexpress/d/o$dq;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
