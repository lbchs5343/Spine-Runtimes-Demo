.class public Lcom/bytedance/msdk/api/p/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/p/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/api/p/p$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/p$dq;->dq:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dq()Lcom/bytedance/msdk/api/p/p;
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/api/p/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/p/p;-><init>(Lcom/bytedance/msdk/api/p/p$dq;Lcom/bytedance/msdk/api/p/p$1;)V

    return-object v0
.end method
