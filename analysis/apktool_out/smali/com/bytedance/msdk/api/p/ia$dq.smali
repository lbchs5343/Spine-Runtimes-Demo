.class public Lcom/bytedance/msdk/api/p/ia$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/p/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Z

.field private ox:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia$dq;->dq:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/msdk/api/p/ia$dq;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia$dq;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia$dq;->p:Z

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/api/p/ia$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/ia$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/api/p/ia$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/api/p/ia$dq;->dq:Z

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/api/p/ia$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/api/p/ia$dq;->ox:Z

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/api/p/ia$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/api/p/ia$dq;->p:Z

    return p0
.end method


# virtual methods
.method public d(Z)Lcom/bytedance/msdk/api/p/ia$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/p/ia$dq;->ox:Z

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/ia$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/ia$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/msdk/api/p/ia$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/p/ia$dq;->dq:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/msdk/api/p/ia;
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/api/p/ia;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/p/ia;-><init>(Lcom/bytedance/msdk/api/p/ia$dq;Lcom/bytedance/msdk/api/p/ia$1;)V

    return-object v0
.end method

.method public ox(Z)Lcom/bytedance/msdk/api/p/ia$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/p/ia$dq;->p:Z

    return-object p0
.end method
