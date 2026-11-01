.class public final enum Lg/cct;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum PARALLEL:Lg/cct;

.field public static final enum SEQUENTIAL:Lg/cct;

.field public static final synthetic a:[Lg/cct;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/cct;

    const-string v1, "PARALLEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cct;->PARALLEL:Lg/cct;

    new-instance v1, Lg/cct;

    const-string v3, "SEQUENTIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cct;->SEQUENTIAL:Lg/cct;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/cct;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/cct;->a:[Lg/cct;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cct;
    .locals 1

    const-class v0, Lg/cct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cct;

    return-object p0
.end method

.method public static values()[Lg/cct;
    .locals 1

    sget-object v0, Lg/cct;->a:[Lg/cct;

    invoke-virtual {v0}, [Lg/cct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cct;

    return-object v0
.end method
