.class Lcom/bytedance/msdk/core/ia/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/ia/dq;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:Landroid/view/ViewGroup;

.field final synthetic iw:Landroid/view/View;

.field final synthetic mn:Lcom/bytedance/msdk/core/ia/dq;

.field final synthetic ox:Ljava/util/List;

.field final synthetic p:Ljava/util/List;

.field final synthetic s:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/ia/dq;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ia/dq$4;->mn:Lcom/bytedance/msdk/core/ia/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/core/ia/dq$4;->dq:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/msdk/core/ia/dq$4;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/msdk/core/ia/dq$4;->ox:Ljava/util/List;

    iput-object p5, p0, Lcom/bytedance/msdk/core/ia/dq$4;->p:Ljava/util/List;

    iput-object p6, p0, Lcom/bytedance/msdk/core/ia/dq$4;->s:Ljava/util/List;

    iput-object p7, p0, Lcom/bytedance/msdk/core/ia/dq$4;->iw:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq$4;->mn:Lcom/bytedance/msdk/core/ia/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ia/dq;->vf()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pangle"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq$4;->mn:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/ia/dq;->ox(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq$4;->dq:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq$4;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq$4;->ox:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/msdk/core/ia/dq$4;->p:Ljava/util/List;

    iget-object v5, p0, Lcom/bytedance/msdk/core/ia/dq$4;->s:Ljava/util/List;

    iget-object v6, p0, Lcom/bytedance/msdk/core/ia/dq$4;->iw:Landroid/view/View;

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq$4;->mn:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/ia/dq;->ox(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq$4;->dq:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq$4;->ox:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/msdk/core/ia/dq$4;->p:Ljava/util/List;

    iget-object v5, p0, Lcom/bytedance/msdk/core/ia/dq$4;->s:Ljava/util/List;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bytedance/msdk/core/ia/dq$4;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
