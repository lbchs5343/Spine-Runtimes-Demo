.class public final enum Lcom/bytedance/sdk/openadsdk/core/cd/dq;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/cd/dq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/sdk/openadsdk/core/cd/dq;

.field public static final enum dq:Lcom/bytedance/sdk/openadsdk/core/cd/dq;

.field private static final synthetic mn:[Lcom/bytedance/sdk/openadsdk/core/cd/dq;

.field public static final enum ox:Lcom/bytedance/sdk/openadsdk/core/cd/dq;

.field public static final enum p:Lcom/bytedance/sdk/openadsdk/core/cd/dq;


# instance fields
.field private iw:J

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    const-string v1, "USE_KWS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/cd/dq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    const-string v3, "USE_ALOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/sdk/openadsdk/core/cd/dq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->d:Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    const-string v5, "USE_PITAYA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/sdk/openadsdk/core/cd/dq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    const-string v7, "USE_OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/sdk/openadsdk/core/cd/dq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->p:Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->mn:[Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-ltz p3, :cond_0

    const/16 p1, 0x3f

    if-gt p3, p1, :cond_0

    const-wide/16 p1, 0x1

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->s:J

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->iw:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bit argument illegal exception,range [0,63]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/cd/dq;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/cd/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->mn:[Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/cd/dq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/cd/dq;

    return-object v0
.end method


# virtual methods
.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/cd/dq;->s:J

    return-wide v0
.end method
