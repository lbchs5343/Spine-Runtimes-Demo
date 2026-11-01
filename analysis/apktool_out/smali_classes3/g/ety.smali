.class public final enum Lg/ety;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BAD_CONFIG:Lg/ety;

.field public static final enum TOO_MANY_REQUESTS:Lg/ety;

.field public static final enum UNAVAILABLE:Lg/ety;

.field public static final synthetic a:[Lg/ety;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ety;

    const-string v1, "BAD_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ety;->BAD_CONFIG:Lg/ety;

    new-instance v1, Lg/ety;

    const-string v3, "UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ety;->UNAVAILABLE:Lg/ety;

    new-instance v3, Lg/ety;

    const-string v5, "TOO_MANY_REQUESTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ety;->TOO_MANY_REQUESTS:Lg/ety;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ety;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ety;->a:[Lg/ety;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ety;
    .locals 1

    const-class v0, Lg/ety;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ety;

    return-object p0
.end method

.method public static values()[Lg/ety;
    .locals 1

    sget-object v0, Lg/ety;->a:[Lg/ety;

    invoke-virtual {v0}, [Lg/ety;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ety;

    return-object v0
.end method
