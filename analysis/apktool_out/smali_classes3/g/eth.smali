.class public final enum Lg/eth;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ERROR:Lg/eth;

.field public static final enum INFO:Lg/eth;

.field public static final enum WARN:Lg/eth;

.field public static final synthetic a:[Lg/eth;


# instance fields
.field levelInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lg/eth;

    const-string v1, "INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/eth;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/eth;->INFO:Lg/eth;

    new-instance v1, Lg/eth;

    const-string v4, "WARN"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lg/eth;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/eth;->WARN:Lg/eth;

    new-instance v4, Lg/eth;

    const-string v6, "ERROR"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lg/eth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/eth;->ERROR:Lg/eth;

    new-array v6, v7, [Lg/eth;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lg/eth;->a:[Lg/eth;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/eth;->levelInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/eth;
    .locals 1

    const-class v0, Lg/eth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/eth;

    return-object p0
.end method

.method public static values()[Lg/eth;
    .locals 1

    sget-object v0, Lg/eth;->a:[Lg/eth;

    invoke-virtual {v0}, [Lg/eth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/eth;

    return-object v0
.end method
