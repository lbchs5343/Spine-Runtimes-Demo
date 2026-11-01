.class public final enum Lg/fxs;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DAY:Lg/fxs;

.field public static final enum YEAR:Lg/fxs;

.field public static final synthetic a:[Lg/fxs;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/fxs;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/fxs;->DAY:Lg/fxs;

    new-instance v1, Lg/fxs;

    const-string v3, "YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/fxs;->YEAR:Lg/fxs;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/fxs;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/fxs;->a:[Lg/fxs;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fxs;
    .locals 1

    const-class v0, Lg/fxs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fxs;

    return-object p0
.end method

.method public static values()[Lg/fxs;
    .locals 1

    sget-object v0, Lg/fxs;->a:[Lg/fxs;

    invoke-virtual {v0}, [Lg/fxs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fxs;

    return-object v0
.end method
