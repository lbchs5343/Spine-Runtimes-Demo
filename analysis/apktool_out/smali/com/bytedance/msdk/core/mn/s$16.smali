.class Lcom/bytedance/msdk/core/mn/s$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->dq(IILcom/bytedance/msdk/core/no/no;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

.field final synthetic ia:Lcom/bytedance/msdk/core/mn/s;

.field final synthetic iw:J

.field final synthetic mn:I

.field final synthetic ox:Lcom/bytedance/msdk/core/no/no;

.field final synthetic p:I

.field final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;Lcom/bytedance/msdk/api/p/dq/d/d/d;Landroid/content/Context;Lcom/bytedance/msdk/core/no/no;IIJI)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$16;->ia:Lcom/bytedance/msdk/core/mn/s;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/s$16;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/s$16;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/msdk/core/mn/s$16;->ox:Lcom/bytedance/msdk/core/no/no;

    iput p5, p0, Lcom/bytedance/msdk/core/mn/s$16;->p:I

    iput p6, p0, Lcom/bytedance/msdk/core/mn/s$16;->s:I

    iput-wide p7, p0, Lcom/bytedance/msdk/core/mn/s$16;->iw:J

    iput p9, p0, Lcom/bytedance/msdk/core/mn/s$16;->mn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$16;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$16;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s$16;->ia:Lcom/bytedance/msdk/core/mn/s;

    iget-object v8, v2, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$16;->ox:Lcom/bytedance/msdk/core/no/no;

    move-object v5, v3

    iget v3, p0, Lcom/bytedance/msdk/core/mn/s$16;->p:I

    iget v4, p0, Lcom/bytedance/msdk/core/mn/s$16;->s:I

    iget-wide v6, p0, Lcom/bytedance/msdk/core/mn/s$16;->iw:J

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/core/mn/s;IILcom/bytedance/msdk/core/no/no;J)Ljava/util/Map;

    move-result-object v4

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/s$16;->ia:Lcom/bytedance/msdk/core/mn/s;

    move-object v3, v5

    iget-object v5, v7, Lcom/bytedance/msdk/core/mn/ox;->e:Lcom/bytedance/msdk/core/no/o;

    iget v6, p0, Lcom/bytedance/msdk/core/mn/s$16;->mn:I

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;Lcom/bytedance/msdk/core/no/o;ILcom/bytedance/msdk/dq/dq$dq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$16;->ia:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v1, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$16;->ox:Lcom/bytedance/msdk/core/no/no;

    new-instance v4, Lcom/bytedance/msdk/api/dq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u5e7f\u544a\u5185\u90e8\u9519\u8bef "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0xbf76

    invoke-direct {v4, v6, v5}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    const-string v5, ""

    invoke-static {v5, v2, v1, v3, v4}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
