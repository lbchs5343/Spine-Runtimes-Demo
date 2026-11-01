.class public final enum Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

.field public static final enum dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

.field public static final enum ox:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

.field private static final synthetic p:[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    const-string v1, "Random"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    const-string v3, "TimeLast"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    const-string v5, "CustomPriority"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->ox:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->p:[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

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

.method public static dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object p0

    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->ox:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object p0

    :cond_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->p:[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object v0
.end method
