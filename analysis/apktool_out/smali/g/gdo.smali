.class public final enum Lg/gdo;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CONSTANT:Lg/gdo;

.field public static final enum ERROR:Lg/gdo;

.field public static final enum SLACK:Lg/gdo;

.field public static final enum UNKNOWN:Lg/gdo;

.field public static final enum UNRESTRICTED:Lg/gdo;

.field public static final synthetic a:[Lg/gdo;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg/gdo;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    new-instance v1, Lg/gdo;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gdo;->CONSTANT:Lg/gdo;

    new-instance v3, Lg/gdo;

    const-string v5, "SLACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/gdo;->SLACK:Lg/gdo;

    new-instance v5, Lg/gdo;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/gdo;->ERROR:Lg/gdo;

    new-instance v7, Lg/gdo;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/gdo;->UNKNOWN:Lg/gdo;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/gdo;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lg/gdo;->a:[Lg/gdo;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gdo;
    .locals 1

    const-class v0, Lg/gdo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gdo;

    return-object p0
.end method

.method public static values()[Lg/gdo;
    .locals 1

    sget-object v0, Lg/gdo;->a:[Lg/gdo;

    invoke-virtual {v0}, [Lg/gdo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gdo;

    return-object v0
.end method
