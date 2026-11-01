.class public Lcom/bytedance/msdk/api/p/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/p/p$dq;
    }
.end annotation


# instance fields
.field private dq:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/msdk/api/p/p$dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/p$dq;->dq(Lcom/bytedance/msdk/api/p/p$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/p;->dq:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/api/p/p$dq;Lcom/bytedance/msdk/api/p/p$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/p/p;-><init>(Lcom/bytedance/msdk/api/p/p$dq;)V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/p;->dq:Ljava/lang/String;

    return-object v0
.end method
