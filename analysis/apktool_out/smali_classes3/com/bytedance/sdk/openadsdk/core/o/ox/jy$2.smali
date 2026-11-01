.class final Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/d/iw;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Landroid/view/ViewGroup;

.field final synthetic ia:Z

.field final synthetic iw:Ljava/lang/String;

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/d/iw;

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IZLcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/iw;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->dq:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->d:I

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->ox:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->s:Landroid/content/Context;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->iw:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->mn:Lcom/bytedance/sdk/openadsdk/core/d/iw;

    iput-boolean p8, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->ia:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->d:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->dq:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->ox:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->dq:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->s:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->iw:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->mn:Lcom/bytedance/sdk/openadsdk/core/d/iw;

    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->ia:Z

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/d/iw;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->mn:Lcom/bytedance/sdk/openadsdk/core/d/iw;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/d/iw;->dq()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->iw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->mn:Lcom/bytedance/sdk/openadsdk/core/d/iw;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/d/iw;->d()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy$2;->iw:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    return-void
.end method
