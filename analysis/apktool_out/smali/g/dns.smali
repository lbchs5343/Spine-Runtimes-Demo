.class public final enum Lg/dns;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NO_EXCEPTION:Lg/dns;

.field public static final enum RUNTIME:Lg/dns;

.field public static final enum THROWS_REQUIRED:Lg/dns;

.field public static final enum UNKNOWN_TYPE:Lg/dns;

.field public static final synthetic a:[Lg/dns;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/dns;

    const-string v1, "THROWS_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dns;->THROWS_REQUIRED:Lg/dns;

    new-instance v1, Lg/dns;

    const-string v3, "RUNTIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dns;->RUNTIME:Lg/dns;

    new-instance v3, Lg/dns;

    const-string v5, "UNKNOWN_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dns;->UNKNOWN_TYPE:Lg/dns;

    new-instance v5, Lg/dns;

    const-string v7, "NO_EXCEPTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dns;->NO_EXCEPTION:Lg/dns;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/dns;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/dns;->a:[Lg/dns;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dns;
    .locals 1

    const-class v0, Lg/dns;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dns;

    return-object p0
.end method

.method public static values()[Lg/dns;
    .locals 1

    sget-object v0, Lg/dns;->a:[Lg/dns;

    invoke-virtual {v0}, [Lg/dns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dns;

    return-object v0
.end method
