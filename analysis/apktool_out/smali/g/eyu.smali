.class public final enum Lg/eyu;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/eyu;

.field public static final enum d:Lg/eyu;

.field public static final enum dq:Lg/eyu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/eyu;

    const-string v1, "SIMULTANEOUSLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/eyu;->dq:Lg/eyu;

    new-instance v1, Lg/eyu;

    const-string v3, "INDIVIDUALLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/eyu;->d:Lg/eyu;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/eyu;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/eyu;->a:[Lg/eyu;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/eyu;
    .locals 1

    const-class v0, Lg/eyu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/eyu;

    return-object p0
.end method

.method public static values()[Lg/eyu;
    .locals 1

    sget-object v0, Lg/eyu;->a:[Lg/eyu;

    invoke-virtual {v0}, [Lg/eyu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/eyu;

    return-object v0
.end method
