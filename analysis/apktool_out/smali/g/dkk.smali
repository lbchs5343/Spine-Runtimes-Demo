.class public final enum Lg/dkk;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ADDING:Lg/dkk;

.field public static final enum NONE:Lg/dkk;

.field public static final enum REMOVING:Lg/dkk;

.field public static final synthetic a:[Lg/dkk;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/dkk;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dkk;->NONE:Lg/dkk;

    new-instance v1, Lg/dkk;

    const-string v3, "ADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dkk;->ADDING:Lg/dkk;

    new-instance v3, Lg/dkk;

    const-string v5, "REMOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dkk;->REMOVING:Lg/dkk;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/dkk;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/dkk;->a:[Lg/dkk;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dkk;
    .locals 1

    const-class v0, Lg/dkk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dkk;

    return-object p0
.end method

.method public static values()[Lg/dkk;
    .locals 1

    sget-object v0, Lg/dkk;->a:[Lg/dkk;

    invoke-virtual {v0}, [Lg/dkk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dkk;

    return-object v0
.end method
