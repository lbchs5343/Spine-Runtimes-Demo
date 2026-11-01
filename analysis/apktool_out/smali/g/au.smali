.class public final enum Lg/au;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ASSIGN:Lg/au;

.field public static final enum USE:Lg/au;

.field public static final synthetic a:[Lg/au;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/au;

    const-string v1, "ASSIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/au;->ASSIGN:Lg/au;

    new-instance v1, Lg/au;

    const-string v3, "USE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/au;->USE:Lg/au;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/au;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/au;->a:[Lg/au;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/au;
    .locals 1

    const-class v0, Lg/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/au;

    return-object p0
.end method

.method public static values()[Lg/au;
    .locals 1

    sget-object v0, Lg/au;->a:[Lg/au;

    invoke-virtual {v0}, [Lg/au;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/au;

    return-object v0
.end method
