.class public final enum Lg/bex;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DETECT_FRAGMENT_REUSE:Lg/bex;

.field public static final enum DETECT_FRAGMENT_TAG_USAGE:Lg/bex;

.field public static final enum DETECT_RETAIN_INSTANCE_USAGE:Lg/bex;

.field public static final enum DETECT_SET_USER_VISIBLE_HINT:Lg/bex;

.field public static final enum DETECT_TARGET_FRAGMENT_USAGE:Lg/bex;

.field public static final enum DETECT_WRONG_FRAGMENT_CONTAINER:Lg/bex;

.field public static final enum PENALTY_DEATH:Lg/bex;

.field public static final enum PENALTY_LOG:Lg/bex;

.field public static final synthetic a:[Lg/bex;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lg/bex;

    const-string v1, "PENALTY_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bex;->PENALTY_LOG:Lg/bex;

    new-instance v1, Lg/bex;

    const-string v3, "PENALTY_DEATH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bex;->PENALTY_DEATH:Lg/bex;

    new-instance v3, Lg/bex;

    const-string v5, "DETECT_FRAGMENT_REUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bex;->DETECT_FRAGMENT_REUSE:Lg/bex;

    new-instance v5, Lg/bex;

    const-string v7, "DETECT_FRAGMENT_TAG_USAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/bex;->DETECT_FRAGMENT_TAG_USAGE:Lg/bex;

    new-instance v7, Lg/bex;

    const-string v9, "DETECT_RETAIN_INSTANCE_USAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/bex;->DETECT_RETAIN_INSTANCE_USAGE:Lg/bex;

    new-instance v9, Lg/bex;

    const-string v11, "DETECT_SET_USER_VISIBLE_HINT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/bex;->DETECT_SET_USER_VISIBLE_HINT:Lg/bex;

    new-instance v11, Lg/bex;

    const-string v13, "DETECT_TARGET_FRAGMENT_USAGE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/bex;->DETECT_TARGET_FRAGMENT_USAGE:Lg/bex;

    new-instance v13, Lg/bex;

    const-string v15, "DETECT_WRONG_FRAGMENT_CONTAINER"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/bex;->DETECT_WRONG_FRAGMENT_CONTAINER:Lg/bex;

    const/16 v15, 0x8

    new-array v15, v15, [Lg/bex;

    aput-object v0, v15, v16

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    aput-object v13, v15, v2

    sput-object v15, Lg/bex;->a:[Lg/bex;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bex;
    .locals 1

    const-class v0, Lg/bex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bex;

    return-object p0
.end method

.method public static values()[Lg/bex;
    .locals 1

    sget-object v0, Lg/bex;->a:[Lg/bex;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bex;

    return-object v0
.end method
