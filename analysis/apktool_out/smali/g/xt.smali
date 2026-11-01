.class public final enum Lg/xt;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/xt;

.field public static final enum d:Lg/xt;

.field public static final enum dq:Lg/xt;

.field public static final enum ox:Lg/xt;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/xt;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/xt;->dq:Lg/xt;

    new-instance v1, Lg/xt;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/xt;->d:Lg/xt;

    new-instance v3, Lg/xt;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/xt;->ox:Lg/xt;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/xt;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/xt;->a:[Lg/xt;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/xt;
    .locals 1

    const-class v0, Lg/xt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/xt;

    return-object p0
.end method

.method public static values()[Lg/xt;
    .locals 1

    sget-object v0, Lg/xt;->a:[Lg/xt;

    invoke-virtual {v0}, [Lg/xt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/xt;

    return-object v0
.end method
