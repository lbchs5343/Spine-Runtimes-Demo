.class final Lcom/bytedance/msdk/api/p/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/o;->dq(Landroid/app/Activity;Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:Landroid/app/Activity;

.field final synthetic ox:I

.field final synthetic p:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/o$1;->dq:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bytedance/msdk/api/p/o$1;->d:Ljava/util/List;

    iput p3, p0, Lcom/bytedance/msdk/api/p/o$1;->ox:I

    iput p4, p0, Lcom/bytedance/msdk/api/p/o$1;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/p/o$1;->dq:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/msdk/api/p/o$1;->d:Ljava/util/List;

    iget v3, p0, Lcom/bytedance/msdk/api/p/o$1;->ox:I

    iget v4, p0, Lcom/bytedance/msdk/api/p/o$1;->p:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/core/s/d/p;->dq(Landroid/app/Activity;Ljava/util/List;II)V

    return-void
.end method
