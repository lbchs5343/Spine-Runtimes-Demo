.class public final enum Lg/egx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum FINISHED:Lg/egx;

.field public static final enum PENDING:Lg/egx;

.field public static final enum RUNNING:Lg/egx;

.field public static final synthetic a:[Lg/egx;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/egx;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/egx;->PENDING:Lg/egx;

    new-instance v1, Lg/egx;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/egx;->RUNNING:Lg/egx;

    new-instance v3, Lg/egx;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/egx;->FINISHED:Lg/egx;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/egx;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/egx;->a:[Lg/egx;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/egx;
    .locals 1

    const-class v0, Lg/egx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/egx;

    return-object p0
.end method

.method public static values()[Lg/egx;
    .locals 1

    sget-object v0, Lg/egx;->a:[Lg/egx;

    invoke-virtual {v0}, [Lg/egx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/egx;

    return-object v0
.end method
