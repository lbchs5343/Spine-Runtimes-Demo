.class public Lcom/bytedance/sdk/component/no/dq/d$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/no/dq/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:I

.field private iw:Lcom/bytedance/sdk/component/no/p/ox;

.field private mn:Lorg/json/JSONObject;

.field private ox:Ljava/lang/StringBuilder;

.field private p:Lorg/json/JSONObject;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq:I

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/no/dq/d$dq;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->ox:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/no/dq/d$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq:I

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->mn:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lcom/bytedance/sdk/component/no/p/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->iw:Lcom/bytedance/sdk/component/no/p/ox;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->p:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/no/dq/d$dq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->s:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/component/no/dq/d$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/no/dq/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->mn:Lorg/json/JSONObject;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/no/p/ox;)Lcom/bytedance/sdk/component/no/dq/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->iw:Lcom/bytedance/sdk/component/no/p/ox;

    return-object p0
.end method

.method public dq(Ljava/util/Map;)Lcom/bytedance/sdk/component/no/dq/d$dq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/component/no/dq/d$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->s:Ljava/util/Map;

    return-object p0
.end method

.method public dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/no/dq/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/d$dq;->p:Lorg/json/JSONObject;

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/no/dq/d;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/no/dq/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/no/dq/d;-><init>(Lcom/bytedance/sdk/component/no/dq/d$dq;Lcom/bytedance/sdk/component/no/dq/d$1;)V

    return-object v0
.end method
