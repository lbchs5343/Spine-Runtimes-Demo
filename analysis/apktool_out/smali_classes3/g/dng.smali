.class public abstract enum Lg/dng;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEFAULT:Lg/dng;

.field public static final enum STRING:Lg/dng;

.field public static final synthetic a:[Lg/dng;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/zt;

    invoke-direct {v0}, Lg/zt;-><init>()V

    sput-object v0, Lg/dng;->DEFAULT:Lg/dng;

    new-instance v1, Lg/ehl;

    invoke-direct {v1}, Lg/ehl;-><init>()V

    sput-object v1, Lg/dng;->STRING:Lg/dng;

    const/4 v2, 0x2

    new-array v2, v2, [Lg/dng;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lg/dng;->a:[Lg/dng;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dng;
    .locals 1

    const-class v0, Lg/dng;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dng;

    return-object p0
.end method

.method public static values()[Lg/dng;
    .locals 1

    sget-object v0, Lg/dng;->a:[Lg/dng;

    invoke-virtual {v0}, [Lg/dng;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dng;

    return-object v0
.end method
