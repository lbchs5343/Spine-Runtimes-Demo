.class public final enum Lg/dnx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CONNECTED:Lg/dnx;

.field public static final enum METERED:Lg/dnx;

.field public static final enum NOT_REQUIRED:Lg/dnx;

.field public static final enum NOT_ROAMING:Lg/dnx;

.field public static final enum TEMPORARILY_UNMETERED:Lg/dnx;

.field public static final enum UNMETERED:Lg/dnx;

.field public static final synthetic a:[Lg/dnx;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lg/dnx;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dnx;->NOT_REQUIRED:Lg/dnx;

    new-instance v1, Lg/dnx;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dnx;->CONNECTED:Lg/dnx;

    new-instance v3, Lg/dnx;

    const-string v5, "UNMETERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dnx;->UNMETERED:Lg/dnx;

    new-instance v5, Lg/dnx;

    const-string v7, "NOT_ROAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dnx;->NOT_ROAMING:Lg/dnx;

    new-instance v7, Lg/dnx;

    const-string v9, "METERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/dnx;->METERED:Lg/dnx;

    new-instance v9, Lg/dnx;

    const-string v11, "TEMPORARILY_UNMETERED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/dnx;->TEMPORARILY_UNMETERED:Lg/dnx;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/dnx;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/dnx;->a:[Lg/dnx;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dnx;
    .locals 1

    const-class v0, Lg/dnx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dnx;

    return-object p0
.end method

.method public static values()[Lg/dnx;
    .locals 1

    sget-object v0, Lg/dnx;->a:[Lg/dnx;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dnx;

    return-object v0
.end method
