.class Lcom/bytedance/msdk/core/mn/s$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->ia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:[Ljava/lang/StackTraceElement;

.field final synthetic dq:Z

.field final synthetic ox:Lcom/bytedance/msdk/core/mn/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;Z[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput-boolean p2, p0, Lcom/bytedance/msdk/core/mn/s$15;->dq:Z

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/s$15;->d:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/msdk/core/mn/s;->cv:J

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TTMediationSDK"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v4, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v5, "MSDK\u672a\u8fdb\u884c\u521d\u59cb\u5316\uff01\uff01\uff01"

    invoke-static {v4, v5, v3, v0}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v3, Lcom/bytedance/msdk/api/d/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/mn/s;->xz:Z

    if-eqz v0, :cond_1

    const-string v0, "\u8c03\u7528\u8fc7\u9500\u6bc1\u65b9\u6cd5_destroy()\uff01\uff01\uff01"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    const v1, 0xa054

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v3, Lcom/bytedance/msdk/api/d/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->l:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Context\u4e3anull\uff01\uff01\uff01"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    const v1, 0xa02d

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v3, Lcom/bytedance/msdk/api/d/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const v5, 0xcd15a

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v4, "AdSlot can\'t be null\uff01\uff01"

    invoke-static {v1, v4, v3, v0}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v1, Lcom/bytedance/msdk/api/d/dq;

    invoke-static {v5}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_3
    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v4, "\u5e7f\u544a\u4f4did\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v4, v3, v0}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v1, Lcom/bytedance/msdk/api/d/dq;

    invoke-direct {v1, v5, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v4, "msdk threadHandler can\'t be null\uff01\uff01"

    invoke-static {v1, v4, v3, v0}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    const v1, 0xa053

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v3, Lcom/bytedance/msdk/api/d/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_5
    iget-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/bytedance/msdk/core/mn/s;->ob:Lcom/bytedance/msdk/core/f/ox;

    if-eqz v4, :cond_6

    iget-object v5, v0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->gh()I

    move-result v6

    const/16 v7, 0x64

    invoke-virtual {v4, v5, v6, v7}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->v()V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->vf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v4, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/bytedance/msdk/ox/mn/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v4, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "csj code id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mapping mediation rit "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  has request"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    const v1, 0xcd16c

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v3, Lcom/bytedance/msdk/api/d/dq;

    const-string v4, "\u672c\u6b21\u8bf7\u6c42\u672a\u5305\u542b\u805a\u5408\u5e7f\u544a\u4f4d\u5934\u5c42\u8bbe\u4ef7\u6700\u9ad8\u7684\u4ee3\u7801\u4f4d\uff0c\u5bfc\u81f4\u805a\u5408\u8bf7\u6c42\u5931\u8d25\uff1b\u8bf7\u8c03\u6574\u8bf7\u6c42\uff0c\u786e\u4fdd\u5305\u542b\u805a\u5408\u5e7f\u544a\u4f4d\u5934\u5c42\u8bbe\u4ef7\u6700\u9ad8\u7684\u4ee3\u7801\u4f4d\u3002"

    invoke-direct {v3, v1, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v4, v0}, Lcom/bytedance/msdk/api/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->kk()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput-boolean v1, v0, Lcom/bytedance/msdk/core/mn/s;->by:Z

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->ws()V

    invoke-static {}, Lcom/bytedance/msdk/core/mn/dq;->dq()Lcom/bytedance/msdk/core/mn/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v4, "\u8bf7\u6c42\u8fc7\u4e8e\u9891\u7e41\uff0c\u89e6\u53d1\u4e86\u7194\u65ad\u673a\u5236"

    invoke-static {v1, v4, v3, v0}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    const v1, 0xcd16b

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v3, Lcom/bytedance/msdk/api/d/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->l_()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    const-string v5, "settings config.......\u6ce8\u610f\uff0cAdUnitId = "

    const/4 v6, 0x3

    const/4 v7, 0x2

    const v8, 0x9c6d

    if-nez v4, :cond_c

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    if-ne v0, v6, :cond_9

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->ji()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->ha:Lcom/bytedance/msdk/api/p/no;

    if-eqz v0, :cond_9

    const-string v0, "\u6267\u884c\u5f00\u542f\u5f00\u5c4f\u515c\u5e95..............."

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->bu()V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/s;->ob:Lcom/bytedance/msdk/core/f/ox;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u7684\u914d\u7f6e\u4fe1\u606f\u4e3a null \uff01\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, v7}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;I)V

    goto :goto_1

    :cond_b
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v4, "settings config.......\u6ca1\u6709settings config\u914d\u7f6e\u4fe1\u606f,AdUnitId = "

    invoke-static {v0, v2, v4}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v2, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;I)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/s;->vw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/s;->dq(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->s()V

    return-void

    :cond_c
    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v9, v9, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v9}, Lcom/bytedance/msdk/core/no/d;->u()Ljava/util/List;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/d;->dq(Ljava/util/List;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v9, v4, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/mn/ox;->gh()I

    move-result v4

    invoke-virtual {v0, v9, v4}, Lcom/bytedance/msdk/core/f/ox;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->u()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v8, v8, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/core/kk/mp;->ia(Ljava/lang/String;)Z

    move-result v0

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-string v4, "check_freqctl_time"

    invoke-virtual {v6, v4, v8, v9}, Lcom/bytedance/msdk/core/mn/ox;->dq(Ljava/lang/String;J)V

    const-string v4, "TMe"

    if-nez v0, :cond_e

    const-string v0, "\u5e7f\u544a\u4f4d \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    invoke-static {v4, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v3, v3, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->o(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v3, v3, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/core/kk/mp;->iw(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    new-instance v0, Lcom/bytedance/msdk/api/d/d;

    const v3, 0xcd169

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/bytedance/msdk/api/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget v3, v0, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v9, v9, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/core/kk/mp;->ox(Ljava/lang/String;)Z

    move-result v0

    iget-object v8, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-string v5, "check_pacing_time"

    invoke-virtual {v8, v5, v9, v10}, Lcom/bytedance/msdk/core/mn/ox;->dq(Ljava/lang/String;J)V

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->i_()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\u5e7f\u544a\u4f4d \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    invoke-static {v4, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v3, v3, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->s(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Lcom/bytedance/msdk/api/d/ox;

    const v3, 0xcd16a

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v7, v7, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/bytedance/msdk/core/kk/mp;->dq(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/bytedance/msdk/api/d/ox;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget v3, v1, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    :cond_f
    return-void

    :cond_10
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v6, v5, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Lcom/bytedance/msdk/core/s/d/p;->ox(Ljava/lang/String;I)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v6, v6, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/mn/ox;->i_()Z

    move-result v6

    if-nez v6, :cond_12

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->vw()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput-boolean v1, v0, Lcom/bytedance/msdk/core/mn/s;->dc:Z

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->ha()V

    return-void

    :cond_12
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v8, v6, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v6, v6, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0, v8, v6}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;)V

    :cond_13
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v6, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v6, v0}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput-object v0, v6, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "prime rit type "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v6, v6, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v6}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v0

    if-eq v0, v7, :cond_14

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_14

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_15

    :cond_14
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v6, v4, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v4, v4, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0, v6, v4}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;)V

    :cond_15
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    const v1, 0xc5c65

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v2, Lcom/bytedance/msdk/api/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/mn/s;->p(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->ce()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/fw/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/mn/ox;->le()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v6, v4, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v6, v0}, Lcom/bytedance/msdk/core/fw/dq;->dq(Lcom/bytedance/msdk/core/no/d;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v4, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->k()I

    move-result v4

    goto :goto_3

    :cond_18
    const/4 v4, 0x0

    :goto_3
    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/mn/s;->v()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v8, v8, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u6d4b\u8bd5\u5de5\u5177\u52a0\u8f7d\u5e7f\u544a........totalWaterFallCount: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  ,rit_id:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v4, v4, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,slot_id:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v3, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-nez v3, :cond_19

    new-instance v1, Lcom/bytedance/msdk/api/d/dq;

    const v3, 0x13c74

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v3, v3, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/d;->u()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/d;->dq(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/api/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->kk()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-boolean v2, p0, Lcom/bytedance/msdk/core/mn/s$15;->dq:Z

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$15;->d:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/core/mn/ox;->dq(Z[Ljava/lang/StackTraceElement;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/core/mn/ia;->dq(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->k()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/core/mn/ia;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v2, :cond_1a

    iget-wide v3, v0, Lcom/bytedance/msdk/core/mn/s;->nh:J

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1a
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->ig()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput v5, v0, Lcom/bytedance/msdk/core/mn/ox;->jy:I

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/ia;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/core/mn/s;)V

    goto :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->cv()V

    :goto_4
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/d;->d(I)V

    return-void

    :cond_1c
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \u6ca1\u6709\u5bf9\u5e94\u7684waterfall\u914d\u7f6e\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, v6}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/core/mn/s;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$15;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v2, v0, Lcom/bytedance/msdk/core/mn/s;->vw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/s;->dq(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
