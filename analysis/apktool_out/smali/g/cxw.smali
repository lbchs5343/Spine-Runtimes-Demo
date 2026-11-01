.class public final enum Lg/cxw;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/cxw;

.field public static final enum d:Lg/cxw;

.field public static final enum dq:Lg/cxw;

.field public static final enum ox:Lg/cxw;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/cxw;

    const-string v1, "LEFT_ALIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cxw;->dq:Lg/cxw;

    new-instance v1, Lg/cxw;

    const-string v3, "RIGHT_ALIGN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cxw;->d:Lg/cxw;

    new-instance v3, Lg/cxw;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/cxw;->ox:Lg/cxw;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/cxw;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/cxw;->a:[Lg/cxw;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cxw;
    .locals 1

    const-class v0, Lg/cxw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cxw;

    return-object p0
.end method

.method public static values()[Lg/cxw;
    .locals 1

    sget-object v0, Lg/cxw;->a:[Lg/cxw;

    invoke-virtual {v0}, [Lg/cxw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cxw;

    return-object v0
.end method
