.class public final enum Lg/ewj;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/ewj;

.field public static final enum d:Lg/ewj;

.field public static final enum dq:Lg/ewj;

.field public static final enum ox:Lg/ewj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ewj;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ewj;->dq:Lg/ewj;

    new-instance v1, Lg/ewj;

    const-string v3, "PLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ewj;->d:Lg/ewj;

    new-instance v3, Lg/ewj;

    const-string v5, "RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ewj;->ox:Lg/ewj;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ewj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ewj;->a:[Lg/ewj;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ewj;
    .locals 1

    const-class v0, Lg/ewj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ewj;

    return-object p0
.end method

.method public static values()[Lg/ewj;
    .locals 1

    sget-object v0, Lg/ewj;->a:[Lg/ewj;

    invoke-virtual {v0}, [Lg/ewj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ewj;

    return-object v0
.end method
