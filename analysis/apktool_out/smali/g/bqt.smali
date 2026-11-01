.class public final enum Lg/bqt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DROP_LATEST:Lg/bqt;

.field public static final enum DROP_OLDEST:Lg/bqt;

.field public static final enum SUSPEND:Lg/bqt;

.field public static final synthetic a:[Lg/bqt;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/bqt;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bqt;->SUSPEND:Lg/bqt;

    new-instance v1, Lg/bqt;

    const-string v3, "DROP_OLDEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bqt;->DROP_OLDEST:Lg/bqt;

    new-instance v3, Lg/bqt;

    const-string v5, "DROP_LATEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bqt;->DROP_LATEST:Lg/bqt;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/bqt;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/bqt;->a:[Lg/bqt;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bqt;
    .locals 1

    const-class v0, Lg/bqt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bqt;

    return-object p0
.end method

.method public static values()[Lg/bqt;
    .locals 1

    sget-object v0, Lg/bqt;->a:[Lg/bqt;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bqt;

    return-object v0
.end method
