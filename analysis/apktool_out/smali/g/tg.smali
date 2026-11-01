.class public final enum Lg/tg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum FINISH:Lg/tg;

.field public static final enum INSTALL:Lg/tg;

.field public static final enum NONE:Lg/tg;

.field public static final enum OPEN_MANAGER:Lg/tg;

.field public static final enum REQUEST_PERMISSION:Lg/tg;

.field public static final enum USE:Lg/tg;

.field public static final synthetic a:[Lg/tg;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lg/tg;

    const-string v1, "INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/tg;->INSTALL:Lg/tg;

    new-instance v1, Lg/tg;

    const-string v3, "OPEN_MANAGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/tg;->OPEN_MANAGER:Lg/tg;

    new-instance v3, Lg/tg;

    const-string v5, "REQUEST_PERMISSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/tg;->REQUEST_PERMISSION:Lg/tg;

    new-instance v5, Lg/tg;

    const-string v7, "USE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/tg;->USE:Lg/tg;

    new-instance v7, Lg/tg;

    const-string v9, "FINISH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/tg;->FINISH:Lg/tg;

    new-instance v9, Lg/tg;

    const-string v11, "NONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/tg;->NONE:Lg/tg;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/tg;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/tg;->a:[Lg/tg;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/tg;
    .locals 1

    const-class v0, Lg/tg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/tg;

    return-object p0
.end method

.method public static values()[Lg/tg;
    .locals 1

    sget-object v0, Lg/tg;->a:[Lg/tg;

    invoke-virtual {v0}, [Lg/tg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/tg;

    return-object v0
.end method
