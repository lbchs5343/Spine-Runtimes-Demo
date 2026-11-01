.class public final enum Lg/ayj;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/ayj;

.field public static final enum d:Lg/ayj;

.field public static final enum dq:Lg/ayj;

.field public static final enum iw:Lg/ayj;

.field public static final enum mn:Lg/ayj;

.field public static final enum ox:Lg/ayj;

.field public static final enum p:Lg/ayj;

.field public static final enum s:Lg/ayj;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lg/ayj;

    const-string v1, "PRE_COMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ayj;->dq:Lg/ayj;

    new-instance v1, Lg/ayj;

    const-string v3, "SOLID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ayj;->d:Lg/ayj;

    new-instance v3, Lg/ayj;

    const-string v5, "IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ayj;->ox:Lg/ayj;

    new-instance v5, Lg/ayj;

    const-string v7, "NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/ayj;->p:Lg/ayj;

    new-instance v7, Lg/ayj;

    const-string v9, "SHAPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/ayj;->s:Lg/ayj;

    new-instance v9, Lg/ayj;

    const-string v11, "TEXT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/ayj;->iw:Lg/ayj;

    new-instance v11, Lg/ayj;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/ayj;->mn:Lg/ayj;

    const/4 v13, 0x7

    new-array v13, v13, [Lg/ayj;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lg/ayj;->a:[Lg/ayj;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ayj;
    .locals 1

    const-class v0, Lg/ayj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ayj;

    return-object p0
.end method

.method public static values()[Lg/ayj;
    .locals 1

    sget-object v0, Lg/ayj;->a:[Lg/ayj;

    invoke-virtual {v0}, [Lg/ayj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ayj;

    return-object v0
.end method
