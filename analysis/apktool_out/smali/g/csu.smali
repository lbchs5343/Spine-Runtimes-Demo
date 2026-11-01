.class public final enum Lg/csu;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTO:Lg/csu;

.field public static final enum DECIMAL:Lg/csu;

.field public static final enum HEXADECIMAL:Lg/csu;

.field public static final synthetic a:[Lg/csu;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/csu;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csu;->AUTO:Lg/csu;

    new-instance v1, Lg/csu;

    const-string v3, "DECIMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csu;->DECIMAL:Lg/csu;

    new-instance v3, Lg/csu;

    const-string v5, "HEXADECIMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/csu;->HEXADECIMAL:Lg/csu;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/csu;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/csu;->a:[Lg/csu;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/csu;
    .locals 1

    const-class v0, Lg/csu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/csu;

    return-object p0
.end method

.method public static values()[Lg/csu;
    .locals 1

    sget-object v0, Lg/csu;->a:[Lg/csu;

    invoke-virtual {v0}, [Lg/csu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/csu;

    return-object v0
.end method
