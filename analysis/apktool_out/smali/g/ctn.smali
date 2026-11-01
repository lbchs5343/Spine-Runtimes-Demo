.class public final enum Lg/ctn;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/ctn;

.field public static final enum d:Lg/ctn;

.field public static final enum dq:Lg/ctn;

.field public static final enum ox:Lg/ctn;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ctn;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ctn;->dq:Lg/ctn;

    new-instance v1, Lg/ctn;

    const-string v3, "ROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ctn;->d:Lg/ctn;

    new-instance v3, Lg/ctn;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ctn;->ox:Lg/ctn;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ctn;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ctn;->a:[Lg/ctn;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ctn;
    .locals 1

    const-class v0, Lg/ctn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ctn;

    return-object p0
.end method

.method public static values()[Lg/ctn;
    .locals 1

    sget-object v0, Lg/ctn;->a:[Lg/ctn;

    invoke-virtual {v0}, [Lg/ctn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ctn;

    return-object v0
.end method
