.class final Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic iw:Z

.field final synthetic mn:I

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->s:Landroid/graphics/Bitmap;

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->iw:Z

    iput p8, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->mn:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->ox:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->s:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->iw:Z

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ce$5;->mn:I

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    return-void
.end method
