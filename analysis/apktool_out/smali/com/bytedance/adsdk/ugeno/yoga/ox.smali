.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/ox;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/ox;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/adsdk/ugeno/yoga/ox;

.field public static final enum dq:Lcom/bytedance/adsdk/ugeno/yoga/ox;

.field public static final enum ox:Lcom/bytedance/adsdk/ugeno/yoga/ox;

.field private static final synthetic s:[Lcom/bytedance/adsdk/ugeno/yoga/ox;


# instance fields
.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/ox;

    const-string v1, "INHERIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/ox;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/ox;->dq:Lcom/bytedance/adsdk/ugeno/yoga/ox;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/ox;

    const-string v3, "LTR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/adsdk/ugeno/yoga/ox;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/yoga/ox;->d:Lcom/bytedance/adsdk/ugeno/yoga/ox;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/yoga/ox;

    const-string v5, "RTL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/adsdk/ugeno/yoga/ox;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/yoga/ox;->ox:Lcom/bytedance/adsdk/ugeno/yoga/ox;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/adsdk/ugeno/yoga/ox;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/adsdk/ugeno/yoga/ox;->s:[Lcom/bytedance/adsdk/ugeno/yoga/ox;

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

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/ox;->p:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/ox;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/ox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/ox;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/ox;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/ox;->s:[Lcom/bytedance/adsdk/ugeno/yoga/ox;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/ox;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/ox;

    return-object v0
.end method


# virtual methods
.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ox;->p:I

    return v0
.end method
