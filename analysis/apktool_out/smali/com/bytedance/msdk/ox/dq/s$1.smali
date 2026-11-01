.class Lcom/bytedance/msdk/ox/dq/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/ox/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/dq/s;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:F

.field final synthetic dq:Z

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Lcom/bytedance/msdk/ox/dq/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/s;ZFLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/dq/s$1;->p:Lcom/bytedance/msdk/ox/dq/s;

    iput-boolean p2, p0, Lcom/bytedance/msdk/ox/dq/s$1;->dq:Z

    iput p3, p0, Lcom/bytedance/msdk/ox/dq/s$1;->d:F

    iput-object p4, p0, Lcom/bytedance/msdk/ox/dq/s$1;->ox:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/ox/dq/s$1;->d:F

    return v0
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/dq/s$1;->dq:Z

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/s$1;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
