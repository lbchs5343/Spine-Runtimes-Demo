.class public final enum Lg/cvc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CLICK:Lg/cvc;

.field public static final enum DRAW:Lg/cvc;

.field public static final synthetic a:[Lg/cvc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/cvc;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cvc;->CLICK:Lg/cvc;

    new-instance v1, Lg/cvc;

    const-string v3, "DRAW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cvc;->DRAW:Lg/cvc;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/cvc;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/cvc;->a:[Lg/cvc;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cvc;
    .locals 1

    const-class v0, Lg/cvc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cvc;

    return-object p0
.end method

.method public static values()[Lg/cvc;
    .locals 1

    sget-object v0, Lg/cvc;->a:[Lg/cvc;

    invoke-virtual {v0}, [Lg/cvc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cvc;

    return-object v0
.end method
