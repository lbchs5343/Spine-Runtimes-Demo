.class public final enum Lg/gqk;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/gqk;

.field public static final enum d:Lg/gqk;

.field public static final enum dq:Lg/gqk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/gqk;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gqk;->dq:Lg/gqk;

    new-instance v1, Lg/gqk;

    const-string v3, "RADIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gqk;->d:Lg/gqk;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/gqk;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/gqk;->a:[Lg/gqk;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gqk;
    .locals 1

    const-class v0, Lg/gqk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gqk;

    return-object p0
.end method

.method public static values()[Lg/gqk;
    .locals 1

    sget-object v0, Lg/gqk;->a:[Lg/gqk;

    invoke-virtual {v0}, [Lg/gqk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gqk;

    return-object v0
.end method
