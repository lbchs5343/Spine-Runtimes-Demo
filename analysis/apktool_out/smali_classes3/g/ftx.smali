.class public final enum Lg/ftx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEVICE_CHARGING:Lg/ftx;

.field public static final enum DEVICE_IDLE:Lg/ftx;

.field public static final enum NETWORK_UNMETERED:Lg/ftx;

.field public static final synthetic a:[Lg/ftx;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ftx;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ftx;->NETWORK_UNMETERED:Lg/ftx;

    new-instance v1, Lg/ftx;

    const-string v3, "DEVICE_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ftx;->DEVICE_IDLE:Lg/ftx;

    new-instance v3, Lg/ftx;

    const-string v5, "DEVICE_CHARGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ftx;->DEVICE_CHARGING:Lg/ftx;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ftx;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ftx;->a:[Lg/ftx;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ftx;
    .locals 1

    const-class v0, Lg/ftx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ftx;

    return-object p0
.end method

.method public static values()[Lg/ftx;
    .locals 1

    sget-object v0, Lg/ftx;->a:[Lg/ftx;

    invoke-virtual {v0}, [Lg/ftx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ftx;

    return-object v0
.end method
