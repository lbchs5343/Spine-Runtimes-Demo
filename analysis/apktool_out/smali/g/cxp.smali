.class public final enum Lg/cxp;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/cxp;

.field public static final enum d:Lg/cxp;

.field public static final enum dq:Lg/cxp;

.field public static final enum ox:Lg/cxp;

.field public static final enum p:Lg/cxp;

.field public static final enum s:Lg/cxp;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg/cxp;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cxp;->dq:Lg/cxp;

    new-instance v1, Lg/cxp;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cxp;->d:Lg/cxp;

    new-instance v3, Lg/cxp;

    const-string v5, "SUBTRACT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/cxp;->ox:Lg/cxp;

    new-instance v5, Lg/cxp;

    const-string v7, "INTERSECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/cxp;->p:Lg/cxp;

    new-instance v7, Lg/cxp;

    const-string v9, "EXCLUDE_INTERSECTIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/cxp;->s:Lg/cxp;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/cxp;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lg/cxp;->a:[Lg/cxp;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cxp;
    .locals 1

    const-class v0, Lg/cxp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cxp;

    return-object p0
.end method

.method public static values()[Lg/cxp;
    .locals 1

    sget-object v0, Lg/cxp;->a:[Lg/cxp;

    invoke-virtual {v0}, [Lg/cxp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cxp;

    return-object v0
.end method
