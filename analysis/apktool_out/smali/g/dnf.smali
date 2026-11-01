.class public final enum Lg/dnf;
.super Ljava/lang/Enum;


# static fields
.field public static final enum AD_UNION_DRAW:Lg/dnf;

.field public static final enum AD_UNION_EXCITATION:Lg/dnf;

.field public static final enum AD_UNION_FEED:Lg/dnf;

.field public static final enum AD_UNION_INSERT:Lg/dnf;

.field public static final enum NO_VALUE:Lg/dnf;

.field public static final synthetic a:[Lg/dnf;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg/dnf;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dnf;->NO_VALUE:Lg/dnf;

    new-instance v1, Lg/dnf;

    const-string v3, "AD_UNION_EXCITATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dnf;->AD_UNION_EXCITATION:Lg/dnf;

    new-instance v3, Lg/dnf;

    const-string v5, "AD_UNION_INSERT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dnf;->AD_UNION_INSERT:Lg/dnf;

    new-instance v5, Lg/dnf;

    const-string v7, "AD_UNION_FEED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dnf;->AD_UNION_FEED:Lg/dnf;

    new-instance v7, Lg/dnf;

    const-string v9, "AD_UNION_DRAW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/dnf;->AD_UNION_DRAW:Lg/dnf;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/dnf;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lg/dnf;->a:[Lg/dnf;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dnf;
    .locals 1

    const-class v0, Lg/dnf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dnf;

    return-object p0
.end method

.method public static values()[Lg/dnf;
    .locals 1

    sget-object v0, Lg/dnf;->a:[Lg/dnf;

    invoke-virtual {v0}, [Lg/dnf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dnf;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
