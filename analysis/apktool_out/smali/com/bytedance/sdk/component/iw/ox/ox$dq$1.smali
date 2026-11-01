.class Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq(Lcom/bytedance/sdk/component/iw/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic dq:Landroid/widget/ImageView;

.field final synthetic ox:Lcom/bytedance/sdk/component/iw/ox/ox$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/ox/ox$dq;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;->ox:Lcom/bytedance/sdk/component/iw/ox/ox$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;->dq:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;->dq:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
