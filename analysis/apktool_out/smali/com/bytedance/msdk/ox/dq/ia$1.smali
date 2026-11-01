.class Lcom/bytedance/msdk/ox/dq/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/ox/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/dq/ia;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:F

.field final synthetic dq:Z

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/util/Map;

.field final synthetic s:Lcom/bytedance/msdk/ox/dq/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/ia;ZFLjava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->s:Lcom/bytedance/msdk/ox/dq/ia;

    iput-boolean p2, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->dq:Z

    iput p3, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->d:F

    iput-object p4, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->p:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->d:F

    return v0
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->dq:Z

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->ox:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/ia$1;->p:Ljava/util/Map;

    return-object v0
.end method
