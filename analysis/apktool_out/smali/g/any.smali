.class public final enum Lg/any;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BUILD:Lg/any;

.field public static final enum RUNTIME:Lg/any;

.field public static final enum SYSTEM:Lg/any;

.field public static final synthetic a:[Lg/any;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/any;

    const-string v1, "BUILD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/any;->BUILD:Lg/any;

    new-instance v1, Lg/any;

    const-string v3, "RUNTIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/any;->RUNTIME:Lg/any;

    new-instance v3, Lg/any;

    const-string v5, "SYSTEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/any;->SYSTEM:Lg/any;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/any;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/any;->a:[Lg/any;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/any;
    .locals 1

    const-class v0, Lg/any;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/any;

    return-object p0
.end method

.method public static values()[Lg/any;
    .locals 1

    sget-object v0, Lg/any;->a:[Lg/any;

    invoke-virtual {v0}, [Lg/any;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/any;

    return-object v0
.end method
