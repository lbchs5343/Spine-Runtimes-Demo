.class public final enum Lg/dgr;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CHANGED:Lg/dgr;

.field public static final enum REJECT:Lg/dgr;

.field public static final enum SAME:Lg/dgr;

.field public static final synthetic a:[Lg/dgr;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/dgr;

    const-string v1, "REJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dgr;->REJECT:Lg/dgr;

    new-instance v1, Lg/dgr;

    const-string v3, "SAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dgr;->SAME:Lg/dgr;

    new-instance v3, Lg/dgr;

    const-string v5, "CHANGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dgr;->CHANGED:Lg/dgr;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/dgr;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/dgr;->a:[Lg/dgr;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dgr;
    .locals 1

    const-class v0, Lg/dgr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dgr;

    return-object p0
.end method

.method public static values()[Lg/dgr;
    .locals 1

    sget-object v0, Lg/dgr;->a:[Lg/dgr;

    invoke-virtual {v0}, [Lg/dgr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dgr;

    return-object v0
.end method
