.class Lcom/bytedance/msdk/core/p/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/p/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field dq:Ljava/lang/String;

.field ox:D

.field p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/core/p/dq$dq;->dq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/msdk/core/p/dq$dq;->ox:D

    iput-object p5, p0, Lcom/bytedance/msdk/core/p/dq$dq;->p:Ljava/util/Map;

    iput-object p1, p0, Lcom/bytedance/msdk/core/p/dq$dq;->d:Ljava/lang/String;

    return-void
.end method
