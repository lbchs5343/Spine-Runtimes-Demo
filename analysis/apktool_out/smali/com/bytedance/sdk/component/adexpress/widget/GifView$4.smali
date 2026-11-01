.class Lcom/bytedance/sdk/component/adexpress/widget/GifView$4;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/widget/GifView;->dq([BLcom/bytedance/sdk/component/adexpress/widget/GifView$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:[B

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/widget/GifView$dq;

.field final synthetic ox:Lcom/bytedance/sdk/component/adexpress/widget/GifView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/GifView;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/widget/GifView$dq;[B)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView$4;->ox:Lcom/bytedance/sdk/component/adexpress/widget/GifView;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView$4;->dq:Lcom/bytedance/sdk/component/adexpress/widget/GifView$dq;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView$4;->d:[B

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView$4;->dq:Lcom/bytedance/sdk/component/adexpress/widget/GifView$dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView$4;->ox:Lcom/bytedance/sdk/component/adexpress/widget/GifView;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView$4;->d:[B

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->dq(Lcom/bytedance/sdk/component/adexpress/widget/GifView;[B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->dq(Lcom/bytedance/sdk/component/adexpress/widget/GifView;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/GifView$dq;->dq(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
