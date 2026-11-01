.class Lcom/bytedance/msdk/ox/ox/dq/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/p$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/dq/ia;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/ox/s/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:D

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/msdk/ox/s/dq/d;

.field final synthetic p:Lcom/bytedance/msdk/ox/ox/dq/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/dq/ia;IDLcom/bytedance/msdk/ox/s/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->p:Lcom/bytedance/msdk/ox/ox/dq/ia;

    iput p2, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->dq:I

    iput-wide p3, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->d:D

    iput-object p5, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;ZILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->p:Lcom/bytedance/msdk/ox/ox/dq/ia;

    iget v5, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->dq:I

    iget-wide v6, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->d:D

    iget-object v8, p0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq(Lcom/bytedance/msdk/ox/ox/dq/ia;Ljava/lang/String;ZILjava/util/List;IDLcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method
