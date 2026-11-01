.class public final enum Lg/exf;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/exf;

.field public static final enum d:Lg/exf;

.field public static final enum dq:Lg/exf;

.field public static final enum ox:Lg/exf;

.field public static final enum p:Lg/exf;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/exf;

    const-string v1, "MASK_MODE_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/exf;->dq:Lg/exf;

    new-instance v1, Lg/exf;

    const-string v3, "MASK_MODE_SUBTRACT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/exf;->d:Lg/exf;

    new-instance v3, Lg/exf;

    const-string v5, "MASK_MODE_INTERSECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/exf;->ox:Lg/exf;

    new-instance v5, Lg/exf;

    const-string v7, "MASK_MODE_NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/exf;->p:Lg/exf;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/exf;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/exf;->a:[Lg/exf;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/exf;
    .locals 1

    const-class v0, Lg/exf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/exf;

    return-object p0
.end method

.method public static values()[Lg/exf;
    .locals 1

    sget-object v0, Lg/exf;->a:[Lg/exf;

    invoke-virtual {v0}, [Lg/exf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/exf;

    return-object v0
.end method
