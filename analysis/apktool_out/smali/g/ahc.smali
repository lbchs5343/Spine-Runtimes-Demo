.class public final enum Lg/ahc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DROP_WORK_REQUEST:Lg/ahc;

.field public static final enum RUN_AS_NON_EXPEDITED_WORK_REQUEST:Lg/ahc;

.field public static final synthetic a:[Lg/ahc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/ahc;

    const-string v1, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ahc;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Lg/ahc;

    new-instance v1, Lg/ahc;

    const-string v3, "DROP_WORK_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ahc;->DROP_WORK_REQUEST:Lg/ahc;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/ahc;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/ahc;->a:[Lg/ahc;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ahc;
    .locals 1

    const-class v0, Lg/ahc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ahc;

    return-object p0
.end method

.method public static values()[Lg/ahc;
    .locals 1

    sget-object v0, Lg/ahc;->a:[Lg/ahc;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ahc;

    return-object v0
.end method
