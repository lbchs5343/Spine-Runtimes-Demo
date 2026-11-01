.class Lcom/bytedance/msdk/core/ia/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/ia/dq;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/ViewGroup;

.field final synthetic dq:Landroid/app/Activity;

.field final synthetic iw:Lcom/bytedance/msdk/api/p/dq/mn/no;

.field final synthetic mn:Lcom/bytedance/msdk/core/ia/dq;

.field final synthetic ox:Ljava/util/List;

.field final synthetic p:Ljava/util/List;

.field final synthetic s:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/ia/dq;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ia/dq$5;->mn:Lcom/bytedance/msdk/core/ia/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/core/ia/dq$5;->dq:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bytedance/msdk/core/ia/dq$5;->d:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/bytedance/msdk/core/ia/dq$5;->ox:Ljava/util/List;

    iput-object p5, p0, Lcom/bytedance/msdk/core/ia/dq$5;->p:Ljava/util/List;

    iput-object p6, p0, Lcom/bytedance/msdk/core/ia/dq$5;->s:Ljava/util/List;

    iput-object p7, p0, Lcom/bytedance/msdk/core/ia/dq$5;->iw:Lcom/bytedance/msdk/api/p/dq/mn/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq$5;->mn:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/ia/dq;->ox(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq$5;->dq:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq$5;->d:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq$5;->ox:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/msdk/core/ia/dq$5;->p:Ljava/util/List;

    iget-object v5, p0, Lcom/bytedance/msdk/core/ia/dq$5;->s:Ljava/util/List;

    iget-object v6, p0, Lcom/bytedance/msdk/core/ia/dq$5;->iw:Lcom/bytedance/msdk/api/p/dq/mn/no;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    const/4 p1, 0x0

    return p1
.end method
