.class public Lcom/bytedance/msdk/api/d/d;
.super Lcom/bytedance/msdk/api/dq;


# instance fields
.field private iw:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/bytedance/msdk/api/d/d;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/msdk/api/d/d;->iw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/d/d;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/d/d;->s:Ljava/lang/String;

    return-object v0
.end method
