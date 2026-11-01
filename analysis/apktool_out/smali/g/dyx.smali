.class public final enum Lg/dyx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum JAVA:Lg/dyx;

.field public static final enum JSON:Lg/dyx;

.field public static final synthetic a:[Lg/dyx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/dyx;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dyx;->JAVA:Lg/dyx;

    new-instance v1, Lg/dyx;

    const-string v3, "JSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dyx;->JSON:Lg/dyx;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/dyx;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/dyx;->a:[Lg/dyx;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dyx;
    .locals 1

    const-class v0, Lg/dyx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dyx;

    return-object p0
.end method

.method public static values()[Lg/dyx;
    .locals 1

    sget-object v0, Lg/dyx;->a:[Lg/dyx;

    invoke-virtual {v0}, [Lg/dyx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dyx;

    return-object v0
.end method
