.class Lcom/bytedance/sdk/component/adexpress/s/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/s/s;->dq(Lcom/bytedance/sdk/component/mp/dq;Lcom/bytedance/sdk/component/dq/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/s/p;

.field final synthetic dq:Lcom/bytedance/sdk/component/mp/dq;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Lcom/bytedance/sdk/component/adexpress/s/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/s/s;Lcom/bytedance/sdk/component/mp/dq;Lcom/bytedance/sdk/component/adexpress/s/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/s$1;->p:Lcom/bytedance/sdk/component/adexpress/s/s;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/s/s$1;->dq:Lcom/bytedance/sdk/component/mp/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/s/s$1;->d:Lcom/bytedance/sdk/component/adexpress/s/p;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/s/s$1;->ox:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/s$1;->dq:Lcom/bytedance/sdk/component/mp/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/s$1;->d:Lcom/bytedance/sdk/component/adexpress/s/p;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/s/s$1;->ox:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mp/dq;->dq(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
