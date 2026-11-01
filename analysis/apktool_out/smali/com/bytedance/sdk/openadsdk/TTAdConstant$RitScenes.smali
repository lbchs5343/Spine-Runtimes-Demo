.class public final enum Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTAdConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RitScenes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_MORE_KLLKRTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field public static final enum HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field private static final synthetic d:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;


# instance fields
.field final dq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v1, "customize_scenes"

    const-string v2, "CUSTOMIZE_SCENES"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v2, "home_open_bonus"

    const-string v4, "HOME_OPEN_BONUS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v4, "home_svip_bonus"

    const-string v6, "HOME_SVIP_BONUS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v6, "home_get_props"

    const-string v8, "HOME_GET_PROPS"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v8, "home_try_props"

    const-string v10, "HOME_TRY_PROPS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v10, "home_get_bonus"

    const-string v12, "HOME_GET_BONUS"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v10, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v12, "home_gift_bonus"

    const-string v14, "HOME_GIFT_BONUS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v12, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v14, "game_start_bonus"

    const/16 v16, 0x0

    const-string v3, "GAME_START_BONUS"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v14, "geme_reduce_waiting"

    const/16 v18, 0x7

    const-string v5, "GAME_REDUCE_WAITING"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v14, "game_more_kllkrtunities"

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/TTAdConstant;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x8

    const-string v7, "GAME_MORE_KLLKRTUNITIES"

    const/16 v21, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_MORE_KLLKRTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v14, "game_finish_rewards"

    const/16 v22, 0x9

    const-string v9, "GAME_FINISH_REWARDS"

    const/16 v23, 0x4

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const-string v14, "game_gift_bonus"

    const/16 v24, 0xa

    const-string v11, "GAME_GIFT_BONUS"

    const/16 v25, 0x5

    const/16 v13, 0xb

    invoke-direct {v9, v11, v13, v14}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const/16 v11, 0xc

    new-array v11, v11, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    aput-object v0, v11, v16

    aput-object v1, v11, v17

    aput-object v2, v11, v19

    aput-object v4, v11, v21

    aput-object v6, v11, v23

    aput-object v8, v11, v25

    aput-object v10, v11, v15

    aput-object v12, v11, v18

    aput-object v3, v11, v20

    aput-object v5, v11, v22

    aput-object v7, v11, v24

    aput-object v9, v11, v13

    sput-object v11, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->d:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->dq:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->d:[Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object v0
.end method


# virtual methods
.method public getScenesName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->dq:Ljava/lang/String;

    return-object v0
.end method
