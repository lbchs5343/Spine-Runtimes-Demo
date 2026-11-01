.class public final enum Lg/ant;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum LEGACY_STRICT:Lg/ant;

.field public static final enum LENIENT:Lg/ant;

.field public static final enum STRICT:Lg/ant;

.field public static final synthetic a:[Lg/ant;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ant;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ant;->LENIENT:Lg/ant;

    new-instance v1, Lg/ant;

    const-string v3, "LEGACY_STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ant;->LEGACY_STRICT:Lg/ant;

    new-instance v3, Lg/ant;

    const-string v5, "STRICT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ant;->STRICT:Lg/ant;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ant;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ant;->a:[Lg/ant;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ant;
    .locals 1

    const-class v0, Lg/ant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ant;

    return-object p0
.end method

.method public static values()[Lg/ant;
    .locals 1

    sget-object v0, Lg/ant;->a:[Lg/ant;

    invoke-virtual {v0}, [Lg/ant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ant;

    return-object v0
.end method
