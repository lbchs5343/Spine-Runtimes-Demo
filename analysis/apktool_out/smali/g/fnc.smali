.class public final enum Lg/fnc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum APPLY:Lg/fnc;

.field public static final enum APPLY_AND_HIDE:Lg/fnc;

.field public static final enum DISABLE:Lg/fnc;

.field public static final synthetic a:[Lg/fnc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/fnc;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/fnc;->DISABLE:Lg/fnc;

    new-instance v1, Lg/fnc;

    const-string v3, "APPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/fnc;->APPLY:Lg/fnc;

    new-instance v3, Lg/fnc;

    const-string v5, "APPLY_AND_HIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/fnc;->APPLY_AND_HIDE:Lg/fnc;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/fnc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/fnc;->a:[Lg/fnc;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fnc;
    .locals 1

    const-class v0, Lg/fnc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fnc;

    return-object p0
.end method

.method public static values()[Lg/fnc;
    .locals 1

    sget-object v0, Lg/fnc;->a:[Lg/fnc;

    invoke-virtual {v0}, [Lg/fnc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fnc;

    return-object v0
.end method
