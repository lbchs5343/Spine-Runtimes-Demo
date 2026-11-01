.class public final enum Lg/aop;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Stderr:Lg/aop;

.field public static final enum Stdout:Lg/aop;

.field public static final synthetic a:[Lg/aop;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/aop;

    const-string v1, "Stderr"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/aop;->Stderr:Lg/aop;

    new-instance v1, Lg/aop;

    const-string v3, "Stdout"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/aop;->Stdout:Lg/aop;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/aop;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/aop;->a:[Lg/aop;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/aop;
    .locals 1

    const-class v0, Lg/aop;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/aop;

    return-object p0
.end method

.method public static values()[Lg/aop;
    .locals 1

    sget-object v0, Lg/aop;->a:[Lg/aop;

    invoke-virtual {v0}, [Lg/aop;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/aop;

    return-object v0
.end method
