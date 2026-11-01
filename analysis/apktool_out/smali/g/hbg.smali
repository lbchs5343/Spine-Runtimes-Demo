.class public final enum Lg/hbg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BACK_EDGE:Lg/hbg;

.field public static final enum CROSS_EDGE:Lg/hbg;

.field public static final synthetic a:[Lg/hbg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/hbg;

    const-string v1, "BACK_EDGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hbg;->BACK_EDGE:Lg/hbg;

    new-instance v1, Lg/hbg;

    const-string v3, "CROSS_EDGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hbg;->CROSS_EDGE:Lg/hbg;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/hbg;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/hbg;->a:[Lg/hbg;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/hbg;
    .locals 1

    const-class v0, Lg/hbg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/hbg;

    return-object p0
.end method

.method public static values()[Lg/hbg;
    .locals 1

    sget-object v0, Lg/hbg;->a:[Lg/hbg;

    invoke-virtual {v0}, [Lg/hbg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/hbg;

    return-object v0
.end method
