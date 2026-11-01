.class public final enum Lg/cvi;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NOT_READY:Lg/cvi;

.field public static final enum READY:Lg/cvi;

.field public static final synthetic a:[Lg/cvi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/cvi;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cvi;->NOT_READY:Lg/cvi;

    new-instance v1, Lg/cvi;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cvi;->READY:Lg/cvi;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/cvi;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/cvi;->a:[Lg/cvi;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cvi;
    .locals 1

    const-class v0, Lg/cvi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cvi;

    return-object p0
.end method

.method public static values()[Lg/cvi;
    .locals 1

    sget-object v0, Lg/cvi;->a:[Lg/cvi;

    invoke-virtual {v0}, [Lg/cvi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cvi;

    return-object v0
.end method
