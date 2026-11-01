.class public final enum Lg/ay;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum EXPONENTIAL:Lg/ay;

.field public static final enum LINEAR:Lg/ay;

.field public static final synthetic a:[Lg/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/ay;

    const-string v1, "EXPONENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ay;->EXPONENTIAL:Lg/ay;

    new-instance v1, Lg/ay;

    const-string v3, "LINEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ay;->LINEAR:Lg/ay;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/ay;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/ay;->a:[Lg/ay;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ay;
    .locals 1

    const-class v0, Lg/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ay;

    return-object p0
.end method

.method public static values()[Lg/ay;
    .locals 1

    sget-object v0, Lg/ay;->a:[Lg/ay;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ay;

    return-object v0
.end method
