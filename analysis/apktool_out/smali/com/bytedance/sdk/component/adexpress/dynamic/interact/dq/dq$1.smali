.class Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/ia;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq;

.field final synthetic dq:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq$1;->dq:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq$1;->dq:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/dq/dq;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    return-void
.end method
