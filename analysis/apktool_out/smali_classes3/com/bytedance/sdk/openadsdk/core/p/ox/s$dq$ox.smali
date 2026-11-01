.class public final enum Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

.field public static final enum dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

.field private static final synthetic ox:[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    const-string v1, "KV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    const-string v3, "DB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->ox:[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

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

.method public static dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    return-object p0

    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->ox:[Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    return-object v0
.end method
