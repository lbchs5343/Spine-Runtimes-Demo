.class public Lcom/bytedance/msdk/api/p/mp;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Lcom/bytedance/msdk/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/mp;->dq:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/api/p/mp;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/mp;->d:Ljava/util/List;

    return-object v0
.end method

.method public dq()Lcom/bytedance/msdk/api/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/mp;->dq:Lcom/bytedance/msdk/api/dq/d;

    return-object v0
.end method
