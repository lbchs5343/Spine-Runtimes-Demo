.class public final enum Lg/cq;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEFAULT:Lg/cq;

.field public static final enum HIGHEST:Lg/cq;

.field public static final enum VERY_LOW:Lg/cq;

.field public static final synthetic a:[Lg/cq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/cq;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cq;->DEFAULT:Lg/cq;

    new-instance v1, Lg/cq;

    const-string v3, "VERY_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cq;->VERY_LOW:Lg/cq;

    new-instance v3, Lg/cq;

    const-string v5, "HIGHEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/cq;->HIGHEST:Lg/cq;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/cq;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/cq;->a:[Lg/cq;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cq;
    .locals 1

    const-class v0, Lg/cq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cq;

    return-object p0
.end method

.method public static values()[Lg/cq;
    .locals 1

    sget-object v0, Lg/cq;->a:[Lg/cq;

    invoke-virtual {v0}, [Lg/cq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cq;

    return-object v0
.end method
