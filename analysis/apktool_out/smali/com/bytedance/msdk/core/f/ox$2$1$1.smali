.class Lcom/bytedance/msdk/core/f/ox$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/f/ox$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/f/ox$2$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/ox$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/ox$2$1$1;->dq:Lcom/bytedance/msdk/core/f/ox$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "TMe"

    const-string v0, "\u521d\u59cb\u5316\u66f4\u65b0pangle\u914d\u7f6e\u6210\u529f"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
