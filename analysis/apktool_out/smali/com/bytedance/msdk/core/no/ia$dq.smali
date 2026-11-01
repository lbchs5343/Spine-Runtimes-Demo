.class public Lcom/bytedance/msdk/core/no/ia$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/no/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/ia$dq;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/no/ia$dq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/no/ia$dq;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/no/ia$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/no/ia$dq;->dq:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia$dq;->dq:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia$dq;->d:Ljava/util/List;

    return-void
.end method
