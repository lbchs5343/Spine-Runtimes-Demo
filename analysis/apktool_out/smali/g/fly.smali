.class public final enum Lg/fly;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CLASS_INSTANCE:Lg/fly;

.field public static final enum VAR:Lg/fly;

.field public static final synthetic a:[Lg/fly;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/fly;

    const-string v1, "CLASS_INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/fly;->CLASS_INSTANCE:Lg/fly;

    new-instance v1, Lg/fly;

    const-string v3, "VAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/fly;->VAR:Lg/fly;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/fly;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/fly;->a:[Lg/fly;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fly;
    .locals 1

    const-class v0, Lg/fly;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fly;

    return-object p0
.end method

.method public static values()[Lg/fly;
    .locals 1

    sget-object v0, Lg/fly;->a:[Lg/fly;

    invoke-virtual {v0}, [Lg/fly;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fly;

    return-object v0
.end method
