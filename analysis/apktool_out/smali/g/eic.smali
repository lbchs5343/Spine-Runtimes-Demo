.class public final enum Lg/eic;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ALLOW_WIDER:Lg/eic;

.field public static final enum IGNORE_SAME:Lg/eic;

.field public static final enum IGNORE_UNKNOWN:Lg/eic;

.field public static final enum KEEP_GENERICS:Lg/eic;

.field public static final synthetic a:[Lg/eic;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/eic;

    const-string v1, "ALLOW_WIDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/eic;->ALLOW_WIDER:Lg/eic;

    new-instance v1, Lg/eic;

    const-string v3, "IGNORE_SAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/eic;->IGNORE_SAME:Lg/eic;

    new-instance v3, Lg/eic;

    const-string v5, "IGNORE_UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/eic;->IGNORE_UNKNOWN:Lg/eic;

    new-instance v5, Lg/eic;

    const-string v7, "KEEP_GENERICS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/eic;->KEEP_GENERICS:Lg/eic;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/eic;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/eic;->a:[Lg/eic;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/eic;
    .locals 1

    const-class v0, Lg/eic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/eic;

    return-object p0
.end method

.method public static values()[Lg/eic;
    .locals 1

    sget-object v0, Lg/eic;->a:[Lg/eic;

    invoke-virtual {v0}, [Lg/eic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/eic;

    return-object v0
.end method
