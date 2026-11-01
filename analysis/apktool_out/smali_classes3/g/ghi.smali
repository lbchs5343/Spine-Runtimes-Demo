.class public final enum Lg/ghi;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum PERCENT:Lg/ghi;

.field public static final enum PIXELS:Lg/ghi;

.field public static final synthetic a:[Lg/ghi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/ghi;

    const-string v1, "PERCENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ghi;->PERCENT:Lg/ghi;

    new-instance v1, Lg/ghi;

    const-string v3, "PIXELS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ghi;->PIXELS:Lg/ghi;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/ghi;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/ghi;->a:[Lg/ghi;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ghi;
    .locals 1

    const-class v0, Lg/ghi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ghi;

    return-object p0
.end method

.method public static values()[Lg/ghi;
    .locals 1

    sget-object v0, Lg/ghi;->a:[Lg/ghi;

    invoke-virtual {v0}, [Lg/ghi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ghi;

    return-object v0
.end method
