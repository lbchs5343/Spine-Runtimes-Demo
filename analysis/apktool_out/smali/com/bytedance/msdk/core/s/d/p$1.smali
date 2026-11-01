.class Lcom/bytedance/msdk/core/s/d/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/s/d/p;->dq(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/msdk/core/s/d/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/s/d/p;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$1;->p:Lcom/bytedance/msdk/core/s/d/p;

    iput-object p2, p0, Lcom/bytedance/msdk/core/s/d/p$1;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/core/s/d/p$1;->d:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/msdk/core/s/d/p$1;->ox:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/p$1;->p:Lcom/bytedance/msdk/core/s/d/p;

    iget-object v1, p0, Lcom/bytedance/msdk/core/s/d/p$1;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/msdk/core/s/d/p$1;->d:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/msdk/core/s/d/p$1;->ox:I

    const/4 v5, 0x0

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/msdk/core/s/d/p;->dq(Lcom/bytedance/msdk/core/s/d/p;Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/msdk/core/s/d/p$ox;)V

    return-void
.end method
