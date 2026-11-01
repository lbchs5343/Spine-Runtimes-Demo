.class public final enum Lg/bjg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTOMATIC:Lg/bjg;

.field public static final enum TRUNCATE:Lg/bjg;

.field public static final enum WRITE_AHEAD_LOGGING:Lg/bjg;

.field public static final synthetic a:[Lg/bjg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/bjg;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bjg;->AUTOMATIC:Lg/bjg;

    new-instance v1, Lg/bjg;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bjg;->TRUNCATE:Lg/bjg;

    new-instance v3, Lg/bjg;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bjg;->WRITE_AHEAD_LOGGING:Lg/bjg;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/bjg;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/bjg;->a:[Lg/bjg;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bjg;
    .locals 1

    const-class v0, Lg/bjg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bjg;

    return-object p0
.end method

.method public static values()[Lg/bjg;
    .locals 1

    sget-object v0, Lg/bjg;->a:[Lg/bjg;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bjg;

    return-object v0
.end method
