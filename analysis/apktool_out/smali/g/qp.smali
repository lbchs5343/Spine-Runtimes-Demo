.class public final enum Lg/qp;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTO:Lg/qp;

.field public static final enum FALLBACK:Lg/qp;

.field public static final enum RESTRUCTURE:Lg/qp;

.field public static final enum SIMPLE:Lg/qp;

.field public static final synthetic a:[Lg/qp;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/qp;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/qp;->AUTO:Lg/qp;

    new-instance v1, Lg/qp;

    const-string v3, "RESTRUCTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/qp;->RESTRUCTURE:Lg/qp;

    new-instance v3, Lg/qp;

    const-string v5, "SIMPLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/qp;->SIMPLE:Lg/qp;

    new-instance v5, Lg/qp;

    const-string v7, "FALLBACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/qp;->FALLBACK:Lg/qp;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/qp;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/qp;->a:[Lg/qp;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/qp;
    .locals 1

    const-class v0, Lg/qp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/qp;

    return-object p0
.end method

.method public static values()[Lg/qp;
    .locals 1

    sget-object v0, Lg/qp;->a:[Lg/qp;

    invoke-virtual {v0}, [Lg/qp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/qp;

    return-object v0
.end method
