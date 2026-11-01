.class public final enum Lg/bwd;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/bwd;

.field public static final enum d:Lg/bwd;

.field public static final enum dq:Lg/bwd;

.field public static final enum iw:Lg/bwd;

.field public static final enum ox:Lg/bwd;

.field public static final enum p:Lg/bwd;

.field public static final enum s:Lg/bwd;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lg/bwd;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bwd;->dq:Lg/bwd;

    new-instance v1, Lg/bwd;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bwd;->d:Lg/bwd;

    new-instance v3, Lg/bwd;

    const-string v5, "INVERT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bwd;->ox:Lg/bwd;

    new-instance v5, Lg/bwd;

    const-string v7, "LUMA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/bwd;->p:Lg/bwd;

    new-instance v7, Lg/bwd;

    const-string v9, "LUMA_INVERTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/bwd;->s:Lg/bwd;

    new-instance v9, Lg/bwd;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/bwd;->iw:Lg/bwd;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/bwd;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/bwd;->a:[Lg/bwd;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bwd;
    .locals 1

    const-class v0, Lg/bwd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bwd;

    return-object p0
.end method

.method public static values()[Lg/bwd;
    .locals 1

    sget-object v0, Lg/bwd;->a:[Lg/bwd;

    invoke-virtual {v0}, [Lg/bwd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bwd;

    return-object v0
.end method
