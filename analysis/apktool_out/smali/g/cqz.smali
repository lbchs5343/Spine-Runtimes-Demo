.class public final enum Lg/cqz;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NARROW:Lg/cqz;

.field public static final enum WIDE:Lg/cqz;

.field public static final synthetic a:[Lg/cqz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/cqz;

    const-string v1, "NARROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cqz;->NARROW:Lg/cqz;

    new-instance v1, Lg/cqz;

    const-string v3, "WIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cqz;->WIDE:Lg/cqz;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/cqz;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/cqz;->a:[Lg/cqz;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cqz;
    .locals 1

    const-class v0, Lg/cqz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cqz;

    return-object p0
.end method

.method public static values()[Lg/cqz;
    .locals 1

    sget-object v0, Lg/cqz;->a:[Lg/cqz;

    invoke-virtual {v0}, [Lg/cqz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cqz;

    return-object v0
.end method
