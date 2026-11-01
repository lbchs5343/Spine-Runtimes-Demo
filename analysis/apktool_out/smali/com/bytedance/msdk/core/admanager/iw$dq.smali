.class Lcom/bytedance/msdk/core/admanager/iw$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:I

.field dq:Ljava/lang/String;

.field ox:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/iw$dq;->dq:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/msdk/core/admanager/iw$dq;->d:I

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/iw$dq;->ox:Ljava/lang/String;

    return-void
.end method
