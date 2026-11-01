.class public final enum Lg/cfn;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ASC:Lg/cfn;

.field public static final enum DESC:Lg/cfn;

.field public static final synthetic a:[Lg/cfn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/cfn;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cfn;->ASC:Lg/cfn;

    new-instance v1, Lg/cfn;

    const-string v3, "DESC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cfn;->DESC:Lg/cfn;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/cfn;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/cfn;->a:[Lg/cfn;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cfn;
    .locals 1

    const-class v0, Lg/cfn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cfn;

    return-object p0
.end method

.method public static values()[Lg/cfn;
    .locals 1

    sget-object v0, Lg/cfn;->a:[Lg/cfn;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cfn;

    return-object v0
.end method
