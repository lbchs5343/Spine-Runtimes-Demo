.class final enum Lcom/bytedance/msdk/core/q/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/msdk/core/q/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/msdk/core/q/p;

.field public static final enum dq:Lcom/bytedance/msdk/core/q/p;

.field public static final enum ox:Lcom/bytedance/msdk/core/q/p;

.field private static final synthetic p:[Lcom/bytedance/msdk/core/q/p;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/msdk/core/q/p;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/core/q/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/msdk/core/q/p;->dq:Lcom/bytedance/msdk/core/q/p;

    new-instance v1, Lcom/bytedance/msdk/core/q/p;

    const-string v3, "DENIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/msdk/core/q/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/msdk/core/q/p;->d:Lcom/bytedance/msdk/core/q/p;

    new-instance v3, Lcom/bytedance/msdk/core/q/p;

    const-string v5, "NOT_FOUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/msdk/core/q/p;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/msdk/core/q/p;->ox:Lcom/bytedance/msdk/core/q/p;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/msdk/core/q/p;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/msdk/core/q/p;->p:[Lcom/bytedance/msdk/core/q/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/msdk/core/q/p;
    .locals 1

    const-class v0, Lcom/bytedance/msdk/core/q/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/core/q/p;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/msdk/core/q/p;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/core/q/p;->p:[Lcom/bytedance/msdk/core/q/p;

    invoke-virtual {v0}, [Lcom/bytedance/msdk/core/q/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/msdk/core/q/p;

    return-object v0
.end method
