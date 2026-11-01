.class public final enum Lg/azu;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/azu;

.field public static final enum d:Lg/azu;

.field public static final enum dq:Lg/azu;

.field public static final enum ia:Lg/azu;

.field public static final enum iw:Lg/azu;

.field public static final enum kk:Lg/azu;

.field public static final enum mn:Lg/azu;

.field public static final enum ox:Lg/azu;

.field public static final enum p:Lg/azu;

.field public static final enum s:Lg/azu;


# instance fields
.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lg/azu;

    const-string v1, "launch"

    const-string v2, "LAUNCH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/azu;->dq:Lg/azu;

    new-instance v1, Lg/azu;

    const-string v2, "java"

    const-string v4, "JAVA"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/azu;->d:Lg/azu;

    new-instance v2, Lg/azu;

    const-string v4, "native"

    const-string v6, "NATIVE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lg/azu;->ox:Lg/azu;

    new-instance v4, Lg/azu;

    const-string v6, "anr"

    const-string v8, "ANR"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lg/azu;->p:Lg/azu;

    new-instance v6, Lg/azu;

    const-string v8, "block"

    const-string v10, "BLOCK"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lg/azu;->s:Lg/azu;

    new-instance v8, Lg/azu;

    const-string v10, "ensure"

    const-string v12, "ENSURE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lg/azu;->iw:Lg/azu;

    new-instance v10, Lg/azu;

    const-string v12, "dart"

    const-string v14, "DART"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lg/azu;->mn:Lg/azu;

    new-instance v12, Lg/azu;

    const-string v14, "custom_java"

    const/16 v16, 0x0

    const-string v3, "CUSTOM_JAVA"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lg/azu;->ia:Lg/azu;

    new-instance v3, Lg/azu;

    const-string v14, "all"

    const/16 v18, 0x7

    const-string v5, "ALL"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lg/azu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lg/azu;->kk:Lg/azu;

    const/16 v5, 0x9

    new-array v5, v5, [Lg/azu;

    aput-object v0, v5, v16

    aput-object v1, v5, v17

    aput-object v2, v5, v19

    aput-object v4, v5, v9

    aput-object v6, v5, v11

    aput-object v8, v5, v13

    aput-object v10, v5, v15

    aput-object v12, v5, v18

    aput-object v3, v5, v7

    sput-object v5, Lg/azu;->a:[Lg/azu;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/azu;->o:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/azu;
    .locals 1

    const-class v0, Lg/azu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/azu;

    return-object p0
.end method

.method public static values()[Lg/azu;
    .locals 1

    sget-object v0, Lg/azu;->a:[Lg/azu;

    invoke-virtual {v0}, [Lg/azu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/azu;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/azu;->o:Ljava/lang/String;

    return-object v0
.end method
