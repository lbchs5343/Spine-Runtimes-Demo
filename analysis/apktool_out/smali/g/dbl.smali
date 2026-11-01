.class public final enum Lg/dbl;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ALLOW:Lg/dbl;

.field public static final enum PREVENT:Lg/dbl;

.field public static final enum PREVENT_WHEN_EMPTY:Lg/dbl;

.field public static final synthetic a:[Lg/dbl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/dbl;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dbl;->ALLOW:Lg/dbl;

    new-instance v1, Lg/dbl;

    const-string v3, "PREVENT_WHEN_EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dbl;->PREVENT_WHEN_EMPTY:Lg/dbl;

    new-instance v3, Lg/dbl;

    const-string v5, "PREVENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dbl;->PREVENT:Lg/dbl;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/dbl;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/dbl;->a:[Lg/dbl;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dbl;
    .locals 1

    const-class v0, Lg/dbl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dbl;

    return-object p0
.end method

.method public static values()[Lg/dbl;
    .locals 1

    sget-object v0, Lg/dbl;->a:[Lg/dbl;

    invoke-virtual {v0}, [Lg/dbl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dbl;

    return-object v0
.end method
