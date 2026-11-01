.class public Lcom/bytedance/msdk/api/p/ig$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/p/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field private dq:Z

.field private final ia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iw:[Ljava/lang/String;

.field private kk:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private ox:Z

.field private p:Z

.field private s:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->dq:Z

    iput v0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->d:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->p:Z

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x4

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->s:[I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->iw:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->mn:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->ia:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->kk:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/api/p/ig$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->d:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/api/p/ig$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->dq:Z

    return p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/api/p/ig$dq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->ia:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/api/p/ig$dq;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->iw:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/api/p/ig$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->kk:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/api/p/ig$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/api/p/ig$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->ox:Z

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/api/p/ig$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->p:Z

    return p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/api/p/ig$dq;)[I
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->s:[I

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/ig$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->kk:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/bytedance/msdk/api/p/ig$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->ox:Z

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/msdk/api/p/ig$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->d:I

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/ig$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/util/Map;)Lcom/bytedance/msdk/api/p/ig$dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/msdk/api/p/ig$dq;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/ig$dq;->ia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/msdk/api/p/ig$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->dq:Z

    return-object p0
.end method

.method public varargs dq([I)Lcom/bytedance/msdk/api/p/ig$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/ig$dq;->s:[I

    return-object p0
.end method

.method public dq()Lcom/bytedance/msdk/api/p/ig;
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/api/p/ig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/p/ig;-><init>(Lcom/bytedance/msdk/api/p/ig$dq;Lcom/bytedance/msdk/api/p/ig$1;)V

    return-object v0
.end method
