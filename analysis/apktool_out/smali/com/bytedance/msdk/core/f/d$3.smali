.class Lcom/bytedance/msdk/core/f/d$3;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/f/d;->dq(ZLcom/bytedance/msdk/api/p/s;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:[I

.field final synthetic dq:[I

.field final synthetic ia:Lorg/json/JSONObject;

.field final synthetic iw:J

.field final synthetic kk:Lcom/bytedance/msdk/core/f/d;

.field final synthetic mn:Z

.field final synthetic ox:Lcom/bytedance/msdk/api/p/s;

.field final synthetic p:I

.field final synthetic s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/d;[I[ILcom/bytedance/msdk/api/p/s;IZJZLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iput-object p2, p0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    iput-object p3, p0, Lcom/bytedance/msdk/core/f/d$3;->d:[I

    iput-object p4, p0, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iput p5, p0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    iput-boolean p6, p0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    iput-wide p7, p0, Lcom/bytedance/msdk/core/f/d$3;->iw:J

    iput-boolean p9, p0, Lcom/bytedance/msdk/core/f/d$3;->mn:Z

    iput-object p10, p0, Lcom/bytedance/msdk/core/f/d$3;->ia:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    new-instance p1, Lcom/bytedance/msdk/core/f/d$3$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/core/f/d$3$1;-><init>(Lcom/bytedance/msdk/core/f/d$3;Lcom/bytedance/sdk/component/kk/d;)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 0

    new-instance p1, Lcom/bytedance/msdk/core/f/d$3$2;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/core/f/d$3$2;-><init>(Lcom/bytedance/msdk/core/f/d$3;Ljava/io/IOException;)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method
