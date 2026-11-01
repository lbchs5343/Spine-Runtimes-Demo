.class public final enum Lg/cxr;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum COROUTINE_SUSPENDED:Lg/cxr;

.field public static final enum RESUMED:Lg/cxr;

.field public static final enum UNDECIDED:Lg/cxr;

.field public static final synthetic a:[Lg/cxr;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/cxr;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    new-instance v1, Lg/cxr;

    const-string v3, "UNDECIDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cxr;->UNDECIDED:Lg/cxr;

    new-instance v3, Lg/cxr;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/cxr;->RESUMED:Lg/cxr;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/cxr;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/cxr;->a:[Lg/cxr;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cxr;
    .locals 1

    const-class v0, Lg/cxr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cxr;

    return-object p0
.end method

.method public static values()[Lg/cxr;
    .locals 1

    sget-object v0, Lg/cxr;->a:[Lg/cxr;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cxr;

    return-object v0
.end method
