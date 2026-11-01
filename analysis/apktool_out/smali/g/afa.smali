.class public final enum Lg/afa;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEBUG:Lg/afa;

.field public static final enum ERROR:Lg/afa;

.field public static final enum INFO:Lg/afa;

.field public static final enum NONE:Lg/afa;

.field public static final enum USER_ONLY:Lg/afa;

.field public static final enum WARN:Lg/afa;

.field public static final synthetic a:[Lg/afa;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lg/afa;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/afa;->NONE:Lg/afa;

    new-instance v1, Lg/afa;

    const-string v3, "USER_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/afa;->USER_ONLY:Lg/afa;

    new-instance v3, Lg/afa;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/afa;->ERROR:Lg/afa;

    new-instance v5, Lg/afa;

    const-string v7, "WARN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/afa;->WARN:Lg/afa;

    new-instance v7, Lg/afa;

    const-string v9, "INFO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/afa;->INFO:Lg/afa;

    new-instance v9, Lg/afa;

    const-string v11, "DEBUG"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/afa;->DEBUG:Lg/afa;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/afa;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/afa;->a:[Lg/afa;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/afa;
    .locals 1

    const-class v0, Lg/afa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/afa;

    return-object p0
.end method

.method public static values()[Lg/afa;
    .locals 1

    sget-object v0, Lg/afa;->a:[Lg/afa;

    invoke-virtual {v0}, [Lg/afa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/afa;

    return-object v0
.end method
