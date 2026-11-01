.class public final enum Lg/qy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTHORIZE:Lg/qy;

.field public static final enum CONNECTION:Lg/qy;

.field public static final enum RESULT_UNKNOWN:Lg/qy;

.field public static final enum START:Lg/qy;

.field public static final enum UPDATE:Lg/qy;

.field public static final synthetic a:[Lg/qy;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg/qy;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/qy;->UPDATE:Lg/qy;

    new-instance v1, Lg/qy;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/qy;->START:Lg/qy;

    new-instance v3, Lg/qy;

    const-string v5, "AUTHORIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/qy;->AUTHORIZE:Lg/qy;

    new-instance v5, Lg/qy;

    const-string v7, "CONNECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/qy;->CONNECTION:Lg/qy;

    new-instance v7, Lg/qy;

    const-string v9, "RESULT_UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/qy;->RESULT_UNKNOWN:Lg/qy;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/qy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lg/qy;->a:[Lg/qy;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/qy;
    .locals 1

    const-class v0, Lg/qy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/qy;

    return-object p0
.end method

.method public static values()[Lg/qy;
    .locals 1

    sget-object v0, Lg/qy;->a:[Lg/qy;

    invoke-virtual {v0}, [Lg/qy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/qy;

    return-object v0
.end method
