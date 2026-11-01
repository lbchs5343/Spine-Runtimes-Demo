.class public final enum Lg/ffl;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CASE:Lg/ffl;

.field public static final enum PRINTABLE:Lg/ffl;

.field public static final enum VALID:Lg/ffl;

.field public static final synthetic a:[Lg/ffl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ffl;

    const-string v1, "CASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ffl;->CASE:Lg/ffl;

    new-instance v1, Lg/ffl;

    const-string v3, "VALID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ffl;->VALID:Lg/ffl;

    new-instance v3, Lg/ffl;

    const-string v5, "PRINTABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ffl;->PRINTABLE:Lg/ffl;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ffl;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ffl;->a:[Lg/ffl;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ffl;
    .locals 1

    const-class v0, Lg/ffl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ffl;

    return-object p0
.end method

.method public static values()[Lg/ffl;
    .locals 1

    sget-object v0, Lg/ffl;->a:[Lg/ffl;

    invoke-virtual {v0}, [Lg/ffl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ffl;

    return-object v0
.end method
