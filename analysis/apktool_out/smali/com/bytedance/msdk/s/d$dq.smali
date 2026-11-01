.class public Lcom/bytedance/msdk/s/d$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Lorg/json/JSONObject;

.field private dq:Lcom/bytedance/msdk/s/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/s/d$dq;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p2, p0, Lcom/bytedance/msdk/s/d$dq;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/s/d$dq;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public dq()Lcom/bytedance/msdk/s/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/s/d$dq;->dq:Lcom/bytedance/msdk/s/p;

    return-object v0
.end method
