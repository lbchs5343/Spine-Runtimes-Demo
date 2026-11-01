.class Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;->dq(Lcom/bytedance/sdk/component/adexpress/d/mp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/d/mp;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/d/mp;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;Lcom/bytedance/sdk/component/adexpress/d/mp;)V

    return-void
.end method
