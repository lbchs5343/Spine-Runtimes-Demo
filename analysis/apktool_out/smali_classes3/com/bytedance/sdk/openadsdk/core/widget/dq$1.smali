.class Lcom/bytedance/sdk/openadsdk/core/widget/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/dq;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/dq;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
